
import 'package:flutter/material.dart';

import 'package:flutter_again/widgets/home_page/article_card.dart';
import 'package:flutter_again/widgets/common/banner_info.dart';

import 'package:flutter_again/util/struct/article_summary_struct.dart';
import 'package:flutter_again/util/struct/user_info_struct.dart';

class HomePage extends StatelessWidget{

  /// banner 地址信息
  final String bannerImage =
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597142833250&di=d22f3fdcc42cde0eb0524b620921d916&imgtype=0&src=http%3A%2F%2Fattachments.gfan.com%2Fforum%2F201604%2F23%2F002205xqdkj84gnw4oi85v.jpg';
  /// 帖子标题
  final UserInfoStruct userInfo = UserInfoStruct('Flutter',
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597142615066&di=b3f4a7ed2e085d48a35169076f37f6dd&imgtype=0&src=http%3A%2F%2Fwx4.sinaimg.cn%2Forj360%2F6cb22faely1g06wggfj7aj208c08cmx5.jpg');
  /// 帖子概要描述信息
  final ArticleSummaryStruct articleInfo = ArticleSummaryStruct(
      'hi  take your high deep',
      '我是一个小可爱,我是一个小可爱,我是一个小可爱,我是一个小可爱,我是一个小可爱,我是一个小可爱,我是一个小可爱,我是一个小可爱',
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1597142615066&di=b3f4a7ed2e085d48a35169076f37f6dd&imgtype=0&src=http%3A%2F%2Fwx4.sinaimg.cn%2Forj360%2F6cb22faely1g06wggfj7aj208c08cmx5.jpg',
      205,
      306);
  
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print('home page build---');
    return Container(
      child: Column(
        children: <Widget>[
          BannerInfo(bannerImage),
          ArticleCard(userInfo, articleInfo)
        ],
      ),
    );
  }
  
}