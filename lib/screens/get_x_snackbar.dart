import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarScreen extends StatefulWidget {
  const SnackBarScreen({super.key});

  @override
  State<SnackBarScreen> createState() => _HomeScreenState();

}

class _HomeScreenState extends State<SnackBarScreen> {

  @override
  Widget build(BuildContext context) {

    // add media query

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
          mainButton: TextButton(
              onPressed: (){},
              child: const Text(
                  'Click',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                )
              ),
          ),
            backgroundColor: Colors.blue,
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        child: const Icon(Icons.add),
      ),

    );
  }
}
