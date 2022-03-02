import 'package:flutter/material.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Column(children: [
          Text(MediaQuery.of(context).size.width.toString(), style: TextStyle(fontSize: 50),),
          Text(MediaQuery.of(context).size.height.toString(), style: TextStyle(fontSize: 50),)
        ],),
      ),
    );
  }
}