import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonTextfield extends StatefulWidget {
  const CommonTextfield({
    Key? key,
    this.hint,
    this.prifixicon,
    this.controller,
  }) : super(key: key);
  final hint;
  final prifixicon;
  final controller;

  @override
  State<CommonTextfield> createState() => _CommonTextfieldState();
}

class _CommonTextfieldState extends State<CommonTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.next,
      controller: widget.controller,
      decoration: InputDecoration(
        // contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        prefixIcon: widget.prifixicon,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.black)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
        hintText: widget.hint,
        hintStyle: TextStyle(fontSize: 15),
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
