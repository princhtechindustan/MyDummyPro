

import 'package:get/get.dart';
import 'package:newdummybitesbee/getx/home/controller/homecontroller.dart';
import 'package:newdummybitesbee/getx/services/data.dart';

class ThirdPageBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(MyData());
    Get.put(HomeController());
  }
}