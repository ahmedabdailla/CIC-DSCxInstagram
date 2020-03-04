import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  final String name;
  final String imageLink;
  final String profileImageLink;

  
  Post({Key key, this.name, this.imageLink, this.profileImageLink}) : super(key: key);
  @override

  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
      Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.profileImageLink),
                  ),
                  Text("    $widget.name"),
                ],
              ),
              FlatButton(
                child: new Image.asset("lib/assets/Settings.png"),
                onPressed: () {},
              )
            ],
          )),
      new Image.asset(widget.imageLink),
      new Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 50,
                    child: FlatButton(
                      child: new Image.asset('lib/assets/Heart-active.png',
                          width: 30),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: 50,
                    child: FlatButton(
                      child:
                          new Image.asset('lib/assets/Comment.png', width: 30),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: 50,
                    child: FlatButton(
                      child: new Image.asset('lib/assets/Send.png', width: 25),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              FlatButton(
                child: new Image.asset('lib/assets/Save.png', width: 25),
                onPressed: () {},
              )
            ],
          )),
      Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("369 likes"),
              new RichText(
                text: new TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    new TextSpan(
                        text: 'CIC',
                        style: new TextStyle(fontWeight: FontWeight.bold)),
                    new TextSpan(
                      text: '  إنت سقط',
                    ),
                  ],
                ),
              ),
              Text("View all 2 comments"),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  
                  CircleAvatar(
                    backgroundImage: AssetImage("lib/assets/posts/CIC.png"),
                  ),
                  new Container(
                    width: 300,
                    child: new TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(0, 0, 0, 0),
                          hintText: "add a comment",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          hintStyle: TextStyle(color: Colors.grey),
                          contentPadding: EdgeInsets.all(10)),
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    ),
                  )
                ],
              )
            ],
          ))
    ]);
  }

}
