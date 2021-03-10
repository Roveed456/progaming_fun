import 'package:flutter/material.dart';
import 'package:programing_fun/modles/ImagesModle.dart';
//  get image from modle data

class ImageCardWithdata extends StatelessWidget {
  final ImageData imageData;

  const ImageCardWithdata({
    Key key,
    @required this.imageData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        //height: 150,
        // width: double.infinity,
        child: Card(
          child: Image.network(
            imageData.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      );
}
