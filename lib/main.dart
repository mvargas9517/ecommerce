import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
      TabController _tabController;

 @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 25,
                right: 95,
                child: Icon(Feather.search, size: 30),
              ),
              Positioned(
                top: 10,
                child: Container(
                  padding: EdgeInsets.only(left: 30.0, right: 35.0),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('images/macen.jpeg'),
                      ),
                      Icon(Feather.grid, size: 30),
                    ],
                  ),
                ),
              ),              
              Column(
                children: <Widget>[
                  SizedBox(height: 130.0),
            TabBar(
              controller: _tabController,
              labelColor: Colors.deepPurple[900],
              unselectedLabelColor: Colors.deepPurple[900].withOpacity(0.3),
              labelPadding: EdgeInsets.symmetric(horizontal: 12.0),
              indicatorColor: Colors.transparent,
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'FACEWASH',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'LIPSTICK',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'SHAMPOO',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
                ],
              ),
            ],
          ),
        ),
      ),
      
    );
  }
}