// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui_helpers/ui_helpers.dart';
import 'package:longbow/models/models.dart';

class TodoItem extends StatelessWidget {
  final DismissDirectionCallback onDismissed;
  final GestureTapCallback onTap;
  final ValueChanged<bool> onCheckboxChanged;
  final Todo todo;

  TodoItem({
    @required this.onDismissed,
    @required this.onTap,
    @required this.onCheckboxChanged,
    @required this.todo,
  });

  @override
  Widget build(BuildContext context) {
    var item = ListTile(
      onTap: onTap,
      leading: Checkbox(
        key: AppKeys.todoItemCheckbox(todo.id),
        value: todo.complete,
        onChanged: onCheckboxChanged,
      ),
      title: Hero(
        tag: '${todo.id}__heroTag',
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Text(
            todo.task,
            key: AppKeys.todoItemTask(todo.id),
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ),
      subtitle: Text(
        todo.note,
        key: AppKeys.todoItemNote(todo.id),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.subhead,
      ),
    );

    return Dismissible(
      key: AppKeys.todoItem(todo.id),
      onDismissed: onDismissed,
      child: item,
    );
  }
}
