import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Second"),
              ElevatedButton(
                onPressed: (){
                  Get.back();

                },
                child: const Text("goTo back",
                  style: TextStyle(fontSize: 12),),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
