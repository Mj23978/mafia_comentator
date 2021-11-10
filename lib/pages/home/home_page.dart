import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/providers.dart';
import '../../utils/helpers.dart';
import '../../widgets/home_listTile.dart';
import '../../widgets/home_textfield.dart';

class HomeView extends ConsumerWidget {
  HomeView(this.cs, {Key? key}) : super(key: key);

  final BoxConstraints cs;

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.watch(mafiaIntroProvider);
    return IconTheme(
      data: IconThemeData(color: Color(0xff222333)),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: ListView.builder(
              padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: cs.maxHeight * 0.21),
              itemBuilder: (_, int index) {
                return HomeListTile(
                  delete: () => controller.deletePlayer(index),
                  onCheck: (value) => controller.selectPlayer(index, value),
                  text: Text(
                    controller.players[index].name,
                    style: textStyle(context, 15),
                  ),
                  value: controller.players[index].selected,
                ).pSy(y: cs.maxHeight * 0.01, x: cs.maxWidth * 0.015);
              },
              itemCount: controller.players.length,
            ),
          ),
          Positioned.fill(
            child: Column(
              verticalDirection: VerticalDirection.up,
              children: [
                Row(
                  children: [
                    (cs.maxWidth * 0.015).widthBox,
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      width: cs.maxWidth * 0.75,
                      decoration: BoxDecoration(
                        color: Color(0xff222333),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: HomeTextField(
                        controller: controller.textEditingController,
                        submit: (value) => controller.handleSubmit(context, value),
                        iconColor: Colors.white,
                      ),
                    ),
                  ],
                ),
                // InkWell(
                //   onTap: () {
                //     controller.goNextPage(context);
                //   },
                //   child: Container(
                //     decoration: BoxDecoration(
                //       color: Color(0xff3D79BE),
                //     ),
                //     child: Row(
                //       children: <Widget>[
                //         Flexible(
                //           child: Center(
                //             child: Text(
                //               "home_pick_button".tr(namedArgs: {
                //                 "count": controller
                //                     .getSelectedPlayersLength()
                //                     .toString()
                //               }),
                //               style: textStyle(context, 16,
                //                   weight: FontWeight.w500, color: Colors.white),
                //             ),
                //           ),
                //         ),
                //         Container(
                //           margin: const EdgeInsets.symmetric(horizontal: 8.0),
                //           child: IconButton(
                //             icon: Icon(
                //               Icons.send_outlined,
                //               color: Colors.white,
                //             ),
                //             onPressed: () => controller.goNextPage(context),
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
                // (cs.maxHeight * 0.12).heightBox,
                (65).heightBox,
              ].reversed.toList(),
            ),
          )
        ],
      ),
    );
  }
}
