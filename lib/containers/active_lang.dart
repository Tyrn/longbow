// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:longbow/models/models.dart';
import 'package:longbow/presentation/stats_counter.dart';
import 'package:longbow/selectors/selectors.dart';

class ActiveLang extends StatelessWidget {
  ActiveLang({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      // builder: (context, vm) {
      //   return StatsCounter(
      //     numActive: vm.numActive,
      //     numCompleted: vm.numCompleted,
      //   );
      // },
    );
  }
}

class _ViewModel {
  final Lang activeLang;

  _ViewModel({@required this.activeLang});

  static _ViewModel fromStore(Store<AppState> store) {
    return _ViewModel(
      activeLang: langSelector(store.state.activeLang),
    );
  }
}
