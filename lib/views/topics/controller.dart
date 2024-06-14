import 'package:get/get.dart';

class TopicsController extends GetxController {

  RxBool isExpanded =false.obs;

  toggleVar(RxBool variable) {
    variable.toggle();
    update();
  }
}
