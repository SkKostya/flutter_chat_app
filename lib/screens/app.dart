import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'package:chat_app/domain/data_provider/theme_provider.dart';
import 'package:chat_app/domain/navigations/main_navigation.dart';

import 'app_model.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _AppPrivider();
  }
}

class _AppPrivider extends StatefulWidget {
  const _AppPrivider({Key? key}) : super(key: key);

  @override
  _AppPrividerState createState() => _AppPrividerState();
}

class _AppPrividerState extends State<_AppPrivider> {
  late final AppModel model;

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();

    model = AppModel();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => model,
      child: const _AppWidget(),
    );
  }
}

class _AppWidget extends StatelessWidget {
  const _AppWidget({Key? key}) : super(key: key);

  static final mainNavigation = MainNavigation();

  @override
  Widget build(BuildContext context) {
    final _model = context.watch<AppModel>();
    final _locale = _model.locale;
    final _themeMode = _model.theme;

    return MaterialApp(
      locale: _locale,
      localizationsDelegates: [
        FlutterI18nDelegate(
          translationLoader: NamespaceFileTranslationLoader(
            namespaces: ['home'],
            fallbackDir: 'ru',
          ),
          missingTranslationHandler: (key, locale) {
            print(
                '--- Missing Key: $key, languageCode: ${locale?.languageCode}');
          },
        ),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      builder: FlutterI18n.rootAppBuilder(),
      supportedLocales: const [
        Locale('ru', 'RU'),
        Locale('en', 'US'),
      ],
      title: 'Chat Application',
      themeMode: _themeMode,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: mainNavigation.initialRoute,
      routes: mainNavigation.routes,
    );
  }
}
