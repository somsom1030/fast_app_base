import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:flutter/material.dart';

class PointButton extends StatelessWidget {
  final int point;

  const PointButton({super.key, required this.point});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        "my point".text.color(context.appColors.lessImportantText).make(),
        "$point won".text.bold.make(),
        width10,
        Arrow(
          color: context.appColors.lessImportantText,
        ),
      ],
    );
  }
}
