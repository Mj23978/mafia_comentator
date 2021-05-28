import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';

class HomeTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextStyle hintTextStyle;
  final TextStyle textStyle;
  final Function1<String, void> submit;
  final FocusNode? focusNode;
  final Color iconColor;

  const HomeTextField({
    Key? key,
    required this.controller,
    required this.submit,
    this.hintTextStyle = const TextStyle(),
    this.textStyle = const TextStyle(),
    this.iconColor = Colors.white,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: ' Please Input Player Name',
                hintStyle: hintTextStyle,
              ),
              style: textStyle,
              textCapitalization: TextCapitalization.words,
              controller: controller,
              onSubmitted: submit,
              focusNode: focusNode,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              icon: Icon(
                Icons.add,
                color: iconColor,
              ),
              onPressed: () => submit(controller.text),
            ),
          )
        ],
      ),
    );
  }
}
