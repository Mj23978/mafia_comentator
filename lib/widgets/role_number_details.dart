import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_x/flutter_x.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/roles.dart';

class RoleNumberDetails extends StatelessWidget {
  final double height;
  final double width;
  final int playersCount;
  final Rx<List<Role>> selectedRoles;
  final Function0<void> submitRoles;
  final Function0<void> dismiss;

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
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white
      ),
      child: SingleChildScrollView(
        child: Obx(
          () => Column(
            children: [
              4.0.heightBox,
              // "Players Count : ${players.value.length}"
              Text("Players Count : $playersCount",
                  style: GoogleFonts.rubik(
                      fontSize: 16, fontWeight: FontWeight.w500)),
              8.0.heightBox,
              ...selectedRoles.value.map(
                (e) => Container(
                  width: width,
                  child: [
                    Flexible(
                      child: Container(
                          width: width * 0.35,
                          child: Text("${e.name}",
                              style: GoogleFonts.rubik(
                                  fontSize: 12, fontWeight: FontWeight.w500))),
                    ),
                    Flexible(
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              print("Increment ${e.name}");
                              var index = selectedRoles.value.indexWhere(
                                  (element) => element.name == e.name);
                              var resSelected = selectedRoles.value[index];
                              resSelected.count += 1;
                              selectedRoles.value[index] = resSelected;
                              selectedRoles.update((val) {});
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
                            style: GoogleFonts.rubik(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                          (width * 0.05).widthBox,
                          InkWell(
                            onTap: () {
                              print("Decrement ${e.name}");
                              var index = selectedRoles.value.indexWhere(
                                  (element) => element.name == e.name);
                              if ((selectedRoles.value[index].count) > 1) {
                                var resSelected = selectedRoles.value[index];
                                resSelected.count -= 1;
                                selectedRoles.value[index] = resSelected;
                              }
                              selectedRoles.update((val) {});
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
                          "Submit Roles",
                          style: GoogleFonts.rubik(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
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
                          "Dismiss",
                          style: GoogleFonts.rubik(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
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
      ),
    );
  }
}
