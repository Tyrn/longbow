// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:ui_helpers/ui_helpers.dart';
import 'package:longbow/actions/actions.dart';
import 'package:longbow/models/models.dart';
import 'package:longbow/presentation/lang_button.dart';
import 'package:flutter/foundation.dart';
import 'package:string_scanner/string_scanner.dart';

class LangSelector extends StatelessWidget {
  final bool visible;

  LangSelector({Key key, @required this.visible}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      distinct: true,
      converter: _ViewModel.fromStore,
      builder: (context, vm) {
        return LangButton(
          visible: visible,
          activeLang: vm.activeLang,
          onSelected: vm.onLangSelected,
        );
      },
    );
  }
}

class _ViewModel {
  final Function(Lang) onLangSelected;
  final Lang activeLang;

  _ViewModel({
    @required this.onLangSelected,
    @required this.activeLang,
  });

  static _langToString(Lang lang) {
    var scanner = StringScanner(lang.toString());

    scanner.expect('Lang.');
    return scanner.rest;
  }

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      onLangSelected: (lang) {
        store.dispatch(UpdateLangAction(lang));
        debugPrint('+++++++++++++++++++++++++ Lang: ${_langToString(lang)} ++++++++++++++++++++');
        AppLocalizations.load(Locale(_langToString(lang), ''));
      },
      activeLang: store.state.activeLang,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is _ViewModel &&
          runtimeType == other.runtimeType &&
          activeLang == other.activeLang;

  @override
  int get hashCode => activeLang.hashCode;
}
