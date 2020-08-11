import 'package:flutter/material.dart';

class ArticleSummaryBar extends StatelessWidget {
  String imgUrl;
  String title;
  String summary;

  ArticleSummaryBar(this.imgUrl, this.title, this.summary);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: Text(
                  '$title',
                  textAlign: TextAlign.start,
                  softWrap: false,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.lightBlueAccent,
                  ),
                ),
              ),
              Text(
                '$summary',
                textAlign: TextAlign.start,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          )),
          Image(
            image: NetworkImage(imgUrl),
            width: 120,
            height: 120,
          )
        ],
      ),
    );
  }
}
