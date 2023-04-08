import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:point_de_vente/container/container_sales.dart';
// import 'package:point_de_vente/container/coustom_bottom_nav_bar.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:point_de_vente/container/darwer_header.dart';
import 'package:line_icons/line_icons.dart';

import 'package:google_nav_bar/google_nav_bar.dart' show GButton, GNav;

class StockScreen extends StatefulWidget {
  const StockScreen({key});
  @override
  State<StockScreen> createState() => DashboardState();
}

class DashboardState extends State<StockScreen> {
  final user = FirebaseAuth.instance.currentUser!;

  var currentPage = DrawerSections.User;

  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 3;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
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
          padding: EdgeInsets.zero,
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
      // primary: pages[currentIndex],
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(
                'Stock Page',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerSales(
                      assetImage:
                          const AssetImage('assets/images/purchase.png'),
                      onTap: () {},
                      color: const Color(0xffef78b4)),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/purchase.png'),
                    onTap: () {},
                    color: const Color(0xffef78b4),
                  ),
                  ContainerSales(
                    assetImage: const AssetImage('assets/images/stock.png'),
                    onTap: () {},
                    color: const Color(0xff042698),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home_outlined),
      //       label: 'Home',
      //       backgroundColor: Colors.red,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.local_offer_outlined),
      //       label: 'Sales',
      //       backgroundColor: Colors.green,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.all_inbox_outlined),
      //       label: 'Products',
      //       backgroundColor: Colors.purple,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.store_outlined),
      //       label: 'Stock',
      //       backgroundColor: Colors.pink,
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.black,
      //   onTap: _onItemTapped,
      // ),
      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.stock),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 240, 186, 105),
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[300]!,
            gap: 8,
            activeColor: Colors.black,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            duration: Duration(milliseconds: 50),
            tabBackgroundColor: Colors.grey[100]!,
            tabMargin:
                EdgeInsets.only(left: 10, right: 10, top: 13, bottom: 13),
            color: Colors.black,
            tabs: [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
                onPressed: () {
                  Navigator.pushNamed(context, 'home_screen');
                },
              ),
              GButton(
                icon: Icons.local_offer,
                // icon: LineIcons.offer,
                text: 'Sales',
                onPressed: () {
                  Navigator.pushNamed(context, 'sales');
                },
              ),
              GButton(
                icon: LineIcons.dropbox,
                text: 'Products',
                onPressed: () {
                  Navigator.pushNamed(context, 'products');
                },
              ),
              GButton(
                icon: LineIcons.user,
                text: 'Profile',
                onPressed: () {
                  Navigator.pushNamed(context, 'stock');
                },
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
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
        menuItem(1, "User", Icons.supervised_user_circle_outlined,
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
          padding: EdgeInsets.only(bottom: 8, top: 8, left: 15, right: 15),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  LineIcons.userCircleAlt,
                  size: 30,
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
            ],
          ),
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
