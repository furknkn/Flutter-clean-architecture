import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ApplicationProviderList {
  static ApplicationProviderList? _instance;

  static ApplicationProviderList get instance {
    _instance ??= ApplicationProviderList._init();
    return _instance!;
  }

  ApplicationProviderList._init();

  List<SingleChildWidget> singleItems = [];
  List<SingleChildWidget> dependItems = [
    /*
    ChangeNotifierProvider(
      create: (context) => xxxViewModel(),
    ),*/
  ];
  List<SingleChildWidget> uiChangesItems = [];
}
