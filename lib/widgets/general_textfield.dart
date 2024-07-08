// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:weatherz/constants/color.dart';
import 'package:weatherz/constants/icon.dart';
import 'package:weatherz/constants/style.dart';

enum TextFieldType {
  obscured,
  notObscured,
}

class GeneralTextField extends StatefulWidget {
  GeneralTextField({
    super.key,
    this.hintText = "",
    this.textFieldType = TextFieldType.notObscured,
    required this.controller,
  });

  final String hintText;
  final TextFieldType textFieldType;
  final TextEditingController controller;
  bool tappedEye = false;

  @override
  State<GeneralTextField> createState() => _GeneralTextFieldState();
}

class _GeneralTextFieldState extends State<GeneralTextField> {
  @override
  void didUpdateWidget(covariant GeneralTextField oldWidget) {
    widget.tappedEye = oldWidget.tappedEye;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335.w,
      height: 60.h,
      child: TextField(
        maxLines: 1,
        textAlignVertical: TextAlignVertical.center,
        style: AppTextStyles.mediumBlack,
        controller: widget.controller,
        obscureText:
            widget.textFieldType == TextFieldType.obscured && !widget.tappedEye
                ? true
                : false,
        cursorColor: AppColors.secondary,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.tertiary,
          isCollapsed: false,
          constraints: BoxConstraints.tightFor(
            height: 60.h,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 20.h,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.stroke,
              width: 1.w,
            ),
            borderRadius: BorderRadius.circular(
              12.r,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.secondary,
              width: 1.w,
            ),
            borderRadius: BorderRadius.circular(
              12.r,
            ),
          ),
          suffixIconConstraints: BoxConstraints(
            maxHeight: 24.w,
            maxWidth: 40.w,
          ),
          suffixIcon: widget.textFieldType == TextFieldType.obscured
              ? Padding(
                  padding: EdgeInsets.only(
                    right: 16.w,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.tappedEye = !widget.tappedEye;
                      });
                    },
                    child: Image.asset(
                      AppIcons.eyeIcon,
                      color:
                          widget.tappedEye ? AppColors.blue : AppColors.primary,
                    ),
                  ),
                )
              : null,
          hintText: widget.hintText,
          hintStyle: AppTextStyles.mediumBlack,
        ),
      ),
    );
  }
}
