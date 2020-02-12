import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter/UI/movies_screen.dart';
import 'package:platform_widgets/base/platform_app.dart';

void main() => runApp(MoviesFlutter());

class MoviesFlutter extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      home: MoviesScreen(),
    );
  }
}