import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:point_de_vente/container/container.dart';
import 'package:point_de_vente/container/darwer_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key});
  @override
  State<HomeScreen> createState() => DashboardState();
}

class DashboardState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  var currentPage = DrawerSections.User;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget buildCard() => Container(
        height: 180,
        width: 360,
        color: Colors.red,
        child: Image.asset('assets/images/image.jpg'),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          // leading: Builder(
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
            },
            icon: const Icon(Icons.logout),
            color: Color.fromARGB(255, 255, 187, 0),
            iconSize: 30,
          ),
          // ),
        ],
        // titleSpacing: 340,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
            color: Color.fromARGB(255, 255, 187, 0),
            iconSize: 30,
          ),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(right: 0),
          child: Container(
            child: Column(
              children: [
                MyDrawerHeader(),
                MyDrawerList(),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(
              height: 0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContainerHome(
                    assetImage: const AssetImage('assets/images/sale.png'),
                    onTap: () {
                      Navigator.pushNamed(context, 'sales');
                    },
                    color: const Color(0xff042698),
                    text: "Sales"),
                ContainerHome(
                    assetImage: const AssetImage('assets/images/products.png'),
                    onTap: () {
                      Navigator.pushNamed(context, 'products');
                    },
                    color: const Color(0xff042698),
                    text: "Products")
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContainerHome(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                    text: "Purchase"),
                ContainerHome(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                    text: "Stock"),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              // margin: EdgeInsets.only(left: 40),
              padding: EdgeInsets.only(left: 25, right: 25),
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildCard(),
                  SizedBox(width: 20),
                  buildCard(),
                  SizedBox(width: 20),
                  buildCard(),
                  SizedBox(width: 20),
                  buildCard(),
                ],
              ),
            )
          ],
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: 'Sales',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inbox_outlined),
            label: 'Products',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_outlined),
            label: 'Purchase',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(children: [
        const SizedBox(
          height: 40,
        ),
        menuItem(1, "User", Icons.dashboard_outlined,
            currentPage == DrawerSections.User ? true : false),
        const SizedBox(
          height: 40,
        ),
        menuItem(1, "Sales", Icons.local_offer_outlined,
            currentPage == DrawerSections.Sales ? true : false),
        const SizedBox(
          height: 40,
        ),
        menuItem(1, "Products", Icons.all_inbox_outlined,
            currentPage == DrawerSections.Products ? true : false),
        const SizedBox(
          height: 40,
        ),
        menuItem(1, "Purchase", Icons.store_outlined,
            currentPage == DrawerSections.Purchase ? true : false),
        const SizedBox(
          height: 40,
        ),
        menuItem(1, "Stock", Icons.store_outlined,
            currentPage == DrawerSections.Stock ? true : false),
        const SizedBox(
          height: 40,
        ),
        menuItem(1, "Contact", Icons.headphones,
            currentPage == DrawerSections.Contact ? true : false),
      ]),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.User;
            } else if (id == 2) {
              currentPage = DrawerSections.Sales;
            } else if (id == 3) {
              currentPage = DrawerSections.Products;
            } else if (id == 4) {
              currentPage = DrawerSections.Purchase;
            } else if (id == 5) {
              currentPage = DrawerSections.Stock;
            } else if (id == 6) {
              currentPage = DrawerSections.Contact;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(children: [
            Expanded(
              child: Icon(
                Icons.dashboard_outlined,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

enum DrawerSections {
  User,
  Sales,
  Products,
  Purchase,
  Stock,
  Contact,
}
