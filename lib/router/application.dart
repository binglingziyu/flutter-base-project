import 'package:fluro/fluro.dart';
import 'routers.dart';
import '../util/shared_preferences.dart';

class Application {

  static Router router;
  static SpUtil sp;

  static void initRouter() {
    // 初始化路由
    final router = Router();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  static Future doAsyncInit() async {
    // 初始化 SharedPreference
    sp = await SpUtil.getInstance();
  }

}
