import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[900],
      width: double.infinity,
      height: 250,
      padding: EdgeInsets.all(70),
      child: Image(image: AssetImage('assets/images/user.png')),
    );
  }
}
