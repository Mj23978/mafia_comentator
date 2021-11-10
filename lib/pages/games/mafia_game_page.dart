import 'package:beamer/beamer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../config/mock/heros.dart';
import '../../core/notifiers/mafia_intro_provider.dart';
import '../../core/providers.dart';
import '../../utils/helpers.dart';
import '../../widgets/beam_back_button.dart';
import '../home/home_page.dart';

class MafiaView extends ConsumerWidget {
  Widget _pages(MafiaIntroProvider controller, BoxConstraints cs) {
    final pages = [
      _MafiaDetailsView(cs),
      HomeView(cs),
    ];
    print(controller.selectedBN);
    return pages[controller.selectedBN];
  }

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.watch(mafiaIntroProvider);
    return LayoutBuilder(builder: (context, cs) {
      return WillPopScope(
        onWillPop: () async {
          return true;
        },
        child: Scaffold(
          appBar: AppBar(
            leading: BeamBackButton(),
            title: Text(
              controller.selectedBN == 0 ? "mafia".tr() : "players_list".tr(),
              style: textStyle(context, 16, color: controller.selectedBN == 1 ? Color(0xff222333) : Colors.white),
            ),
            elevation: 0,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            actions: [
              if (controller.selectedBN == 1)
                Checkbox(
                  tristate: true,
                  onChanged: (value) => controller.selectAll(),
                  value: controller.players.length == 0
                      ? null
                      : controller.allSelected,
                  side: BorderSide(width: 2, color: Color(0xff222333)),
                  activeColor: Color(0xff3D79BE),
                ),
              (cs.maxWidth * 0.02).widthBox,
            ],
            centerTitle: true,
            iconTheme: IconThemeData(color: controller.selectedBN == 1 ? Color(0xff222333) : Colors.white),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller.goNextPage(context);
            },
            backgroundColor: Color(0xff222333),
            child: Icon(Icons.play_arrow),
            foregroundColor: Colors.amberAccent,
            elevation: 0,
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 2,
            clipBehavior: Clip.hardEdge,
            child: BottomNavigationBar(
              onTap: (index) {
                controller.changePage(index);
              },
              backgroundColor: Colors.red,
              currentIndex: controller.selectedBN,
              elevation: 0,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedIconTheme: IconThemeData(color: Colors.black),
              unselectedIconTheme: IconThemeData(color: Colors.white),
              selectedLabelStyle: textStyle(context, 12),
              unselectedLabelStyle: textStyle(context, 12),
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.alarm),
                  label: "Game",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_sharp),
                  label: "Players",
                ),
              ],
            ),
          ),
          backgroundColor: Color(0xffE6E6EC),
          extendBodyBehindAppBar: controller.selectedBN == 1 ? false : true,
          extendBody: true,
          body: _pages(controller, cs),
        ),
      );
    });
  }
}

class _MafiaDetailsView extends StatelessWidget {
  const _MafiaDetailsView(
    this.cs, {
    Key? key,
  }) : super(key: key);

  final BoxConstraints cs;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/mafia-bg-portrait.jpg"),
                  alignment: Alignment.center,
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned.fill(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                (cs.maxHeight * 0.2).heightBox,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: cs.maxHeight * 0.3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 1,
                              color: Colors.black38,
                              offset: Offset(-2, 2)),
                          BoxShadow(
                              blurRadius: 1,
                              spreadRadius: 0.5,
                              color: Colors.black38,
                              offset: Offset(1, 1)),
                        ],
                      ),
                      child: AspectRatio(
                        aspectRatio: 0.7,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: ShaderMask(
                                  shaderCallback: (Rect bounds) {
                                    return LinearGradient(
                                      colors: <Color>[
                                        Colors.grey.shade500,
                                        Colors.grey.shade600,
                                        // Colors.white,
                                      ],
                                      tileMode: TileMode.clamp,
                                    ).createShader(bounds);
                                  },
                                  child: Column(
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: Row(
                                          children: [10, 2].map<Widget>((e) {
                                            return Container(
                                              height: cs.maxHeight * 0.15,
                                              width: cs.maxHeight * 0.15 * 0.7,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      mafiaHeros[e]
                                                          .backgroundImage),
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Row(
                                          children: [3, 8].map<Widget>((e) {
                                            return Container(
                                              height: cs.maxHeight * 0.15,
                                              width: cs.maxHeight * 0.15 * 0.7,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      mafiaHeros[e]
                                                          .backgroundImage),
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    // Get.to(() => MafiaHerosView());
                                    context.beamToNamed(
                                      "/mafia/heros",
                                      beamBackOnPop: true,
                                      popToNamed: "mafia",
                                      popBeamLocationOnPop: true,
                                      stacked: true,
                                      replaceCurrent: true,
                                    );
                                  },
                                  child: Align(
                                    alignment: Alignment(0, 0.8),
                                    child: Text("charachters".tr(),
                                        style: textStyle(context, 14,
                                            color: Colors.white)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: cs.maxHeight * 0.3,
                      child: AspectRatio(
                        aspectRatio: 0.7,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: ShaderMask(
                                shaderCallback: (Rect bounds) {
                                  return LinearGradient(
                                    colors: <Color>[
                                      Colors.grey.shade200,
                                      Colors.grey.shade300,
                                      // Colors.white,
                                    ],
                                    tileMode: TileMode.clamp,
                                  ).createShader(bounds);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/mafia_rules_bg.jpg"),
                                      fit: BoxFit.cover,
                                      alignment: Alignment(0.0, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Material(
                                    color: Colors.transparent,
                                    child: InkWell(),
                                  ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment(0, 0.8),
                                child: Text("rules".tr(),
                                    style: textStyle(context, 14,
                                        color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ).pSy(y: cs.maxWidth * 0.04),
          ),
        ),
      ],
    );
  }
}
