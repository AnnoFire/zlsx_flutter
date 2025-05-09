import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  RxList orderList = [].obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

getOrderList() async{
  // var response = await HttpsClient().get("zxhsd-yuntaigou-system/yuntaigou/order/list");
  update(['orderList']);
}

}
