import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:point_de_vente/container/container_sales.dart';
import 'package:point_de_vente/container/darwer_header.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({key});
  @override
  State<ProductsScreen> createState() => DashboardState();
}

class DashboardState extends State<ProductsScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  var currentPage = DrawerSections.User;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushNamed(context, 'login');
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
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Text(
              'Page Products',
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
                    assetImage: const AssetImage('assets/images/purchase.png'),
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
        )),
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
