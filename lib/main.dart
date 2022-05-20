import 'package:flutter/material.dart';
import 'package:org_chemistry/model/menu.dart';
import 'package:org_chemistry/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(
        menus: [
          Menu(name: "Темалар", image: 'assets/images/book.png'),
          Menu(name: "Лабораториялык иштер", image: 'assets/images/book.png'),
          Menu(name: "Терминдер", image: 'assets/images/book.png'),
          Menu(name: "Сынактар", image: 'assets/images/book.png'),
          Menu(name: "Эскертмелер", image: 'assets/images/book.png'),
          Menu(name: "Шартту белгилер", image: 'assets/images/book.png'),
        ],
      ),
    );
  }
}
