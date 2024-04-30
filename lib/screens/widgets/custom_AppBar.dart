import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom_AppBar extends StatelessWidget {
  const custom_AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // toolbarHeight: 60,
      backgroundColor: Colors.deepPurple,
      title: Text("BMI Calculator",style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: Colors.white
      ),),
      actions: [
        IconButton(
            color: Colors.white,
            // style: IconButton.styleFrom(
            //   foregroundColor: Colors.white,
            //
            // ),
            // iconSize: 30,
            onPressed: (){}, icon: Icon(Icons.replay)),
        IconButton(
            color: Colors.white,
            // style: IconButton.styleFrom(
            //   foregroundColor: Colors.white,
            //
            // ),
            // iconSize: 30,
            onPressed: (){}, icon: Icon(Icons.more_vert))
      ],
    );
  }
}

