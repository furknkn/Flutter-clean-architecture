import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../../view/_view_exports.dart';

class ApplicationProviderList {
  static ApplicationProviderList? _instance;

  static ApplicationProviderList get instance {
    _instance ??= ApplicationProviderList._init();
    return _instance!;
  }

  ApplicationProviderList._init();

  List<SingleChildWidget> singleItems = [];
  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(
      create: (context) => IpConnectionViewModel(),
    ),
    ChangeNotifierProvider(
      create: (context) => LoginViewModel(),
    ),
    ChangeNotifierProvider(
      create: (context) => DeliverJobViewModel(),
    ),
    ChangeNotifierProvider(
      create: (context) => LandingViewModel(),
    ),
    ChangeNotifierProvider(
      create: (context) => ProductDetailViewModel(),
    ),
  ];
  List<SingleChildWidget> uiChangesItems = [];
}
