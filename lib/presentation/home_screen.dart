// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:ui_helpers/ui_helpers.dart';
import 'package:longbow/containers/active_tab.dart';
import 'package:longbow/containers/extra_actions_container.dart';
import 'package:longbow/containers/filter_selector.dart';
import 'package:longbow/containers/lang_selector.dart';
import 'package:longbow/containers/filtered_todos.dart';
import 'package:longbow/containers/stats.dart';
import 'package:longbow/containers/tab_selector.dart';
import 'package:longbow/models/models.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen() : super(key: AppKeys.homeScreen);

  @override
  Widget build(BuildContext context) {
    return ActiveTab(
      builder: (BuildContext context, AppTab activeTab) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context).appTitle,
              style: AppLocalizations.textTitleStyle(context),
            ),
            actions: [
              FilterSelector(visible: activeTab == AppTab.todos),
              LangSelector(visible: activeTab == AppTab.todos),
              ExtraActionsContainer(),
            ],
          ),
          body: activeTab == AppTab.todos ? FilteredTodos() : Stats(),
          floatingActionButton: FloatingActionButton(
            key: AppKeys.addTodoFab,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.addTodo);
            },
            child: Icon(Icons.add),
            tooltip: AppLocalizations.of(context).addTodo,
          ),
          bottomNavigationBar: TabSelector(),
        );
      },
    );
  }
}
