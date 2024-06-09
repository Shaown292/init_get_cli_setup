import 'package:flutter/material.dart';
import 'package:init_get_cli_setup/app/constant/app_colors.dart';
import 'package:init_get_cli_setup/app/constant/app_text.dart';


class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? color;
  final String text;
  final TextStyle? textStyle;
  final Function()? onTap;
  final EdgeInsets? padding;

  const CustomButton({
    super.key,
    this.height,
    this.width,
    this.color,
    required this.text,
    this.onTap,
    this.borderRadius,
    this.textStyle, this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height ?? 40,
        width: width,
        padding: padding,
        decoration: ShapeDecoration(
          color: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 20),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle ?? AppTextStyle.robotoWhiteW400Size16,
          ),
        ),
      ),
    );
  }
}