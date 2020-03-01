import 'package:CICxInstagram/screens/index.dart';
import 'package:CICxInstagram/widgets/AppBars.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Timeline extends StatefulWidget {
 final Function() notifyParent;
  Timeline({Key key, @required this.notifyParent}) : super(key: key);

  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  _IndexState parent;

  Sub(this.parent);
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    this.parent.setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBars().main(),
      body: new Text("Timeline"),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          new BottomNavigationBarItem(
            icon: new Image.asset('lib/assets/Home.png', width: 25),
            title: new Text("Home"),
          ),
          new BottomNavigationBarItem(
            icon: new Image.asset('lib/assets/Search.png', width: 25),
            title: new Text("Search"),
          ),
          new BottomNavigationBarItem(
            icon: new Image.asset(
              'lib/assets/AddNew.png',
              width: 25,
            ),
            title: new Text("Add New"),
          ),
          new BottomNavigationBarItem(
            icon: new Image.asset(
              'lib/assets/Heart-active.png',
              width: 25,
              color: Colors.black,
            ),
            title: new Text("Likes"),
          ),
          new BottomNavigationBarItem(
            icon: new Image.asset(
              'lib/assets/AddNew.png',
              width: 25,
            ),
            title: new Text("Profile"),
          )
        ],
      ),
    );
  }
}
