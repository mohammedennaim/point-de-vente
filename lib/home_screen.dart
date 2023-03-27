import 'package:flutter/material.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({key});
//   @override
//   State<HomeScreen> createState() => HomePageState();
// }
//
// class HomePageState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
//       floatingActionButton: FloatingActionButton.small(
//         backgroundColor: Colors.amber[800], //couleur blue
//         onPressed: () {
//           Navigator.pushNamed(context, 'login');
//         },
//         child: const Icon(
//           Icons.arrow_back_rounded,
//           color: Colors.black,
//           size: 16,
//         ),
//       ),
//       appBar: AppBar(
//
//         elevation: 0,
//         backgroundColor: Colors.amber,
//         // leading: Container(
//         //   width: 300,
//         //   padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
//         //   child: Image.asset("assets/images/drawer.png"),
//         // ),
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(-35),
//           child: SizedBox(
//             height: 0,
//           ),
//         ),
//       ),
//       endDrawer: Drawer(
//         backgroundColor: Colors.cyan,
//         child: SingleChildScrollView(
//           child: ListView(
//             padding: EdgeInsets.zero,
//             children: [
//               DrawerHeader(decoration: BoxDecoration(color: Colors.amber), child: Image.asset("assets/images/user.png"),padding: EdgeInsets.all(30),),
//               Container(
//
//               )
//             ],
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//             margin: const EdgeInsets.all(20),
//             child: Column(
//               children: [],
//             )),
//       ),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextButton(
        onPressed: () {
//           Navigator.pushNamed(context, 'login');
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
