// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ui_helpers/ui_helpers.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:longbow/actions/actions.dart';
import 'package:longbow/containers/add_todo.dart';
import 'package:longbow/middleware/store_todos_middleware.dart';
import 'package:longbow/models/models.dart';
import 'package:longbow/presentation/home_screen.dart';
import 'package:longbow/reducers/app_state_reducer.dart';

void main() {
  // ignore: deprecated_member_use
  MaterialPageRoute.debugEnableFadingRoutes = true;

  runApp(ReduxApp());
}

class ReduxApp extends StatelessWidget {
  final store = Store<AppState>(
    appReducer,
    initialState: AppState.loading(),
    middleware: createStoreTodosMiddleware(),
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        onGenerateTitle: (BuildContext context) =>
            AppLocalizations.of(context).appTitle,
        theme: AppTheme.theme,
        localizationsDelegates: [
          AppLocalizationsDelegate(),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', ""),
          const Locale("ru", ""),
        ],
        routes: {
          AppRoutes.home: (context) {
            return StoreBuilder<AppState>(
              onInit: (store) => store.dispatch(LoadTodosAction()),
              builder: (context, store) {
                return HomeScreen();
              },
            );
          },
          AppRoutes.addTodo: (context) {
            return AddTodo();
          },
        },
      ),
    );
  }
}
