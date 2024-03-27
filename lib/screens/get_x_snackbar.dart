import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Get X Snack Bar'),
       ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.snackbar(
              'Muhammad Hamza',
              'Hello',
            icon: const Icon(Icons.add),
              onTap: (snap){

          },
          mainButton: TextButton(onPressed: (){}, child: const Text('Click')),
            backgroundColor: Colors.blue,
            snackPosition: SnackPosition.BOTTOM
          );
        },
        child: const Icon(Icons.add),
      ),

    );
  }
}
