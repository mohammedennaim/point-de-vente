import 'package:flutter/material.dart';
import 'package:point_de_vente/container/container_sales.dart';

class SalesScreen extends StatefulWidget {
  const SalesScreen({key});
  @override
  State<SalesScreen> createState() => DashboardState();
}

class DashboardState extends State<SalesScreen> {
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
                height: 15,
              ),
              Text(
                'Page Sales',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 45,
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
            ],
          )),
    );
  }
}
