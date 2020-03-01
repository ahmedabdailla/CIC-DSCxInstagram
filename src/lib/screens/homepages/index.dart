import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class IndexHome extends StatefulWidget {
  final Function() notifyParent;
  IndexHome({Key key, @required this.notifyParent}) : super(key: key);
  
  @override
  _IndexHomeState createState() => _IndexHomeState();
}

class _IndexHomeState extends State<IndexHome> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
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

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // 1
      body: new PageView(
        controller: _pageController,
        children: <Widget>[
          new Text("Camera"),
          new Text("IndexHome"),
          new Text("DM")
        ],
      ),
    );
  }
}
