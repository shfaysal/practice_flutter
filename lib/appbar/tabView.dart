import 'package:flutter/material.dart';
import 'package:practice_project/appbar/customAppBar.dart';
import 'package:practice_project/appbar/customScrollView.dart';

// code Sample AppBar
List<String> titles = <String>[
  'Cloud',
  'Beach',
  'Sunny'
];

void main(){
  runApp(const AppBarApp());
}

class AppBarApp extends StatelessWidget{
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4), 
        useMaterial3: true 
      ),
      // home: const  AppBarExample(),
      // home: CustomAppbar(), 
      home: BasicSliverAppBar(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});
  @override
  Widget build(BuildContext context) {


    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(.05);
    final Color eventItemColor = colorScheme.primary.withOpacity(.15);

    const int tablsCount = 4;

    return DefaultTabController(
      initialIndex: 0,
      length: tablsCount,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("AppBar Sample"),
          notificationPredicate: (ScrollNotification notification){
            return notification.depth == 1;
          },
          scrolledUnderElevation: 4,
          shadowColor: Theme.of(context).shadowColor,
          bottom: TabBar(
            // indicatorColor: Colors.green,
            // indicatorWeight: 3.0,
            // indicator: BoxDecoration(
            //   color: Colors.amber,
            //   borderRadius: BorderRadius.circular(8)
            // ),
            // indicator: UnderlineTabIndicator(
            //   borderSide: BorderSide(
            //     color: Colors.red, width: 4.0
            //   )
            // ),
            // indicator: ShapeDecoration(
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(5)
            //   ),
            //   color: Colors.green
            // ),

            // dividerColor: Colors.amber,
            indicatorSize: TabBarIndicatorSize.tab,
            // indicatorWeight:,
            tabs: <Widget>[
              Tab(
                icon: const Icon(Icons.cloud_outlined),
                text: titles[0],
              ),
              Tab(
                icon: const Icon(Icons.cloud_outlined),
                text: titles[0],
              ),
              Tab(
                icon: const Icon(Icons.beach_access_sharp),
                text: titles[1],
              ),
              Tab(
                icon: const Icon(Icons.brightness_5_sharp),
                text: titles[2],
              ),
            ]
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView.builder(
              itemCount: 25,
              itemBuilder: (context, index){
                return ListTile(
                  tileColor: index.isOdd ? oddItemColor : eventItemColor,
                  title: Text('${titles[0]} $index'),
                );
              }
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (context, index){
                return ListTile(
                  tileColor: index.isOdd ? oddItemColor : eventItemColor,
                  title: Text('${titles[0]} $index'),
                );
              }
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (context, index){
                return ListTile(
                  tileColor: index.isOdd ? oddItemColor : eventItemColor,
                  title: Text('${titles[1]} $index'),
                );
              }
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (context, index){
                return ListTile(
                  tileColor: index.isOdd ? oddItemColor : eventItemColor,
                  title: Text('${titles[2]} $index'),
                );
              }
            )
          ]
        )
      )
    );
  }
}

