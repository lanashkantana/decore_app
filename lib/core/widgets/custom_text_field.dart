import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CustomFormTextField extends StatefulWidget {
   const CustomFormTextField({
    super.key,
    required this.hintText,
    required this.obscureText,
     this.prefixIcon,
    required this.controller,
    required this.keyboardType,
    this.labelText,
    this.labelStyle,
    this.suffixIcon,
    this.fillColor,
    this.hintStyle,
    this.readOnly = false,
    this.onTap,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
     this.colortext,
  });

  final String hintText;
  final String? labelText;
  final bool obscureText;
  final IconButton? suffixIcon;
  final TextStyle? labelStyle;
  final Color? fillColor;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool readOnly;
  final VoidCallback? onTap;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final  Color? colortext;

  @override
  State<CustomFormTextField> createState() => _CustomFormTextFieldState();
}

class _CustomFormTextFieldState extends State<CustomFormTextField> {
  @override
  Widget build(BuildContext context) {
    return 
     TextFormField(
      style: AppStyle.typaragraph14.copyWith(
        fontSize: 18.r,
        
        color: widget.colortext??AppColors.colorTextfield,letterSpacing: 0.4,
      fontWeight: FontWeight.w400),
         onFieldSubmitted: widget.onFieldSubmitted,
        validator: widget.validator,
        onTap: widget.onTap,
        readOnly: widget.readOnly,
        keyboardType: widget.keyboardType,
        controller: widget.controller,
       
        obscureText: widget.obscureText,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 16) ,
          filled: true,
          fillColor: widget.fillColor ?? const Color(0xFFD9D9D9),
          labelStyle:
              widget.labelStyle ??
              TextStyle(
                color: AppColors.orangeBrown,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
          labelText: widget.labelText,
          hintText: widget.hintText,
          suffixIcon: widget.suffixIcon,
          suffixIconColor: AppColors.orangeBrown,
          hintStyle:
              widget.hintStyle ??
              TextStyle(color: AppColors.orangeBrown, fontSize: 16.sp),
          prefixIcon: widget.prefixIcon,
          enabledBorder: _outlineInputBorder(),
          border: _outlineInputBorder(),
          focusedBorder: _outlineInputBorder(),
         
        ),

      
    );
  }

  OutlineInputBorder _outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(19),
      borderSide:BorderSide.none,
      
    );
  }
}
