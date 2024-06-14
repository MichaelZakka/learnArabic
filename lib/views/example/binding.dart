import 'package:get/get.dart';
import 'package:kaleela/views/example/controller.dart';

class ExampleBinding implements Bindings{
  @override
  void dependencies(){
    Get.put(ExampleController());
  }
}