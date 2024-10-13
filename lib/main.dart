import 'package:auto_injector/auto_injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/config/config.dart';
import 'package:news_app/cubit/theme/theme_cubit.dart';

import 'DI/injectors.dart';
import 'data/service/base.service.dart';
import 'provider/bloc.providers.dart';
import 'routes/routes.dart';

final autoInjector = AutoInjector();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ChopperBaseService.init(); //initialize chopper service
  autoInjectInitializer();
  runApp(LayoutBuilder(builder: (context, constrains) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return const MyApp();
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviderList,
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: router,
            theme: fCon.setTheme(
              themeType: state.themeType,
            ),
          );
        },
      ),
    );
  }
}
