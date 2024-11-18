import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'navigate_Screen.dart';



class GetXNavigation extends StatefulWidget {
  final String name;


  const GetXNavigation({super.key, this.name = ''});

  @override
  State<GetXNavigation> createState() => _GetXNavigationState();
}

class _GetXNavigationState extends State<GetXNavigation> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text('Get X Navigation'  +widget.name),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              onPressed: (){

                Get.to(const NavigatorTwo());

              },
              child: const Text('Move to next screen'),
            ),
          ),
        ],
      ),
    );
  }
}
