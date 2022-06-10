class ImageConstants {
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  ImageConstants._init();

  String get getLogo => toImageSvg('logo');

  String get getApiCloudIcon => toIconSvg('logo');

  String toImageSvg(String name) => 'assets/images/$name.svg';
  String toIconSvg(String name) => 'assets/icons/$name.svg';
}
