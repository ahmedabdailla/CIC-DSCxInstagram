import 'package:flutter/material.dart';

class AppBars extends AppBar {
  AppBar main() {
    return new AppBar(
      leading: new FlatButton(
          onPressed: () {
            /*...*/
          },
          child: new Image.asset(
            'lib/assets/Camera.png',
            width: 150,
            color: Colors.black,
          )),
      title: Image.asset('lib/assets/InstagramLogo.png'),
      actions: <Widget>[
        new FlatButton(
            onPressed: () {
              /*...*/
            },
            child: new Image.asset(
              'lib/assets/Send.png',
              width: 25,
              color: Colors.black,
            ))
      ],
      backgroundColor: Colors.white,
      centerTitle: true,
    );
  }

  AppBar search() {
    return new AppBar(
      //2
      title: new TextField(
        autofocus: true,
        decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromARGB(10, 0, 0, 0),
            hintText: "Search",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            hintStyle: TextStyle(color: Colors.grey),
            contentPadding: EdgeInsets.all(10)),
        style: TextStyle(color: Colors.black, fontSize: 16.0),
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
