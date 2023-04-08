import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  var selectedMenu;

  CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 247, 64, 64),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color.fromARGB(255, 110, 110, 110).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home_outlined),
              color: MenuState.home == widget.selectedMenu
                  ? Colors.black
                  : Colors.white,
              onPressed: () => Navigator.pushNamed(context, 'home_screen'),
            ),
            IconButton(
              icon: Icon(Icons.local_offer_outlined),
              color: MenuState.sales == widget.selectedMenu
                  ? Colors.black
                  : Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, 'sales');
              },
            ),
            IconButton(
              icon: Icon(Icons.all_inbox_outlined),
              color: MenuState.products == widget.selectedMenu
                  ? Colors.black
                  : Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, 'products');
              },
            ),
            IconButton(
              icon: Icon(Icons.store_outlined),
              color: MenuState.stock == widget.selectedMenu
                  ? Colors.black
                  : Colors.white,
              onPressed: () => Navigator.pushNamed(context, 'stock'),
            ),
          ],
        ),
      ),
    );
  }
}

enum MenuState { home, sales, products, stock }
