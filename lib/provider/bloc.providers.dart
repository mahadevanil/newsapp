import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/location/location_cubit.dart';
import 'package:news_app/cubit/splash/splash_cubit.dart';
import 'package:news_app/cubit/theme/theme_cubit.dart';
// ignore: depend_on_referenced_packages
import 'package:provider/single_child_widget.dart';

import '../cubit/step-one/step_one_cubit.dart';
import '../cubit/stepTwo/step_two_cubit.dart';

List<SingleChildWidget> blocProviderList = [
  //!---------(splash bloc)
  BlocProvider(
    create: (context) => SplashCubit()..init(),
  ),
  //!---------(Theme bloc)
  BlocProvider(
    create: (context) => ThemeCubit(),
  ),

  BlocProvider(
    create: (context) => StepOneCubit(),
  ),
  BlocProvider(
    create: (context) => StepTwoCubit()..init(),
  ),
  BlocProvider(
    create: (context) => LocationCubit(),
  ),
];
