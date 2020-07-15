
import 'log/log_console.dart';
import 'package:flutter/material.dart';
import 'router/application.dart';
import 'router/routers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // 初始化路由
  Application.initRouter();
  LogConsole.init(bufferSize: 100);
  // 初始化异步
  await Application.doAsyncInit();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Base Project',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Application.router.generator,
        initialRoute: Routes.welcome,
    );
  }
}
