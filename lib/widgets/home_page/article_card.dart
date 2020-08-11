import 'package:flutter/material.dart';

import 'article_bottom_bar.dart';
import 'article_like_bar.dart';
import 'article_summary_bar.dart';

import 'package:flutter_again/util/struct/article_summary_struct.dart';
import 'package:flutter_again/util/struct/user_info_struct.dart';

class ArticleCard extends StatelessWidget {
  final UserInfoStruct _userInfo;
  final ArticleSummaryStruct _articleInfo;

  const ArticleCard(this._userInfo, this._articleInfo);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        padding: EdgeInsets.only(left: 10),
        child: Column(
      children: <Widget>[
        ArticleSummaryBar(_articleInfo?.articleImage, _articleInfo?.title,
            _articleInfo?.summary),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ArticleBottomBar(_userInfo?.headimage, _userInfo.nikname,
                _articleInfo?.commentCout),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: ArticleLikeBar(_articleInfo.likeCount),
            )
          ],
        )
      ],
    ));
  }
}
