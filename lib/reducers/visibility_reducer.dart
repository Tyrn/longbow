// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:redux/redux.dart';
import 'package:longbow/actions/actions.dart';
import 'package:longbow/models/models.dart';

final visibilityReducer = combineReducers<VisibilityFilter>([
  TypedReducer<VisibilityFilter, UpdateFilterAction>(_activeFilterReducer),
]);

VisibilityFilter _activeFilterReducer(
    VisibilityFilter activeFilter, UpdateFilterAction action) {
  return action.newFilter;
}
