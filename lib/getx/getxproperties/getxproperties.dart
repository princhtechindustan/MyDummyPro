import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';



class GetxProperties extends StatefulWidget {
  const GetxProperties({Key? key}) : super(key: key);

  @override
  _GetxPropertiesState createState() => _GetxPropertiesState();
}

class _GetxPropertiesState extends State<GetxProperties> {
  double _progress = 0;

  void startTimer() {
     Timer.periodic(
      const Duration(seconds: 1),
          (Timer timer) => setState(
            () {
          if (_progress == 1) {
            timer.cancel();
          } else {
            _progress += 0.2;
          }
        },
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _progress = 0;
    });
    startTimer();
  }


   @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: const Text("My SnackBar",
                  style: TextStyle(
                    fontSize: 12,
                  ),),
                onPressed: (){
                  Get.snackbar(
                    "My SnacksBar",
                    "Hello everyone",
                     duration: const Duration(seconds: 1),
                    icon: const Icon(Icons.person, color: Colors.white),
                    snackPosition: SnackPosition.BOTTOM,

                  );
                }),
            ElevatedButton(
                child: const Text("My Dialogue Box",
                  style: TextStyle(
                    fontSize: 12,
                  ),),
                onPressed: (){
                  Get.defaultDialog(
                      title: "My Dialogue Box",
                      middleText: "Hello world!",
                      backgroundColor: Colors.green,
                      titleStyle:const TextStyle(color: Colors.white),
                      middleTextStyle: const TextStyle(color: Colors.white),
                      cancelTextColor: Colors.white,
                      confirmTextColor: Colors.white,
                      buttonColor: Colors.red,
                      barrierDismissible: true,
                      radius: 50,
                      content: Column(
                        children: const [
                        Text("Hello 1"),
                        Text("Hello 2"),
                        Text("Hello 3"),
                        ],
                      )
                  );
                }),
            ElevatedButton(
                child: const Text("My BottomSheet",
                  style: TextStyle(
                    fontSize: 12,
                  ),),
                onPressed: (){
                  Get.bottomSheet(
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            ListTile(title: Text("Option 1"),
                              trailing:  Icon(Icons.access_alarms),),
                            ListTile(title: Text("Option 2"),
                              trailing: Icon(Icons.ac_unit),),
                            ListTile(title: Text("Option 3"),
                              trailing: Icon(Icons.present_to_all_sharp),),
                            ListTile(title: Text("Option 4"),
                              trailing: Icon(Icons.keyboard),),
                          ],
                        ),
                      ),
                      elevation: 20.0,
                      enableDrag: true,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          )
                      )

                  );
                }),
            // Progress Bar in Flutter
           const SizedBox(height: 20,),
            Text("$_progress"),
            Container(
              margin:const EdgeInsets.only(left: 20,right: 20),
              child:   LinearProgressIndicator(
                backgroundColor: Colors.white,
                valueColor: const AlwaysStoppedAnimation(Colors.black),
                value: _progress,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
