// Copyright 2018 The Flutter Architecture Sample Authors. All rights reserved.
// Use of this source code is governed by the MIT license that can be found
// in the LICENSE file.

import 'package:redux/redux.dart';
import 'package:longbow/actions/actions.dart';
import 'package:longbow/models/models.dart';
import 'package:flutter/material.dart';

final langReducer = combineReducers<Locale>([
  TypedReducer<Locale, UpdateLangAction>(_activeLangReducer),
]);

Locale _activeLangReducer(
    Locale activeLang, UpdateLangAction action) {
  return action.newLang;
}
