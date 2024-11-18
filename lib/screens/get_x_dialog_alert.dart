import 'package:flutter/material.dart';
import 'package:get/get.dart';



class DialogAlert extends StatefulWidget {
  const DialogAlert({super.key});

  @override
  State<DialogAlert> createState() => _DialogAlertState();
}


class _DialogAlertState extends State<DialogAlert> {
  @override
  Widget build(BuildContext context) {


    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Get X Dialog Alert'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
      ),
      body: Column(
        children: [
          Card(
            elevation: 5,
            child: ListTile(
              title: const Text('Get X Dialog Alert'),
              subtitle: const Text('Get x subtitle'),
              onTap: (){
                Get.defaultDialog(
                  title: 'Delete Chat',
                  titlePadding: const EdgeInsets.only(top: 20),
                  contentPadding: const EdgeInsets.all(20),
                  middleText: 'Are you shure you want to delete this chat?',
                  textConfirm: 'Yes',
                  textCancel: 'No',

                  // confirm: TextButton(onPressed: (){}, child: const Text('Yes')),



                );

              },
            ),
          ),
         const SizedBox(
            height: 20,
          ),
          Card(
            elevation: 5,
            child: ListTile(
              title: const Text('Get X Bottom Sheet'),
              subtitle: const Text('Get x subtitle'),
              onTap: (){
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.light_mode),
                          title: const Text('Light Theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                            setState(() {

                            });
                          },
                        ),
                        ListTile(
                          onTap: (){

                            Get.changeTheme(ThemeData.dark());
                            setState(() {

                            });
                          },
                          leading: const Icon(Icons.dark_mode),
                          title: const Text('Dark Theme'),
                        ),

                      ],
                    ),
                  ),

                );

              },
            ),
          ),
        ],
      ),
    );
  }
}
