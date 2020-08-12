import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_again/model/like_num_model.dart';
class ArticleLikeBar extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => ArticleLikeBarState();
}

class ArticleLikeBarState extends State<ArticleLikeBar> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final likeNumModel = Provider.of<LikeNumModel>(context);
    print('articleLikeBar build ====');
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(child: Icon(Icons.thumb_up, size: 20,),onTap: () => likeNumModel.like(),),
        Padding(padding: EdgeInsets.only(right: 5)),
        Text('${likeNumModel.value}')
      ],
    );
  }
}
