import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:easy_localization/easy_localization.dart';

import '../models/role/role.dart';
import '../utils/helpers.dart';

class RoleNumberDetails extends StatelessWidget {
  final double height;
  final double width;
  final int playersCount;
  final List<Role> selectedRoles;
  final void Function() submitRoles;
  final void Function() dismiss;

  const RoleNumberDetails({
    Key? key,
    required this.height,
    required this.width,
    required this.playersCount,
    required this.selectedRoles,
    required this.submitRoles,
    required this.dismiss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0), color: Colors.white),
      child: SingleChildScrollView(
        child: Column(
            children: [
              4.0.heightBox,
              // "Players Count : ${players.value.length}"
              Text(
                  "players_count"
                          .tr(namedArgs: {"count": playersCount.toString()}),
                  style: textStyle(context, 16)),
              8.0.heightBox,
              ...selectedRoles.map(
                (e) => Container(
                  width: width,
                  child: [
                    Flexible(
                      child: Container(
                          width: width * 0.35,
                          child:
                              Text("${e.name}", style: textStyle(context, 12))),
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              // var index = selectedRoles.value.indexWhere(
                              //     (element) => element.name == e.name);
                              // var resSelected = selectedRoles.value[index];
                              // selectedRoles.value[index] = resSelected.copyWith(
                              //     count: resSelected.count + 1);
                              // selectedRoles.update((val) {});
                            },
                            // onTap: increment,
                            child: Icon(
                              Icons.add,
                              size: width * 0.1,
                              color: Colors.black,
                            ),
                          ),
                          (width * 0.05).widthBox,
                          Text(
                            "${e.count}",
                            style: textStyle(context, 15),
                          ),
                          (width * 0.05).widthBox,
                          InkWell(
                            onTap: () {
                              // var index = selectedRoles.value.indexWhere(
                              //     (element) => element.name == e.name);
                              // if ((selectedRoles.value[index].count) > 1) {
                              //   var resSelected = selectedRoles.value[index];
                              //   selectedRoles.value[index] = resSelected
                              //       .copyWith(count: resSelected.count - 1);
                              // }
                              // selectedRoles.update((val) {});
                            },
                            // onTap: decrement,
                            child: Icon(
                              Icons.horizontal_rule_outlined,
                              size: width * 0.1,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]
                      .row(
                          axisSize: MainAxisSize.max,
                          crossAlignment: CrossAxisAlignment.center,
                          alignment: MainAxisAlignment.start)
                      .pSy(x: width * 0.08),
                ),
              ),
              Container(
                height: height * 0.04,
              ),
              Container(
                width: width * 0.8,
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
                          "submit_roles".tr(),
                          style: textStyle(context, 14, color: Colors.white),
                        ).pSy(x: 8.0, y: 4.0),
                      ),
                      onPressed: submitRoles,
                      // onPressed:
                    ),
                    TextButton(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          "dismiss".tr(),
                          style: textStyle(context, 14, color: Colors.white),
                        ).pSy(x: 8.0, y: 4.0),
                      ),
                      onPressed: dismiss,
                      // onPressed: () {
                      //   controller.dismiss();
                      // },
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
