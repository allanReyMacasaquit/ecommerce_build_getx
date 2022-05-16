import 'package:ecommerce_build_getx/services/networking/get_connect_provider.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // implement dependencies
    Get.put(GetConnectProvider(), permanent: true);
  }
}
