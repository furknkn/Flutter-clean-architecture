import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../_core_exports.dart';

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
