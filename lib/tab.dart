import 'package:flutter/material.dart';
import 'package:sample_tab/view1.dart';
import 'package:sample_tab/view2.dart';

class TabSampleView extends StatelessWidget {
  const TabSampleView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    val_.changeState();
                  },
                ),
              ),
              Tab(
                icon: Icon(Icons.rss_feed),
              ),
            ],
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.blue,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorPadding: EdgeInsets.all(5.0),
            indicatorColor: Colors.red,
          ),
          body: TabBarView(
            children: <Widget>[
              View1(),
              View2(),
            ],
          ),
        ));
  }
}
