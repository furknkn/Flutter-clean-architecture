import '../_core_exports.dart';

extension ContextExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext {
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;
  double get lowValue =>
      width * 0.012; //tasarım için 414px'de 5px e gelen değer
  double get lowMediumValue => width * 0.024; //10px için
  double get normalValue => width * 0.036; //15px için
  double get mediumValue => width * 0.048; //20px için
  double get highValue => width * 0.060; //25px için

  double get borderSize => width * 0.005;

  void removeFocus(context) {
    FocusScopeNode currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colors => theme.colorScheme;
}

extension PaddingExtensionAll on BuildContext {
  EdgeInsets get paddingAllLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingAllLowMedium => EdgeInsets.all(lowMediumValue);
  EdgeInsets get paddingAllNormal => EdgeInsets.all(normalValue);
  EdgeInsets get paddingAllMedium => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingAllHigh => EdgeInsets.all(highValue);
}

extension PaddingExtensionSymetric on BuildContext {
  EdgeInsets get paddingLowVertical => EdgeInsets.symmetric(vertical: lowValue);
  EdgeInsets get paddingLowMediumVartical =>
      EdgeInsets.symmetric(vertical: lowMediumValue);
  EdgeInsets get paddingNormalVertical =>
      EdgeInsets.symmetric(vertical: normalValue);
  EdgeInsets get paddingMediumVertical =>
      EdgeInsets.symmetric(vertical: mediumValue);
  EdgeInsets get paddingHighVertical =>
      EdgeInsets.symmetric(vertical: highValue);

  EdgeInsets get paddingLowHorizontal =>
      EdgeInsets.symmetric(horizontal: lowValue);
  EdgeInsets get paddingLowMediumHorizontal =>
      EdgeInsets.symmetric(horizontal: lowMediumValue);
  EdgeInsets get paddingNormalHorizontal =>
      EdgeInsets.symmetric(horizontal: normalValue);
  EdgeInsets get paddingMediumHorizontal =>
      EdgeInsets.symmetric(horizontal: mediumValue);
  EdgeInsets get paddingHighHorizontal =>
      EdgeInsets.symmetric(horizontal: highValue);
}

extension ColorExtension on BuildContext {
  Color get appWhite => AppColors.appWhite;
  Color get appBlack => AppColors.appBlack;
  Color get darkBlue => AppColors.darkBlue;
  Color get appGrey => AppColors.appGrey;
  Color get generalBlueColor => AppColors.generalBlueColor;
  Color get lightBlue => AppColors.lightBlue;
  Color get appBlue => AppColors.appBlue;
  Color get softLightBlue => AppColors.softLightBlue;
  Color get darkGreen => AppColors.darkGreen;
  Color get appGreen => AppColors.appGreen;
  Color get darkOrange => AppColors.darkOrange;
  Color get appRed => AppColors.appRed;
}
