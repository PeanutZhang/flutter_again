import 'package:flutter/material.dart';
import 'package:flutter_again/widgets/articledetail/article_comments.dart';
import 'package:flutter_again/widgets/articledetail/article_cotent.dart';
import 'package:flutter_again/widgets/articledetail/artilce_detail_like.dart';

import 'package:flutter_again/util/struct/user_info_struct.dart';
import 'package:flutter_again/util/struct/article_summary_struct.dart';
import 'package:flutter_again/util/struct/comment_info_struct.dart';


class ArticleDetail extends StatelessWidget{

  /// 帖子概要描述信息
  final ArticleSummaryStruct articleInfo = ArticleSummaryStruct(
      '你好，教个朋友',
      '我是一个小可爱，很长的一个测试看看效果，会换行吗',
      'https://i.pinimg.com/originals/e0/64/4b/e0644bd2f13db50d0ef6a4df5a756fd9.png',
      20,
      30,
      );

  /// banner 地址信息
  final List<CommentInfoStruct> commentList = [
    CommentInfoStruct(
        UserInfoStruct('flutter',
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597142615066&di=b3f4a7ed2e085d48a35169076f37f6dd&imgtype=0&src=http%3A%2F%2Fwx4.sinaimg.cn%2Forj360%2F6cb22faely1g06wggfj7aj208c08cmx5.jpg'),
        'ts1'),
    CommentInfoStruct(
        UserInfoStruct('flutter2',
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597142615066&di=b3f4a7ed2e085d48a35169076f37f6dd&imgtype=0&src=http%3A%2F%2Fwx4.sinaimg.cn%2Forj360%2F6cb22faely1g06wggfj7aj208c08cmx5.jpg'),
        'ts2'),
    CommentInfoStruct(
        UserInfoStruct('flutter3',
            'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597142615066&di=b3f4a7ed2e085d48a35169076f37f6dd&imgtype=0&src=http%3A%2F%2Fwx4.sinaimg.cn%2Forj360%2F6cb22faely1g06wggfj7aj208c08cmx5.jpg'),
        'ts3'),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text(articleInfo.title),),
      body: Container(
        alignment: AlignmentDirectional.centerStart,
        child: Column(
          children: <Widget>[
            ArticleContent(content: articleInfo.summary),
            ArticleDetailLike(),
            ArticleComments(commentList: commentList,)
          ],
        ),
      ),
    );
  }

}