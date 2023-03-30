import 'package:flutter/material.dart';
import 'package:point_de_vente/container/container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({key});
  @override
  State<HomeScreen> createState() => DashboardState();
}

class DashboardState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
              Scaffold.of(context).openEndDrawer();
            },
            icon: const Icon(Icons.menu),
            color: Color.fromARGB(255, 255, 187, 0),
            iconSize: 30,
          ),
          // ),
        ],
        // titleSpacing: 340,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'login');
            },
            icon: const Icon(Icons.arrow_circle_left_rounded),
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
                      color: const Color(0xff9bc9ff),
                      text: "Sales"),
                  ContainerHome(
                      assetImage:
                          const AssetImage('assets/images/products.png'),
                      onTap: () {},
                      color: const Color(0xffb00909),
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
                      color: const Color(0xffef78b4),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(15),
                    //   boxShadow: [
                    //     BoxShadow(
                    //       color: Colors.grey.withOpacity(0.5),
                    //       spreadRadius: 2,
                    //       blurRadius: 5,
                    //       offset: const Offset(0, 3), // changes position of shadow
                    //     ),
                    //   ],
                    // ),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/images/image.jpg'),
                          height: 180,
                          width: 360,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.solar_power_rounded),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
