import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/theme/theme_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/single_child_widget.dart';

import '../bloc/splash/splash_bloc.dart';

List<SingleChildWidget> blocProviderList = [
  //!---------(splash bloc)
  BlocProvider(
    create: (context) => SplashBloc()
      ..add(
        const SplashInit(),
      ),
  ),
  //!---------(Theme bloc)
  BlocProvider(create: (context) => ThemeBloc()),
];
