

import 'package:flutter/material.dart';

import 'package:logger/logger.dart';

abstract class BasePage {

  Widget buildUI(BuildContext context);

  Future<bool> onWillPop() async {
    return true;
  }

}