import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(backgroundImage: NetworkImage("https://img0.imguh.com/2019/02/03/IMG_20190117_084149d0e47ab861cb14b0.jpg",),),
            Text("Bikram Adhikari")   
          ],
        ),
      ),
    );
  }
}