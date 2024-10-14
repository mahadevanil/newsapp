import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_app/utils/enums.dart';
import 'package:news_app/utils/logger.extension.dart';

import '../../config/config.dart';
import '../../constants/string.constants.dart';
import '../../data/model/news/news_response.model.dart';
import '../../data/service/news/news.service.dart';
import '../../main.dart';

part 'favorite_state.dart';
part 'favorite_cubit.freezed.dart';

class FavoriteCubit extends Cubit<FavoriteState> with RepoHandler {
  FavoriteCubit() : super(const FavoriteState());

  Future<void> init() async {
    emit(const FavoriteState(
      loadingStatus: LoadingStatus.loading,
    ));

    fetchNewsData();
  }

  Future<void> fetchNewsData() async {
    try {
      List<String> catList = await fCon.retrieveData(
        type: PreferenceType.list,
        key: StringConst.selectedCategories,
      );

      final newsResp = await newsService.getNews(
        apiKey: Config.apiKey,
        query: fCon.listToCommaSeparatedString(catList),
      );

      NewsResponseModel? newsData =
          NewsResponseModel.fromJson(newsResp?.body as Map<String, dynamic>);
      emit(
        state.copyWith(
          loadingStatus: LoadingStatus.success,
          newsData: newsData,
        ),
      );
    } on Exception catch (e) {
      e.logError();
      emit(
        state.copyWith(
          loadingStatus: LoadingStatus.failure,
        ),
      );
    }
  }
}

mixin RepoHandler {
  final NewsService newsService = autoInjector.get<NewsService>();
}
