import 'package:flutter/material.dart';

class ArticleBottomBar extends StatelessWidget {
  String headImg;
  String name;
  int commentCount;

  ArticleBottomBar( this.headImg, this.name, this.commentCount);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('articleBottom bar build-----');
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Row(
          children: <Widget>[
            Image(
              image: NetworkImage(headImg),
              width: 20,
              height: 20,
            ),
            Padding(padding: EdgeInsets.only(left: 5.0)),
            Text(
              '$name',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Icon(Icons.message),
            Padding(padding: EdgeInsets.only(left: 5.0),),
            Text('$commentCount',textAlign: TextAlign.center,style: TextStyle(fontSize: 14,color: Colors.grey,fontWeight: FontWeight.bold),)
          ],
        ),
      ],
    );
  }
}
