import 'package:get/get.dart';
import 'package:getx_carousel/app/modules.home/providers/popular_provider.dart';

class HomeController extends GetxController {
  var lstPopular = List<dynamic>.empty(growable: true).obs;
  var isDataProcessing = false.obs;
  var isDataError = false.obs;

  @override
  void onInit() {
    super.onInit();
    getPopular();
  }

  void getPopular() {
    try {
      isDataProcessing(true);
      PopularProvider().getPopular().then((resp) {
        lstPopular.clear();
        isDataProcessing(false);
        lstPopular.addAll(resp);
        isDataError(false);
      }, onError: (err) {
        isDataProcessing(false);
        isDataError(true);
      });
    } catch (exception) {
      isDataProcessing(false);
      isDataError(true);
    }
  }

  @override
  void onReady() {
    super.onReady();
    getPopular();
  }

  @override
  void onClose() {
    super.onClose();
    getPopular();
  }
}
