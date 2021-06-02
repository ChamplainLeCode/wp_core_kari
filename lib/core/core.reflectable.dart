// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.
// @dart = 2.12

import 'dart:core';
import '../app/controllers/dashboard/dash_board_controller.dart' as prefix2;
import '../app/controllers/home/home_controller.dart' as prefix3;
import '../app/controllers/settings/settings_controller.dart' as prefix1;
import 'package:karee_inject/src/annotations/controller.dart' as prefix0;

// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const
// ignore_for_file: implementation_imports

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.ControllerReflectable(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'SettingsController',
            r'.SettingsController',
            7,
            0,
            const prefix0.ControllerReflectable(),
            const <int>[-1],
            null,
            null,
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix1.SettingsController() : null},
            -1,
            -1,
            const <int>[-1],
            null,
            {r'==': 1, r'toString': 0, r'noSuchMethod': 1, r'hashCode': 0, r'runtimeType': 0, r'index': 0}),
        r.NonGenericClassMirrorImpl(
            r'DashBoardController',
            r'.DashBoardController',
            7,
            1,
            const prefix0.ControllerReflectable(),
            const <int>[-1],
            null,
            null,
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix2.DashBoardController() : null},
            -1,
            -1,
            const <int>[-1],
            null,
            {
              r'==': 1,
              r'toString': 0,
              r'noSuchMethod': 1,
              r'hashCode': 0,
              r'runtimeType': 0,
              r'home': 0,
              r'menuScreen': 0,
              r'constants': 0,
              r'controllers': 0,
              r'scanner': 0,
              r'userService': 0,
              r'userService=': 1
            }),
        r.NonGenericClassMirrorImpl(
            r'HomeController',
            r'.HomeController',
            7,
            2,
            const prefix0.ControllerReflectable(),
            const <int>[-1],
            null,
            null,
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix3.HomeController() : null},
            -1,
            -1,
            const <int>[-1],
            null,
            {r'==': 1, r'toString': 0, r'noSuchMethod': 1, r'hashCode': 0, r'runtimeType': 0, r'index': 0})
      ],
      null,
      null,
      <Type>[prefix1.SettingsController, prefix2.DashBoardController, prefix3.HomeController],
      3,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'index': (dynamic instance) => instance.index,
        r'home': (dynamic instance) => instance.home,
        r'menuScreen': (dynamic instance) => instance.menuScreen,
        r'constants': (dynamic instance) => instance.constants,
        r'controllers': (dynamic instance) => instance.controllers,
        r'scanner': (dynamic instance) => instance.scanner,
        r'userService': (dynamic instance) => instance.userService
      },
      {r'userService=': (dynamic instance, value) => instance.userService = value},
      null,
      [
        const [0, 0, null],
        const [1, 0, null]
      ])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
