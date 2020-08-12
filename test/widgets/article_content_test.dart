
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_again/widgets/articledetail/article_cotent.dart';



void main(){

  testWidgets('test article content widget', (widgetTester) async {

    Widget testWidget = ArticleContent(content:'text content');

    await widgetTester.pumpWidget(MaterialApp(home: testWidget,));

    expect(find.text('text content'),findsOneWidget);
    expect(find.byWidget(testWidget),findsOneWidget);

  });




}