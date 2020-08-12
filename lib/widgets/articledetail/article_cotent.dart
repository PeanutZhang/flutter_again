import 'package:flutter/material.dart';
import 'package:flutter_again/styles/text_styles.dart';


class ArticleContent extends StatelessWidget{

  final String content;


 const ArticleContent({Key key,this.content}):super(key :key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(8),
      child: Text(content,softWrap:true,style: TextStyles.commonStyle(),),
    );
  }

}