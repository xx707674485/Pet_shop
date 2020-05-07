import 'package:flutter/widgets.dart';
import 'package:flutter_shop/test/count_model.dart';

class ShareInherited extends InheritedWidget {
  CountModel countModel;
  Function() add;
  Function() reduce;

  ShareInherited(
      {@required this.countModel,
      @required this.add,
      @required this.reduce,
      Widget child})
      : super(child: child);

  static ShareInherited of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType(aspect: ShareInherited);
  }

  @override
  bool updateShouldNotify(ShareInherited oldWidget) {
    // TODO: implement updateShouldNotify
    return oldWidget.countModel != countModel;
  }
}
