import 'package:animal_search_app/app/modules/profile/controller.dart';
import 'package:get/get.dart';

class ProfileBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(ProfileController());
  }
}
