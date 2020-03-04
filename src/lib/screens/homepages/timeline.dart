import 'dart:ui';

import 'package:CICxInstagram/screens/widgets/post.dart';
import 'package:CICxInstagram/screens/widgets/stories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Timeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(children: <Widget>[
        Stories(),
        Post(
          name: "Ahmed Abdallah",
          imageLink: "lib/assets/posts/AhmedPost1.jpg",
          profileImageLink: "lib/assets/posts/AhmedImage.jpg",
        ),
        Post(
          name: "CIC - Canadian International College",
          imageLink: "lib/assets/posts/CICPOST.jpg",
          profileImageLink: "lib/assets/posts/CIC.png",
        ),
        Post(
          name: "Ahmed Abdallah",
          imageLink: "lib/assets/posts/AhmedPost2.jpg",
          profileImageLink: "lib/assets/posts/AhmedImage.jpg",
        ),
        Post(
          name: "DSC CIC",
          imageLink: "lib/assets/posts/DSCCIC.jpg",
          profileImageLink: "lib/assets/posts/DSCCICPOST1.png",
        ),
        Post(
          name: "Ahmed Abdallah",
          imageLink: "lib/assets/posts/AhmedPost3.jpg",
          profileImageLink: "lib/assets/posts/AhmedImage.jpg",
        ),
      ]),
    );
  }
}
