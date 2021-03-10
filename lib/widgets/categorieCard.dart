import 'package:flutter/material.dart';
import 'package:programing_fun/modles/categorieModle.dart';

class categorieCard extends StatelessWidget {
  final CategorieData categorieData;

  const categorieCard({Key key, @required this.categorieData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(),
        ),
        width: 80,
        //height: ,
        child: Container(
            //padding: const EdgeInsets.all(8),
            child: Center(child: Text(categorieData.categname))),
      ),
    );
  }
}
