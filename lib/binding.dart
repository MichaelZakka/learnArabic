import 'package:get/get.dart';
import 'package:kaleela/controller/inti_controller.dart';

class InitBinding implements Bindings{
  @override
  void dependencies(){
    Get.put(IntiController());
  }
}