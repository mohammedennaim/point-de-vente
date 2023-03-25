import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<HomeScreen> {
  // ignore: unused_field
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // child: AppBar(
      // title: Row(children: [
      //   GestureDetector(
      //     onTap: () => Navigator.pushNamed(context, 'login'),
      //     child: Icon(
      //       Icons.arrow_circle_left,
      //       size: 24,
      //     ),
      //   ),
      //     Spacer(),
      //     Text(
      //       "Login",
      //       style: TextStyle(
      //         fontSize: 24,
      //       ),
      //     ),
      //   ]),
      // ),
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'login'),
              child: Icon(
                Icons.arrow_circle_left,
                size: 24,
              ),
            ),
          ],
        ),
        flexibleSpace: Spacer(),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
            color: Colors.amber[800],
            iconSize: 30,
          ),
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
