import 'package:flutter/material.dart';

import '../_core_exports.dart';

class ErrorSnackBar {
  void showMessageSnackBar(String content) {
    ScaffoldMessenger.of(GlobalContextKey.instance.globalKey.currentContext!)
        .showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        margin: const EdgeInsets.only(bottom: 64),
        backgroundColor: Colors.transparent,
        content: CustomMessenger(content: content),
        behavior: SnackBarBehavior.floating,
        elevation: 0,
      ),
    );
  }
}

class CustomMessenger extends StatelessWidget {
  const CustomMessenger({Key? key, required this.content}) : super(key: key);
  final String content;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: AppColors.appGrey.withOpacity(.1),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.appWhite,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                height: 32,
                width: 4,
                decoration: const BoxDecoration(
                  color: AppColors.appRed,
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(4),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              SvgIcons(
                path: ImageConstants.instance.getQrImage,
                size: 0.074,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  content,
                  style: AppTextStyles.button16Regular,
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
