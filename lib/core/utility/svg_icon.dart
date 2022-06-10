import '../_core_exports.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcons extends StatelessWidget {
  final String path;
  final double size;
  final Color? iconColor;
  const SvgIcons({Key? key, required this.path, this.size = .1, this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      color: iconColor,
      width: ScreenSize().getWidthPercent(size),
    );
  }
}
