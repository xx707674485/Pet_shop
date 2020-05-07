import 'package:flutter/widgets.dart';

class InheriterProvider<T> extends InheritedWidget {
  final T data;

  InheriterProvider({@required this.data, Widget child}) : super(child: child);

  static InheriterProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType(
        aspect: InheriterProvider);
  }

  @override
  bool updateShouldNotify(InheriterProvider oldWidget) {
    return true;
  }
}
