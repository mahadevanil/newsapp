import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/constants/string.constants.dart';
import 'package:news_app/data/model/news/news_response.model.dart';
import 'package:news_app/data/service/news/news.service.dart';
import 'package:news_app/main.dart';
import 'package:news_app/utils/enums.dart';
import 'package:news_app/utils/logger.extension.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> with RepoHandler {
  HomeCubit() : super(const HomeState());

  Future<void> init() async {
    emit(const HomeState(
      loadingTopStoryStatus: LoadingStatus.loading,
    ));

    fetchNewsData();
  }

  Future<void> fetchNewsData() async {
    try {
      final newsResp = await newsService.getNews(
        apiKey: Config.apiKey,
        query: "all",
      );

      NewsResponseModel? newsData =
          NewsResponseModel.fromJson(newsResp?.body as Map<String, dynamic>);
      emit(
        state.copyWith(
          loadingTopStoryStatus: LoadingStatus.success,
          newsData: newsData,
        ),
      );
    } on Exception catch (e) {
      e.logError();
      emit(
        state.copyWith(
          loadingTopStoryStatus: LoadingStatus.failure,
        ),
      );
    }
  }
}

mixin RepoHandler {
  final NewsService newsService = autoInjector.get<NewsService>();
}
