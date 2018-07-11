// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:ui_helpers/ui_helpers.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:longbow/actions/actions.dart';
import 'package:longbow/models/models.dart';
import 'package:longbow/presentation/add_edit_screen.dart';

class EditTodo extends StatelessWidget {
  final Todo todo;

  EditTodo({this.todo, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, OnSaveCallback>(
      converter: (Store<AppState> store) {
        return (task, note) {
          store.dispatch(UpdateTodoAction(
            todo.id,
            todo.copyWith(
              task: task,
              note: note,
            ),
          ));
        };
      },
      builder: (BuildContext context, OnSaveCallback onSave) {
        return AddEditScreen(
          key: AppKeys.editTodoScreen,
          onSave: onSave,
          isEditing: true,
          todo: todo,
        );
      },
    );
  }
}
