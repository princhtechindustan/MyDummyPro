import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newdummybitesbee/getx/detailspage/thridpage_binding/thirdpage_binding.dart';
import 'package:newdummybitesbee/getx/home/controller/homecontroller.dart';
import 'package:newdummybitesbee/getx/services/data.dart';
import 'package:newdummybitesbee/getx/detailspage/second_page.dart';


class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    final getData = Get.find<MyData>();
    final homeController = Get.find<HomeController>();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("third"),
              ElevatedButton(
                onPressed: () {
                  Get.to(const SecondPage());
                },
                child: const Text("Go to Second Screen",
                  style: TextStyle(fontSize: 12),),
              ),
              ElevatedButton(
                onPressed: () {
                  // Get.to(const SecondPage());
                  print(getData.fetchingData());
                },
                child: const Text("check",
                  style: TextStyle(fontSize: 12),),
              ),
              Obx(()=> Text("${homeController.count}"),)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          homeController.increment();
        },
      ),
    );
  }
}
