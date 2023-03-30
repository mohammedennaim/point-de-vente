import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.amber,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(-35),
          child: SizedBox(
            height: 0,
          ),
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.cyan,
        child: SingleChildScrollView(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.amber),
                child: Image.asset("assets/images/user.png"),
                padding: EdgeInsets.all(30),
              ),
              Container()
            ],
          ),
        ),
      ),
      body: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, 'login');
        },
        child: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
          size: 16,
        ),
      ),
    );
  }
}
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
