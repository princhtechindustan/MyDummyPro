import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newdummybitesbee/getx/detailspage/thridpage_binding/thirdpage_binding.dart';
import 'package:newdummybitesbee/getx/getxproperties/getxproperties.dart';
import 'package:newdummybitesbee/getx/home/controller/homecontroller.dart';
import 'package:newdummybitesbee/getx/services/data.dart';
import 'package:newdummybitesbee/getx/detailspage/second_page.dart';
import 'package:newdummybitesbee/getx/detailspage/thirdnav.dart';

class GetXHomePage extends StatefulWidget {
  const GetXHomePage({Key? key}) : super(key: key);

  @override
  _GetXHomePageState createState() => _GetXHomePageState();
}

class _GetXHomePageState extends State<GetXHomePage> {
  final getData = Get.find<MyData>();
  final homeState = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  const Text("home"),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(const SecondPage());
                    },
                    child: const Text("Go to Second Screen",
                      style: TextStyle(fontSize: 12),),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(const GetxProperties());
                    },
                    child: const Text("GetX Properties",
                      style: TextStyle(fontSize: 12),),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(const ThirdScreen(),binding: ThirdPageBinding());
                    },
                    child: const Text("Go to third Screen",
                      style: TextStyle(fontSize: 12),),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Get.to(const ThirdScreen());
                      print(getData.fetchingData());
                    },
                    child: const Text("Check",
                      style: TextStyle(fontSize: 12),),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Get.to(const ThirdScreen());
                      print(getData.value);
                    },
                    child: const Text("Check2",
                      style: TextStyle(fontSize: 12),),
                  ),
                  Obx(()=>Text("${homeState.count}"),)
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          homeState.increment();
        },
      ),
    );
  }
}
