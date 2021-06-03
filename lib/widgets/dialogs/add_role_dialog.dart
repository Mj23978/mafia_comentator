import 'package:dartx/dartx.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';

void addRoleDialoge(
    BuildContext context,
    double width,
    double height,
    TextEditingController roleTextEditingController,
    Function1<String, void> handleSubmitRoleName) {
  showFlash(
    context: context,
    builder: (context, controller) {
      return Flash.dialog(
        controller: controller,
        enableDrag: true,
        // backgroundColor: backgroundColor,
        brightness: Brightness.light,
        boxShadows: [BoxShadow(blurRadius: 4)],
        barrierBlur: 3.0,
        barrierColor: Colors.black38,
        barrierDismissible: true,
        child: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
            child: Column(
              children: [
                Flexible(
                  flex: 2,
                  child: Row(
                    children: [
                      Spacer(),
                      Flexible(
                        flex: 3,
                        child: AddCheckBox(
                            name: "City", value: false, onSubmit: (v) {}),
                      ),
                      Spacer(),
                      Flexible(
                        flex: 3,
                        child: AddCheckBox(
                            name: "Mafia", value: false, onSubmit: (v) {}),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
                8.0.heightBox,
                Divider(
                  indent: width * 0.05,
                  endIndent: width * 0.05,
                  color: Colors.black,
                ),
                12.0.heightBox,
                Flexible(
                  flex: 2,
                  child: Container(
                    width: width * 0.7,
                    padding:
                        EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Role Name',
                        // border: UnderlineInputBorder(),
                      ),
                      textCapitalization: TextCapitalization.words,
                      controller: roleTextEditingController,
                      onSubmitted: handleSubmitRoleName,
                    ),
                  ),
                ),
                12.0.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Flexible(
                        flex: 5,
                        child: "Night Action"
                            .text
                            .size(15)
                            .weight(FontWeight.w600)
                            .make()),
                    Spacer(
                      flex: 3,
                    ),
                    Flexible(
                      flex: 2,
                      child: Checkbox(
                        value: false,
                        onChanged: (value) {
                          print(value);
                        },
                        side: BorderSide(width: 2, color: Colors.black),
                        activeColor: Colors.redAccent,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                if (true) 8.0.heightBox,
                // Column(
                //   children: [
                Flexible(
                  flex: 2,
                  child: Wrap(
                    direction: Axis.vertical,
                    children: [
                      // AddCheckBox(name: "Heal", value: false, onSubmit: (v) {}),
                      // AddCheckBox(name: "Kill", value: false, onSubmit: (v) {}),
                      // AddCheckBox(name: "Reserve", value: false, onSubmit: (v) {}),
                      // AddCheckBox(name: "Convert", value: false, onSubmit: (v) {}),
                      // AddCheckBox(name: "Convert", value: false, onSubmit: (v) {}),
                    ],
                  ),
                ),
                // ],
                // ),
                12.0.heightBox,
                Spacer(),
                Flexible(
                  flex: 2,
                  child: Container(
                    width: width * 0.7,
                    padding:
                        EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Description',
                        // border: UnderlineInputBorder(),
                      ),
                      textCapitalization: TextCapitalization.words,
                      controller: roleTextEditingController,
                      onSubmitted: handleSubmitRoleName,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

class AddCheckBox extends StatelessWidget {
  final bool value;
  final String name;
  final Function1<bool?, void> onSubmit;

  const AddCheckBox({
    Key? key,
    required this.value,
    required this.name,
    required this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onSubmit,
          side: BorderSide(width: 2, color: Colors.black),
          activeColor: Colors.redAccent,
        ),
        5.0.widthBox,
        name.text.size(15).weight(FontWeight.w600).make(),
      ],
    );
  }
}
