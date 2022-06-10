import 'package:beamer/beamer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../core/notifiers/app_provider.dart';
import '../../models/player/player.dart';
import '../../utils/helpers.dart';
import '../../widgets/dialogs/done_show_role_dialog.dart';
import '../../widgets/dialogs/role_details_dialog.dart';
import '../engine/roles.dart';

class ShowRolesProvider extends ChangeNotifier {

  ShowRolesProvider(this.appProvider);
  final AppProvider appProvider;

  var players = <Player>[];
  var roles = <String>[];

  void showPlayerRoleDialogue(
      BuildContext context, double width, double hieght, Player player) async {
    final side = cityRoles.any((element) => element.name == player.roleName);
    final role = side
        ? cityRoles.firstWhere((element) => element.name == player.roleName)
        : mafiaRoles.firstWhere((element) => element.name == player.roleName);
    var desLen = role.description.length;
    await baseFlash(
      context,
      (controller) => RoleDetails(
        dismiss: () {
          controller.dismiss();
        },
        height: hieght * (1 + (desLen * 0.004)),
        width: width,
        roleDes: role.description,
        roleName: role.name,
        roleSide: side ? "city".tr() : "mafia".tr(),
        color: side ? Colors.green : Colors.red,
      ),
      boxShadows: <BoxShadow>[],
    );
    if (players.every((e) => e.roleShowed == true)) {
      _doneDialogue(context, width * 1.1, hieght * 1.4);
    }
  }

  Future<void> _doneDialogue(
      BuildContext context, double width, double height) async {
    await baseFlash(
      context,
      (controller) => DoneShowRolesDialog(
        height: height,
        width: width,
        goComentatorPage: () {
          controller.dismiss();
          var resPlayers = players.map((e) {
            final side = cityRoles.any((element) => element.name == e.roleName);
            final role = side
                ? cityRoles.firstWhere((element) => element.name == e.roleName)
                : mafiaRoles
                    .firstWhere((element) => element.name == e.roleName);
            return e.copyWith(role: role);
          }).toList();
          appProvider.setPlayers(resPlayers);
          context.beamToNamed("/mafia/game", data: {
            "game_players": resPlayers,
          });
        },
        refreshRoles: () {
          controller.dismiss();
          refreshRoles();
        },
      ),
      boxShadows: <BoxShadow>[],
    );
  }

  void setRoles(List<String> input) {
    roles = input;
    notifyListeners();
  }

  void setPlayers(List<Player> input) {
    players = input;
    notifyListeners();
  }

  void setPlayerIndex(int index, Player input) {
    players[index] = input;
    notifyListeners();
  }

  refreshRoles() {
    roles.shuffle();
    for (var i = 0; i < roles.length; i++) {
      var player = players[i];
      players[i] = player.copyWith(roleName: roles[i], roleShowed: false);
    }
    notifyListeners();
  }

  int getShowedPlayers() {
    return players.where((element) => !element.roleShowed).length;
  }
}
