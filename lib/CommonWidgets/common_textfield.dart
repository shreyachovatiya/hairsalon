import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextfield extends StatefulWidget {
  const CommonTextfield({
    Key? key,
    this.hint,
    this.suffixicon,
    this.controller,
  }) : super(key: key);
  final hint;
  final suffixicon;
  final controller;

  @override
  State<CommonTextfield> createState() => _CommonTextfieldState();
}

class _CommonTextfieldState extends State<CommonTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 5, left: 10),
        suffixIcon: widget.suffixicon,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        hintText: widget.hint,
        fillColor: Colors.grey.shade200,
        filled: true,
        constraints: BoxConstraints.expand(
          height: 70.h,
          width: 388.w,
        ),
      ),
    );
  }
}
