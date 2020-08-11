import 'package:flutter/material.dart';

class BannerInfo extends StatelessWidget {
  final String bannerImage;

  BannerInfo(this.bannerImage);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Image.network(
          bannerImage,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.42,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
