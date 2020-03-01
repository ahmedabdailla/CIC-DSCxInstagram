import 'package:flutter/material.dart';

class AppBars extends AppBar {
  AppBar main() {
    return new AppBar(
      //2
      leading: new ButtonBar(
        children: <Widget>[
          new Image.asset(
            'lib/assets/Camera.png',
            width: 50,
            color: Colors.black,
          )
        ],
      ),
      title: Image.asset('lib/assets/InstagramLogo.png'),
      actions: <Widget>[
        new ButtonBar(
          children: <Widget>[
            new Image.asset(
              'lib/assets/Send.png',
              width: 25,
              color: Colors.black,
            )
          ],
        )
      ],
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }

  AppBar search() {
    return new AppBar(
      //2
      title: new TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }

  AppBar addNew() {
    return new AppBar(
      //2
      leading: new ButtonBar(
        children: <Widget>[
          new Text(
            'Cancel',
            style: new TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12),
          )
        ],
      ),
      title: Text(
        'Photo',
        style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }

  AppBar activity() {
    return new AppBar(
      title: Text(
        'Activity',
        style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }

  AppBar profile() {
    return new AppBar(
      title: Text(
        'CIC - Canadian International College',
        style: new TextStyle(
            color: Colors.black, fontWeight: FontWeight.w500, fontSize: 14),
      ),
      actions: <Widget>[
        ButtonBar(
          buttonMinWidth: 50,
          children: <Widget>[new Image.asset("lib/assets/Settings.png")],
        )
      ],
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }
}
