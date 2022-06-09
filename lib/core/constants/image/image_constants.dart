class ImageConstants {
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  ImageConstants._init();

  String get getLogoTextImage => toImageSvg('logo_text');
  String get getLogo => toImageSvg('logo');
  String get getProductSavedImage => toImageSvg('product_saved_image');
  String get getQrImage => toImageSvg('qr_image');
  String get getRelationResualtImage => toImageSvg('relation_resualt_image');
  String get getPng => toImageSvg('login_image');
  String get getFullLogoImage => toImageSvg('full_logo_image');
  String get loginImage => toImageSvg('login_image');
  String get appBarIamge => toImageSvg('appbar_image');

  String get getApiCloudIcon => toIconSvg('api_cloud_icon');
  String get orderNumberIcon => toIconSvg('order_number');
  String get getBackButtonIcon => toIconSvg('back_button_icon');
  String get getBarcodeIcon => toIconSvg('barcode_icon');
  String get getBocIcon => toIconSvg('box_icon');
  String get getDrawerButtonIcon => toIconSvg('drawer_button_icon');
  String get getEyesIcon => toIconSvg('eyes_icon');
  String get getShelfIcon => toIconSvg('shelf_icon');

  String toImageSvg(String name) => 'assets/images/$name.svg';
  String toIconSvg(String name) => 'assets/icons/$name.svg';
}
