import 'package:flutter/material.dart';

class BasicSliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.large(
            backgroundColor: Colors.red,
            pinned: false,
            // expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Demo"),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index){
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 50
            ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 5.0,
              childAspectRatio: 2.0
            )
          )
        ],
      )
    );
    // TODO: implement build
    throw UnimplementedError();
  }


}