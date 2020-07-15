
import 'package:flutter/material.dart';
import '../../../ui/component/common_text_title.dart';
import '../../../log/log.dart';
import '../../../ui/page/base_page/base_stateful_state.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends BaseStatefulState<LoginPage> {


  @override
  Widget buildUI(BuildContext context) {

    Log.i("LoginPage buildUI!");

    return Scaffold(
      appBar: AppBar(
        title: CommonTextTitle("登录"),
      ),
      body: Container(
        child: Center(
          child: MaterialButton(
            onPressed: () {

            },
            color: Colors.blue,
            child: Text("点击登录"),
          ),
        ),
      ),
    );
  }
}
