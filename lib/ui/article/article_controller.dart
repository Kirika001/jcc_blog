import 'package:get/get.dart';
import 'package:test_jccapi/data/model/article_model.dart';
import 'package:test_jccapi/data/model/logout_model.dart';
import 'package:test_jccapi/data/repository/repository.dart';
import 'package:test_jccapi/data/storage_core.dart';

class ArticleController extends GetxController {
  final repository = Get.find<Repository>();
  final storage = StorageCore();

  ArticleModel? articleModel;
  LogoutModel? logoutModel;

  @override
  void onInit() {
    super.onInit();
    articleList(storage.getAccessToken() ?? '');
  }

  void articleList(String token) async{
    try{
      var response = await repository.getArticle(token);
      articleModel = response;
      update();
    } catch(e){
      return e.printError();
    }
  }

  void logout() async{
    try{
      var res = await repository.postLogout(storage.getCurrentUsername().toString(), '12345678');
      logoutModel = res;
      update();
    } catch(e){
      e.printError();
    }
  }
}