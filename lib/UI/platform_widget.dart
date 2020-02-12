import 'dart:io';

import 'package:flutter/material.dart';

abstract class PlatformWidget<I extends Widget, A extends Widget> extends StatelessWidget {

  I createIOSWidget(BuildContext context);
  A createAndroidWidget(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return createIOSWidget(context);
    } else if (Platform.isAndroid) {
      return createAndroidWidget(context);
    } else {
      return Container();
    }
  }
}