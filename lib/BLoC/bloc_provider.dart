import 'package:flutter/material.dart';
import 'package:movies_flutter/BLoC/bloc.dart';

class BlocProvider<T extends Bloc> extends StatefulWidget {
  const BlocProvider({Key key, @required this.bloc, @required this.child});

  final T bloc;
  final Widget child;

  static T of<T extends Bloc>(BuildContext context) {
    final BlocProvider<T> provider = context.findAncestorWidgetOfExactType();
    return provider.bloc;
  }

  @override
  State<StatefulWidget> createState() => _BlocProviderState();
}

class _BlocProviderState extends State<BlocProvider> {
  @override
  Widget build(BuildContext context) => widget.child;

  @override
  void dispose() {
    widget.bloc.dispose();
    super.dispose();
  }
}