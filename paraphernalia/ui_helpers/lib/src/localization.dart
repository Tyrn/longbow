// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:ui_helpers/src/localizations/messages_all.dart';

class AppLocalizations {
  static textTitleStyle(BuildContext context) {
    Locale myLocale = Localizations.localeOf(context);

    return TextStyle(
      // fontSize: myLocale.languageCode.contains("en") ? 20.0 : 15.0,
      fontStyle: myLocale.languageCode.contains("en")
                ? FontStyle.italic : FontStyle.normal,
    );
  }

  static textMenuStyle(BuildContext context, [bool active=false]) {
    final defaultStyle = Theme.of(context).textTheme.body1;
    final activeStyle = Theme
        .of(context)
        .textTheme
        .body1
        .copyWith(color: Theme.of(context).accentColor);

    return active ? activeStyle : defaultStyle;
  }

  static Future<AppLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(
        context, AppLocalizations);
  }

  String get appTitle => Intl.message(
        'Longbow Power',
        name: 'appTitle',
        args: [],
        // locale: locale.toString(),
      );

  String get todos => Intl.message(
        'Todos',
        name: 'todos',
        args: [],
      );

  String get stats => Intl.message(
        'Stats',
        name: 'stats',
        args: [],
      );

  String get showAll => Intl.message(
        'Show All',
        name: 'showAll',
        args: [],
      );

  String get showActive => Intl.message(
        'Show Active',
        name: 'showActive',
        args: [],
      );

  String get showCompleted => Intl.message(
        'Show Completed',
        name: 'showCompleted',
        args: [],
      );

  String get newTodoHint => Intl.message(
        'What needs to be done?',
        name: 'newTodoHint',
        args: [],
      );

  String get markAllComplete => Intl.message(
        'Mark all complete',
        name: 'markAllComplete',
        args: [],
      );

  String get markAllIncomplete => Intl.message(
        'Mark all incomplete',
        name: 'markAllIncomplete',
        args: [],
      );

  String get clearCompleted => Intl.message(
        'Clear completed',
        name: 'clearCompleted',
        args: [],
      );

  String get addTodo => Intl.message(
        'Add Todo',
        name: 'addTodo',
        args: [],
      );

  String get editTodo => Intl.message(
        'Edit Todo',
        name: 'editTodo',
        args: [],
      );

  String get saveChanges => Intl.message(
        'Save changes',
        name: 'saveChanges',
        args: [],
      );

  String get filterTodos => Intl.message(
        'Filter Todos',
        name: 'filterTodos',
        args: [],
      );

  String get deleteTodo => Intl.message(
        'Delete Todo',
        name: 'deleteTodo',
        args: [],
      );

  String get todoDetails => Intl.message(
        'Todo Details',
        name: 'todoDetails',
        args: [],
      );

  String get emptyTodoError => Intl.message(
        'Please enter some text',
        name: 'emptyTodoError',
        args: [],
      );

  String get notesHint => Intl.message(
        'Additional Notes...',
        name: 'notesHint',
        args: [],
      );

  String get completedTodos => Intl.message(
        'Completed Todos',
        name: 'completedTodos',
        args: [],
      );

  String get activeTodos => Intl.message(
        'Active Todos',
        name: 'activeTodos',
        args: [],
      );

  String todoDeleted(String task) => Intl.message(
        'Deleted "$task"',
        name: 'todoDeleted',
        args: [task],
      );

  String get undo => Intl.message(
        'Undo',
        name: 'undo',
        args: [],
      );

  String get deleteTodoConfirmation => Intl.message(
        'Delete this todo?',
        name: 'deleteTodoConfirmation',
        args: [],
      );

  String get delete => Intl.message(
        'Delete',
        name: 'delete',
        args: [],
      );

  String get cancel => Intl.message(
        'Cancel',
        name: 'cancel',
        args: [],
      );
}

class AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  @override
  Future<AppLocalizations> load(Locale locale) =>
      AppLocalizations.load(locale);

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;

  @override
  bool isSupported(Locale locale) =>
      ['en', 'ru'].contains(locale.languageCode.toLowerCase());
}
