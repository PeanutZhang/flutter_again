
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_again/model/like_num_model.dart';
import 'package:flutter_again/styles/text_styles.dart';


class ArticleDetailLike extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final likeNumModel = Provider.of<LikeNumModel>(context);
    print('article Detail like build---------');
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Icon(Icons.thumb_up, color: Colors.grey, size: 40),
          onPressed: () => likeNumModel.like(),
        ),
        Text(
          '${likeNumModel.value}',
          style: TextStyles.commonStyle(),
        ),
      ],
    );
  }

}