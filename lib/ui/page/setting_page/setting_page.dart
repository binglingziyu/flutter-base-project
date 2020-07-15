
import '../../../log/log_console.dart';
import '../../../ui/page/base_page/base_stateful_state.dart';
import '../../../ui/component/common_text_title.dart';
import 'package:dio_log/http_log_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class SettingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SettingPageState();
  }
}

class _SettingPageState extends BaseStatefulState<SettingPage> {

  var versionString = "";

  @override
  void initState() {
    super.initState();
    PackageInfo.fromPlatform().then((PackageInfo packageInfo) {
      String appName = packageInfo.appName;
      String packageName = packageInfo.packageName;
      String version = packageInfo.version;
      String buildNumber = packageInfo.buildNumber;
//      setState(() {
//        versionString = "$appName\n$packageName\n$version\n$buildNumber";
//      });
      setState(() {
        versionString = "$version+$buildNumber";
      });
    });
  }

  @override
  Widget buildUI(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonTextTitle("设置"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text("版本"),
            trailing: Text(versionString),
            onTap: () => _versionTap(context),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.close),
            title: Text("退出登录"),
            onTap: () {

            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.bug_report),
            title: Text("开发者工具"),
            onTap: () {
              showModalBottomSheet(context: context, builder: (context) => GridView.count(
                crossAxisCount: 2,
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LogConsole(),
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.blue,
                      child: Center(
                        child: Text("Log"),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => HttpLogListWidget(),
                        ),
                      );
                    },
                    child: Container(
                      color: Colors.red,
                      child: Center(
                        child: Text("Request Log"),
                      ),
                    ),
                  )
                ],
              ));
            },
          ),
        ],
      ),
    );
  }

  int timeMs = 0;
  int tapCount = 0;
  void _versionTap(BuildContext context) {
    int nowTimeMs = DateTime.now().millisecondsSinceEpoch;
    if(nowTimeMs - timeMs < 500) {
      tapCount++;
    } else {
      tapCount = 1;
    }
    timeMs = nowTimeMs;
    if(tapCount == 6) {
//      showDebugBtn(context);
//      Navigator.of(context).push(
//        MaterialPageRoute(
//          builder: (context) => LogConsole(),
//        ),
//      );
      tapCount = 0;
    }
  }

}