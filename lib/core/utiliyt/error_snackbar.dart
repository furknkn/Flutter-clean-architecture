import '../_core_exports.dart';

//child eklenecek
class ErrorSnackBar {
  void showMessageSnackBar(String content) {
    ScaffoldMessenger.of(GlobalContextKey.instance.globalKey.currentContext!)
        .showSnackBar(
      const SnackBar(
        duration: Duration(seconds: 2),
        margin: EdgeInsets.only(bottom: 64),
        backgroundColor: Colors.transparent,
        content: SizedBox(),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
      ),
    );
  }
}
