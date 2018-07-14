// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:ui_helpers/ui_helpers.dart';
import 'package:longbow/models/models.dart';

class LangButton extends StatelessWidget {
  final PopupMenuItemSelected<Locale> onSelected;
  final Locale activeLang;
  final bool visible;

  LangButton({this.onSelected, this.activeLang, this.visible, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final winkingButton = AnimatedOpacity(
      opacity: visible ? 1.0 : 0.0,
      duration: Duration(milliseconds: 150),
      child: PopupMenuButton<Locale>(
        key: AppKeys.filterButton,
        tooltip: AppLocalizations.of(context).filterTodos,
        onSelected: onSelected,
        itemBuilder: (BuildContext context) =>
            <PopupMenuItem<Locale>>[
              PopupMenuItem<Locale>(
                key: AppKeys.allFilter,
                value: Locale('en', ''),
                child: Text(
                  'EN',
                  style: AppLocalizations.textMenuStyle(
                    context,
                    activeLang == Locale('en', ''),
                  ),
                ),
              ),
              PopupMenuItem<Locale>(
                key: AppKeys.activeLang,
                value: Locale('ru', ''),
                child: Text(
                  'RU',
                  style: AppLocalizations.textMenuStyle(
                    context,
                    activeLang == Locale('ru', ''),
                  ),
                ),
              ),
            ],
        icon: Icon(Icons.language),
      ),
    );

    return IgnorePointer(
      ignoring: !visible,
      child: winkingButton,
    );
  }
}
