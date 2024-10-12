import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/theme/theme_bloc.dart';
import 'package:news_app/config/config.dart';

import 'DI/injectors.dart';
import 'provider/bloc.providers.dart';
import 'routes/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      child: BlocBuilder<ThemeBloc, ThemeState>(
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
