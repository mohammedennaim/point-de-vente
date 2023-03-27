import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:point_de_vente/container/container.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({key});
  @override
  State<Dashboard> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
      body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Image.asset(
                'assets/images/user.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerHome(
                      assetImage:
                          const AssetImage('assets/images/dashboard.png'),
                      onTap: () {
                        Get.off(const Dashboard());
                      },
                      color: const Color(0xff9bc9ff),
                      text: "Dahboard"),
                  ContainerHome(
                      assetImage:
                          const AssetImage('assets/images/lowstock.png'),
                      onTap: () {},
                      color: const Color(0xffb00909),
                      text: "Low Stock")
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContainerHome(
                      assetImage: const AssetImage('assets/images/product.png'),
                      onTap: () {},
                      color: const Color(0xffef78b4),
                      text: "All Product"),
                  ContainerHome(
                      assetImage: const AssetImage('assets/images/stock.png'),
                      onTap: () {},
                      color: const Color(0xff042698),
                      text: "Stock"),
                ],
              )
            ],
          )),
    );
  }
}
