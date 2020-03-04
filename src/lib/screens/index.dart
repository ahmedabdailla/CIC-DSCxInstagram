import 'package:CICxInstagram/screens/homepages/timeline.dart';
import 'package:CICxInstagram/widgets/AppBars.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  final int selecteditem;
  Index({Key key, this.selecteditem = 0}) : super(key: key);

  @override
  IndexState createState() => IndexState();
}

class IndexState extends State<Index> {
  int _selectedIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selecteditem;
    _pageController = PageController();
    WidgetsBinding.instance.addPostFrameCallback((_) => goToPage2(context));
  }

  void goToPage2(BuildContext context) {
    _pageController.jumpToPage(1);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void getNavigationbarAbove(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget getWidget(int index) {
    if (index == 0) {
      return new Scaffold(
        // 1
        body: new PageView(
          controller: _pageController,
          children: <Widget>[
            new Text("ASD"),
            new Scaffold(
                appBar: AppBar(
                  leading: new FlatButton(
                      onPressed: () {
                        _pageController.animateToPage(0,
                            duration: Duration(milliseconds: 400),
                            curve: Curves.easeIn);
                      },
                      child: new Image.asset(
                        'lib/assets/Camera.png',
                        width: 150,
                        height: 100,
                        color: Colors.black,
                      )),
                  title: Image.asset('lib/assets/InstagramLogo.png'),
                  actions: <Widget>[
                    new FlatButton(
                        onPressed: () {
                          _pageController.animateToPage(2,
                              duration: Duration(milliseconds: 400),
                              curve: Curves.easeIn);
                        },
                        child: new Image.asset(
                          'lib/assets/Send.png',
                          width: 25,
                          color: Colors.black,
                        ))
                  ],
                  backgroundColor: Colors.white,
                  centerTitle: true,
                ),
                body: Timeline(),
                bottomNavigationBar: getNavigationBar(index)),
            new Text("ASD"),
          ],
        ),
      );
    }
    if (index == 1) {
      return new Scaffold(
          appBar: _widgetBarOptions.elementAt(index),
          body: new Text("Timeline"),
          bottomNavigationBar: getNavigationBar(index));
    }
    if (index == 2) {
      return new Scaffold(
          appBar: _widgetBarOptions.elementAt(index),
          body: new Text("Timeline"),
          bottomNavigationBar: getNavigationBar(index));
    }
    if (index == 3) {
      return new Scaffold(
          appBar: _widgetBarOptions.elementAt(index),
          body: new Text("Timeline"),
          bottomNavigationBar: getNavigationBar(index));
    }
    if (index == 4) {
      return new Scaffold(
          appBar: _widgetBarOptions.elementAt(index),
          body: new Text("Timeline"),
          bottomNavigationBar: getNavigationBar(index));
    }
    return Text("Out of order");
  }

  static List<AppBar> _widgetBarOptions = <AppBar>[
    null,
    AppBars().search(),
    AppBars().addNew(),
    AppBars().activity(),
    AppBars().profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // 1
      body: getWidget(_selectedIndex),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBar getNavigationBar(int index) {
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
