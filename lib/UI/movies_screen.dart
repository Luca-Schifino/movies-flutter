import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoviesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(
          'Movies List',
          style: CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle
        )
      ),
    );
  }
}