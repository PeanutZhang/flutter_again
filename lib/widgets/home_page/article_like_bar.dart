import 'package:flutter/material.dart';

class ArticleLikeBar extends StatefulWidget {
  final int likeNum;

  ArticleLikeBar(this.likeNum);

  @override
  State<StatefulWidget> createState() => ArticleLikeBarState();
}

class ArticleLikeBarState extends State<ArticleLikeBar> {
  int likNum;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    likNum ??= widget.likeNum;
  }

  void _like() {
    print('click the btn');
    setState(() {
      ++likNum;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(child: Icon(Icons.thumb_up, size: 20,),onTap: _like,),
        Padding(padding: EdgeInsets.only(right: 5)),
        Text('$likNum')
      ],
    );
  }
}
