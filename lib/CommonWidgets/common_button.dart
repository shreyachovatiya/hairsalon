import 'package:flutter/material.dart';

class CommonButton extends StatefulWidget {
  const CommonButton(
      {Key? key, this.text, required this.onpress, this.height, this.width})
      : super(key: key);

  final text;
  final onpress;
  final height;
  final width;

  @override
  State<CommonButton> createState() => _CommonButtonState();
}

class _CommonButtonState extends State<CommonButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onpress,
      height: widget.height,
      minWidth: widget.width,
      color: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 0,
      child: widget.text,
    );
  }
}
