import 'package:flutter/material.dart';
import 'package:point_de_vente/auth.dart';
// import 'package:point_de_vente/dashboard.view.dart';
import 'package:point_de_vente/home_screen.dart';
import 'package:point_de_vente/login_page.dart';
import 'package:point_de_vente/products.dart';
import 'package:point_de_vente/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:point_de_vente/sales.dart';
import 'Splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Auth(),
    routes: {
      'home_screen': (context) => HomeScreen(),
      'auth': (context) => Auth(),
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'splash': (context) => Splash(),
      'sales': (context) => SalesScreen(),
      'products': (context) => ProductsScreen(),
    },
  ));
}
