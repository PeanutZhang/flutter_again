import 'package:flutter/material.dart';

import 'article_bottom_bar.dart';
import 'article_like_bar.dart';
import 'article_summary_bar.dart';

import 'package:flutter_again/pages/article_detail.dart';

import 'package:flutter_again/util/struct/article_summary_struct.dart';
import 'package:flutter_again/util/struct/user_info_struct.dart';

class ArticleCard extends StatelessWidget {
  final UserInfoStruct _userInfo;
  final ArticleSummaryStruct _articleInfo;

  const ArticleCard(this._userInfo, this._articleInfo);

  void gotoDetailPage(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ArticleDetail()));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('article card build ----');
    return Container(
        padding: EdgeInsets.only(left: 10),
        child: FlatButton(
            onPressed: () => gotoDetailPage(context),
            child: Column(
              children: <Widget>[
                ArticleSummaryBar(_articleInfo?.articleImage,
                    _articleInfo?.title, _articleInfo?.summary),
                Padding(padding: EdgeInsets.only(bottom: 12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 9,
                      child: ArticleBottomBar(_userInfo?.headimage,
                          _userInfo.nikname, _articleInfo?.commentCout),
                    ),
                    Expanded(
                      flex: 3,
                      child: ArticleLikeBar(),
                    )
                  ],
                )
              ],
            )));
  }
}
