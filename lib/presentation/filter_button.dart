// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:ui_helpers/ui_helpers.dart';
import 'package:longbow/models/models.dart';

class FilterButton extends StatelessWidget {
  final PopupMenuItemSelected<VisibilityFilter> onSelected;
  final VisibilityFilter activeFilter;
  final bool visible;

  FilterButton({this.onSelected, this.activeFilter, this.visible, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: visible ? 1.0 : 0.0,
      duration: Duration(milliseconds: 150),
      child: PopupMenuButton<VisibilityFilter>(
        key: AppKeys.filterButton,
        tooltip: AppLocalizations.of(context).filterTodos,
        onSelected: onSelected,
        itemBuilder: (BuildContext context) =>
            <PopupMenuItem<VisibilityFilter>>[
              PopupMenuItem<VisibilityFilter>(
                key: AppKeys.allFilter,
                value: VisibilityFilter.all,
                child: Text(
                  AppLocalizations.of(context).showAll,
                  style: AppLocalizations.textMenuStyle(
                    context,
                    activeFilter == VisibilityFilter.all,
                  ),
                ),
              ),
              PopupMenuItem<VisibilityFilter>(
                key: AppKeys.activeFilter,
                value: VisibilityFilter.active,
                child: Text(
                  AppLocalizations.of(context).showActive,
                  style: AppLocalizations.textMenuStyle(
                    context,
                    activeFilter == VisibilityFilter.active,
                  ),
                ),
              ),
              PopupMenuItem<VisibilityFilter>(
                key: AppKeys.completedFilter,
                value: VisibilityFilter.completed,
                child: Text(
                  AppLocalizations.of(context).showCompleted,
                  style: AppLocalizations.textMenuStyle(
                    context,
                    activeFilter == VisibilityFilter.completed,
                  ),
                ),
              ),
            ],
        icon: Icon(Icons.filter_list),
      ),
    );
  }
}
