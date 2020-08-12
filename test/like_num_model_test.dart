// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.


import 'package:flutter_again/model/like_num_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_again/main.dart';

void main() {
  final likeNumModel  = LikeNumModel();
  test('test like num model', () {
    expect(likeNumModel.value,0);
  });

  test('test likenum like method',(){
    likeNumModel.like();
    expect(likeNumModel.value,1);
  });
}
