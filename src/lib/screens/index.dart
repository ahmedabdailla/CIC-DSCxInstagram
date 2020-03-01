import 'package:CICxInstagram/screens/homepages/index.dart';
import 'package:CICxInstagram/screens/homepages/timeline.dart';
import 'package:CICxInstagram/widgets/AppBars.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  Index({Key key}) : super(key: key);

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedIndex = 0;

  refresh() {
    setState(() {});
  }

  Widget getIndexHome(int index) {
    switch (index) {
      case 1:
        return new IndexHome(notifyParent: refresh);

        break;
      default:
    }
  }

  static List<Widget> _widgetOptions = <Widget>[
    getIndexHome(),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 2: School',
    ),
  ];

  static List<AppBar> _widgetBarOptions = <AppBar>[
    null,
    null,
    AppBars().addNew(),
    AppBars().activity(),
    AppBars().profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        // 1
        appBar: _widgetBarOptions.elementAt(_selectedIndex),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: getNavigationBar(_selectedIndex));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBar getNavigationBar(int index) {
    if (index == 0 || index == 1) {
      return null;
    } else {
      return BottomNavigationBar(
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
      );
    }
  }
}
