import 'package:dartx/dartx.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter_comentator/core/notifiers/app_provider.dart';
import '../../widgets/role_number_details.dart';

import '../../models/player/player.dart';
import '../../models/role/role.dart';
import '../../utils/helpers.dart';
import '../../widgets/dialogs/role_details_dialog.dart';
import '../../widgets/show_snackbar.dart';
import '../engine/roles.dart';

class PickRolesProvider extends ChangeNotifier {
  PickRolesProvider(this.appProvider) {
    players = appProvider.players;
  }
  final AppProvider appProvider;

  late List<Player> players;
  var selectedRoles = <Role>[];
  var cRoles = [...cityRoles];
  var mRoles = [...mafiaRoles];

  int getMafiaRolesLength() {
    return mRoles.where((element) => element.selected == true).toList().length;
  }

  int getCityRolesLength() {
    return cRoles.where((element) => element.selected == true).toList().length;
  }

  void selectCity(int index, bool? value) {
    cRoles[index] = cRoles[index].copyWith(selected: value ?? false);
    notifyListeners();
  }

  void selectMafia(int index, bool? value) {
    mRoles[index] = mRoles[index].copyWith(selected: value ?? false);
    notifyListeners();
  }

  void openAddDialogue() {
    // Get.toNamed("add-role");
  }

  void roleDetailsDialogue(
      BuildContext context, double width, double height, bool side, Role role) {
    baseFlash(
      context,
      (controller) => RoleDetails(
        dismiss: () {
          controller.dismiss();
        },
        height: height,
        roleDes: role.description,
        roleName: role.name,
        roleSide: side ? "city".tr() : "mafia".tr(),
        width: width,
        color: side ? Colors.green : Colors.red,
      ),
      boxShadows: <BoxShadow>[],
    );
  }

  void detailedRolesCount(BuildContext context, double width, double height) {
    final numRoles = getCityRolesLength() + getMafiaRolesLength();
    if (numRoles > players.length) {
      showAppSnackbar(
        context,
        Colors.red,
        Text(
          "role_count_warning".tr(namedArgs: {
            "role_count": numRoles.toString(),
            "player_count": players.length.toString(),
          }),
          style: textStyle(context, 15,
              weight: FontWeight.w400, color: Colors.white),
        ),
      );
    } else {
      selectedRoles = [];

      selectedRoles.addAll(cRoles
          .where((element) => element.selected == true)
          .toList()
          .map<Role>((e) => e.copyWith(count: 1)));

      selectedRoles.addAll(mRoles
          .where((element) => element.selected == true)
          .toList()
          .map<Role>((e) => e.copyWith(count: 1)));

      print(selectedRoles.map((e) => e.name));
      baseFlash(
        context,
        (controller) => RoleNumberDetails(
          // textStyle: tex,
          dismiss: () {
            controller.dismiss();
          },
          height: height,
          width: width,
          playersCount: players.length,
          submitRoles: () {
            var selectedCount =
                selectedRoles.fold<int>(0, (pv, e) => pv + (e.count));
            if (selectedCount != players.length) {
              showAppSnackbar(
                  context,
                  Colors.red,
                  Text(
                    "role_count_warning".tr(namedArgs: {
                      "role_count": numRoles.toString(),
                      "player_count": players.length.toString(),
                    }),
                    style: textStyle(context, 15,
                        weight: FontWeight.w400, color: Colors.white),
                  ),
                  3.0.seconds);
            } else {
              // Check Fairness
              List<String> roles = [];
              selectedRoles.forEach((element) {
                for (var i = 0; i < element.count; i++) {
                  roles.add(element.name);
                }
              });
              roles.shuffle();
              final List<Player> resPlayers = [];
              for (var i = 0; i < players.length; i++) {
                var res = players[i];
                resPlayers.add(res.copyWith(roleName: roles[i]));
              }
              controller.dismiss();
              appProvider.setPlayers(resPlayers);
              appProvider.setRoles(roles);
              context.beamToNamed("/mafia/show-roles", data: {
                "show_players": resPlayers,
                "show_roles": roles,
              });
            }
            notifyListeners();
          },
          selectedRoles: selectedRoles,
        ),
        dismissHorizental: true,
        boxShadows: <BoxShadow>[],
      ); // Get.dialog();
    }
  }
}
