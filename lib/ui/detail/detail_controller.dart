import 'package:get/get.dart';
import 'package:test_jccapi/data/model/article_detail_model.dart';
import 'package:test_jccapi/data/repository/repository.dart';
import 'package:test_jccapi/data/storage_core.dart';

class DetailController extends GetxController {
  final repository = Get.find<Repository>();
  final storage = StorageCore();

  dynamic argumentData = Get.arguments;

  ArticleDetailModel? articleDetailModel;

  @override
  void onInit() {
    super.onInit();
    showDetail(argumentData['id'] ,storage.getAccessToken() ?? '');
  }

  void showDetail(int id,String token) async{
    try{
      var response = await repository.getDetail(id,token);
      articleDetailModel = response;
      update();
    } catch(e){
      return e.printError();
    }

  }
}