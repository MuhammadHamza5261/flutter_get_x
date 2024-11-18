import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'get_x_navigation.dart';


class NavigatorTwo extends StatefulWidget {
  const NavigatorTwo({super.key});

  @override
  State<NavigatorTwo> createState() => _NavigatorTwoState();
}

class _NavigatorTwoState extends State<NavigatorTwo> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
                onPressed: (){

                  Get.to(const GetXNavigation(name: 'Muhammad Hamza',));


                },
                child: const Text('Move to previous Screen'),
            ),
          ),
        ],
      ),
    );
  }
}
