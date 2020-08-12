import 'package:flutter/material.dart';
import 'package:flutter_again/util/struct/comment_info_struct.dart';
import 'package:flutter_again/styles/text_styles.dart';

class ArticleComments extends StatelessWidget {
  final List<CommentInfoStruct> commentList;

  const ArticleComments({Key key, this.commentList}):super(key:key);

  Widget getOneItemSection(CommentInfoStruct commentItem) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.network(
              commentItem.userInfo.headimage,
              width: 50,
              height: 50,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                commentItem.userInfo.nikname,
                style: TextStyles.commonStyle(),
              ),
              Text(
                commentItem.commnet,
                style: TextStyles.commonStyle(0.8),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
        itemBuilder: (context, postion) =>
            getOneItemSection(this.commentList[postion]),
        separatorBuilder: (context,index) => Divider(
          height: 1,
          color: Colors.indigoAccent,
        ),
        itemCount: this.commentList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
    );
  }
}
