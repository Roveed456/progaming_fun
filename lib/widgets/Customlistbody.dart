import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:programing_fun/modles/ImagesModle.dart';
import 'package:scrollable_list_tabview/scrollable_list_tabview.dart';

import 'ImageCard.dart';

class CustomListBody extends StatefulWidget {
  CustomListBody({Key key}) : super(key: key);

  @override
  _CustomListBodyState createState() => _CustomListBodyState();
}

class _CustomListBodyState extends State<CustomListBody> {
  @override
  Widget build(BuildContext context) {
    return ScrollableListTabView(
      tabHeight: 48,
      bodyAnimationDuration: const Duration(milliseconds: 150),
      tabAnimationCurve: Curves.easeOut,
      tabAnimationDuration: const Duration(milliseconds: 200),
      tabs: [
        ScrollableListTab(
          tab: ListTab(
              label: Text('Label 1'),
              // icon: Icon(Icons.group),
              showIconOnList: false),
          body: StaggeredGridView.countBuilder(
            crossAxisCount: 2,
            physics: NeverScrollableScrollPhysics(),
            primary: false,
            shrinkWrap: true,
            itemCount: imageList.length,
            itemBuilder: (context, index) => ImageCardWithdata(
              imageData: imageList[index],
            ),
            staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            mainAxisSpacing: 3.0,
            crossAxisSpacing: 3.0,
          ),
        ),
        ScrollableListTab(
            tab: ListTab(label: Text('Label 2'), icon: Icon(Icons.subject)),
            body: GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => Card(
                child: Center(child: Text('Card element $index')),
              ),
            )),
        ScrollableListTab(
            tab: ListTab(
                label: Text('Label 3'),
                icon: Icon(Icons.subject),
                showIconOnList: true),
            body: GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => Card(
                child: Center(child: Text('Card element $index')),
              ),
            )),
        ScrollableListTab(
            tab: ListTab(label: Text('Label 4'), icon: Icon(Icons.add)),
            body: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (_, index) => ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                  alignment: Alignment.center,
                  child: Text(index.toString()),
                ),
                title: Text('List element $index'),
              ),
            )),
        // ScrollableListTab(
        //     tab: ListTab(label: Text('Label 5'), icon: Icon(Icons.group)),
        //     body: ListView.builder(
        //       shrinkWrap: true,
        //       physics: NeverScrollableScrollPhysics(),
        //       itemCount: 10,
        //       itemBuilder: (_, index) => ListTile(
        //         leading: Container(
        //           height: 40,
        //           width: 40,
        //           decoration:
        //               BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        //           alignment: Alignment.center,
        //           child: Text(index.toString()),
        //         ),
        //         title: Text('List element $index'),
        //       ),
        //     )),
        // ScrollableListTab(
        //     tab: ListTab(label: Text('Label 6'), icon: Icon(Icons.subject)),
        //     body: GridView.builder(
        //       shrinkWrap: true,
        //       gridDelegate:
        //           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //       physics: NeverScrollableScrollPhysics(),
        //       itemCount: 10,
        //       itemBuilder: (_, index) => Card(
        //         child: Center(child: Text('Card element $index')),
        //       ),
        //     )),
        // ScrollableListTab(
        //     tab: ListTab(
        //         label: Text('Label 7'),
        //         icon: Icon(Icons.subject),
        //         showIconOnList: true),
        //     body: GridView.builder(
        //       shrinkWrap: true,
        //       gridDelegate:
        //           SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //       physics: NeverScrollableScrollPhysics(),
        //       itemCount: 10,
        //       itemBuilder: (_, index) => Card(
        //         child: Center(child: Text('Card element $index')),
        //       ),
        //     )),
        // ScrollableListTab(
        //     tab: ListTab(label: Text('Label 8'), icon: Icon(Icons.add)),
        //     body: ListView.builder(
        //       shrinkWrap: true,
        //       physics: NeverScrollableScrollPhysics(),
        //       itemCount: 10,
        //       itemBuilder: (_, index) => ListTile(
        //         leading: Container(
        //           height: 40,
        //           width: 40,
        //           decoration:
        //               BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        //           alignment: Alignment.center,
        //           child: Text(index.toString()),
        //         ),
        //         title: Text('List element $index'),
        //       ),
        //     ))
      ],
    );
  }
}
