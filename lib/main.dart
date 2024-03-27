import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/get_x_dialog_alert.dart';
import 'package:flutter_getx/screens/get_x_snackbar.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // material app sab sa main widget ha pori app ma get x khta ha jan getx ko use
      // karo to get material app ki trah use karo
      title: 'Flutter Demo',
      home: DialogAlert(),
    );
  }
}


