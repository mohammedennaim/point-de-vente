import 'package:flutter/material.dart';
import 'package:point_de_vente/container/container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key});
  @override
  State<HomeScreen> createState() => DashboardState();
}

class DashboardState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text(
  //     'Index 0: Home',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 1: Business',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 2: School',
  //     style: optionStyle,
  //   ),
  //   Text(
  //     'Index 3: Settings',
  //     style: optionStyle,
  //   ),
  // ];

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
              Navigator.pushNamed(context, 'login');
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
      drawer: const Drawer(),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const SizedBox(
                height: 60,
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
                      assetImage:
                          const AssetImage('assets/images/products.png'),
                      onTap: () {
                        Navigator.pushNamed(context, 'products');
                      },
                      color: const Color(0xff042698),
                      text: "Products")
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerHome(
                      assetImage:
                          const AssetImage('assets/images/purchase.png'),
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
                height: 40,
              ),
              Container(
                // margin: EdgeInsets.only(left: 40),
                padding: EdgeInsets.only(left: 38, right: 38),
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Sales',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.all_inbox),
            label: 'Products',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Stock',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
