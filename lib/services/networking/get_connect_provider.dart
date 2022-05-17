import 'package:ecommerce_build_getx/services/networking/api_constants.dart';
import 'package:ecommerce_build_getx/services/networking/interceptors/request_interceptor.dart';
import 'package:ecommerce_build_getx/services/networking/interceptors/response_interceptor.dart';
import 'package:get/get_connect.dart';

typedef JSON = Map<String, dynamic>;

class GetConnectProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = ApiConstants.baseUrl;
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
  }
}
