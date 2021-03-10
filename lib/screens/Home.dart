import 'package:flutter/material.dart';
import 'package:programing_fun/widgets/Customlistbody.dart';
import 'package:programing_fun/widgets/Customvideoplayer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, isScolled) {
            return [
              SliverAppBar(
                backgroundColor: Colors.blue,
                // collapsedHeight: 230,
                expandedHeight: 230,
                flexibleSpace: FlexibleSpaceBar(
                  background: CustomVideoPlayer(),
                ),
                floating: true,
                pinned: true,
                leading: Icon(Icons.menu),
                title: Text('Progaming Fun'),
                actions: [
                  Icon(Icons.favorite),
                ],
              ),
              //SliverPersistentHeader(delegate: null)
            ];
          },
          body: CustomListBody(),
        ),
      ),
    );
  }
}

// Widget pinterestGrid() => SliverToBoxAdapter(
//       child: StaggeredGridView.countBuilder(
//         crossAxisCount: 2,
//         primary: false,
//         shrinkWrap: true,
//         itemCount: imageList.length,
//         itemBuilder: (context, index) => ImageCardWithdata(
//           imageData: imageList[index],
//         ),
//         staggeredTileBuilder: (index) => StaggeredTile.fit(1),
//         mainAxisSpacing: 3.0,
//         crossAxisSpacing: 3.0,
//       ),
//     );
