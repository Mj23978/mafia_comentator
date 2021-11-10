import 'package:flutter/material.dart';
import 'package:flutter_comentator/core/providers.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/helpers.dart';
import '../../widgets/role_grid_item.dart';


class PickRolesView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.watch(pickRolesProvider);
    return LayoutBuilder(builder: (context, cs) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'pick_players_count'.tr(namedArgs:
                    {"count": controller.players.length.toString()}),
            style: textStyle(context, 17, color: Colors.white),
          ),
          elevation: 0,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () => controller.openAddDialogue(),
          ),
        ),
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Color(0xffE6E6EC),
        body: Container(
          width: cs.maxWidth,
          height: cs.maxHeight,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/city.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            0, cs.maxHeight * 0.015, 0, cs.maxHeight * 0.015),
                        child: Center(
                          child:Text(
                              "pick_city_count".tr(namedArgs: {
                                    "count": controller
                                        .getCityRolesLength()
                                        .toString()
                                  }),
                              style: textStyle(context, 15, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return  RoleGridItem(
                              gradient: LinearGradient(
                                begin: Alignment(0.5, 0),
                                end: Alignment(0.5, 1.0),
                                colors: [
                                  const Color(0xcc70db70).withOpacity(0.75),
                                  const Color(0xc73aa819).withOpacity(0.75)
                                ],
                                stops: [0.0, 1.0],
                              ),
                              color: Colors.green.shade300,
                              textStyle: textStyle(context, 12,
                                  weight: FontWeight.w400, color: Colors.white),
                              onLongPress: () {
                                var desLen = controller
                                    .cRoles[index].description.length;
                                controller.roleDetailsDialogue(
                                  context,
                                  cs.maxWidth * 0.6,
                                  cs.maxHeight * (0.29 + (desLen * 0.001)),
                                  true,
                                  controller.cRoles[index],
                                );
                              },
                              index: index,
                              onChanged: (value) =>
                                  controller.selectCity(index, value),
                              value: controller.cRoles[index].selected,
                              text: controller.cRoles[index].name,
                            ).pSy(x: 12, y: 4);
                        },
                        childCount: controller.cRoles.length,
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 3.5,
                        mainAxisSpacing: 5.0,
                        crossAxisSpacing: 5.0,
                        crossAxisCount: gridTileCount(cs.maxWidth, 125.0),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical:  cs.maxHeight * 0.023),
                        child: Center(
                          child: Text(
                              "pick_mafia_count".tr(namedArgs: {
                                    "count": controller
                                        .getMafiaRolesLength()
                                        .toString()
                                  }),
                              style: textStyle(context, 15, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return RoleGridItem(
                              color: Colors.red,
                              gradient: LinearGradient(
                                begin: Alignment(0.5, 0.1),
                                end: Alignment(0.5, 0.9),
                                colors: [
                                  const Color(0xa8d04158).withOpacity(0.7),
                                  const Color(0x9ce13b6d).withOpacity(0.65)
                                ],
                                stops: [0.0, 1.0],
                              ),
                              textStyle: textStyle(context, 12,
                                  weight: FontWeight.w400, color: Colors.white),
                              onLongPress: () {
                                var desLen = controller
                                    .mRoles[index].description.length;
                                controller.roleDetailsDialogue(
                                  context,
                                  cs.maxWidth * 0.6,
                                  cs.maxHeight * (0.29 + (desLen * 0.001)),
                                  false,
                                  controller.mRoles[index],
                                );
                              },
                              index: index,
                              onChanged: (value) =>
                                  controller.selectMafia(index, value),
                              value: controller.mRoles[index].selected,
                              text: controller.mRoles[index].name,
                            ).pSy(x: 12, y: 4);
                        },
                        childCount: controller.mRoles.length,
                      ),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 3.5,
                        mainAxisSpacing: 5.0,
                        crossAxisSpacing: 5.0,
                        crossAxisCount: gridTileCount(cs.maxWidth, 125),
                      ),
                    ),
                    SliverToBoxAdapter(child: (cs.maxHeight * 0.15).heightBox)
                  ],
                ),
              ),
              Positioned(
                bottom: cs.maxHeight * 0.02,
                right: cs.maxWidth * 0.075,
                child: Container(
                  height: cs.maxHeight * 0.1,
                  width: cs.maxWidth * 0.85,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    child: Text("pick_show_roles".tr(),
                        style: textStyle(context, 16, color: Colors.white)),
                    onPressed: () {
                      var minHeight = (cs.maxHeight *
                              0.05 *
                              (controller.getCityRolesLength() +
                                  controller.getMafiaRolesLength())) +
                          (cs.maxHeight * 0.26);
                      controller.detailedRolesCount(
                        context,
                        cs.maxWidth * 0.78,
                        cs.maxHeight * 0.65 > minHeight
                            ? minHeight
                            : cs.maxHeight * 0.65,
                      );
                    },
                  ),
                ),
              ),
            ],
          ).pLTRB(0, cs.maxHeight * 0.085, 0, 0),
        ),
      );
    });
  }
}
