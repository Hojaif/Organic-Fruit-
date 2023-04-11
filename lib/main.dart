import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Screen/HomeScreen.dart';



void main(){
  runApp(ShoppingApp ());
}

class ShoppingApp extends StatelessWidget {
  const ShoppingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
