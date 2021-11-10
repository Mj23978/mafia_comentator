import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../utils/helpers.dart';

class NoteDialog extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Function0<void> save;
  final Function0<void> delete;
  final Function0<void> dismiss;
  final TextEditingController textEditingController;

  NoteDialog({
    Key? key,
    required this.height,
    required this.width,
    required this.delete,
    required this.save,
    required this.textEditingController,
    required this.text,
    required this.dismiss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Color(0xff222344),
        // color: Colors.blue,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            (height * 0.01).heightBox,
            Text(
              "note".tr(),
              style: textStyle(
                context,
                16,
                color: Colors.white,
              ),
            ),
            (height * 0.01).heightBox,
            SizedBox(
              height: height * 0.57,
              width: width * 0.9,
              child: TextField(
                maxLines: null,
                minLines: null,
                decoration: InputDecoration(
                  hintText: "some_text".tr(),
                  hintStyle: textStyle(context, 15),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
                controller: textEditingController,
                autofocus: true,
                expands: true,
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.top,
                style: textStyle(context, 14, color: Colors.white),
              ),
            ),
            Container(
              width: width * 0.85,
              height: height * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "save".tr(),
                        style: textStyle(context, 14, color: Colors.white),
                      ).pSy(x: 8.0, y: 4.0),
                    ),
                    onPressed: save,
                    // onPressed:
                  ),
                  TextButton(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        "delete".tr(),
                        style: textStyle(context, 14, color: Colors.white),
                      ).pSy(x: 8.0, y: 4.0),
                    ),
                    onPressed: delete,
                    // onPressed:
                  ),
                  TextButton(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "exit".tr(),
                        style: textStyle(context, 14, color: Colors.white),
                      ).pSy(x: 8.0, y: 4.0),
                    ),
                    onPressed: dismiss,
                  ),
                ],
              ),
            ),
            Container(
              height: height * 0.03,
            ),
          ],
        ).pSy(x: 20.0, y: 10.0),
      ),
    );
  }
}
