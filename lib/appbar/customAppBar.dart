import 'package:flutter/material.dart';



class CustomAppbar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 5,
          title: const Text(
            'Custom Appbar',
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10)
              ),
              child: Container(
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: Colors.green.shade100,
                ),
                child: const TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  // indicator: ShapeDecoration(
                  //   shape: RoundedRectangleBorder(
                      
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(10)
                  //     ),
                  //   ),
                  //   color: Colors.green
                  // ),
                  indicator: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10)
                    )
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: [
                    TabItem(title: 'Index', count: 6),
                    TabItem(title: 'Archived', count: 3),
                    TabItem(title: 'Deleted', count: 10),
                  ]
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Expanded(child: Container( color: Colors.green, child:  Center(child: Text('Inbox Page'),)),),
            Expanded(child: Container( color: Colors.green, child:  Center(child: Text('Archived'),)),),
            Expanded(child: Container( color: Colors.green, child:  Center(child: Text('Deleted'),)),),
          ]
        ),
      )
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}
class TabItem extends StatelessWidget{

  final String title;
  final int count;

  const TabItem({required this.title, required this.count});
  
  @override
  Widget build(BuildContext context) {

    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            overflow: TextOverflow.ellipsis,
          ),
          count > 0
              ? Container(
                margin: const EdgeInsetsDirectional.only(start: 5),
                // padding: const EdgeInsets.all(3),
                height: 15,
                width: 15,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  shape: BoxShape.circle
                ),
                child: Text(
                    count > 9 ? "9+" : count.toString(),
                    style: const TextStyle(
                      color: Colors.black54,
                      fontSize: 10,
                    ),
                  ),
              )
              : const SizedBox(width: 0, height: 0,)
              
        ],
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }


}