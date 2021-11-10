import 'dart:convert';

import 'package:beamer/beamer.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../models/player/player.dart';
import '../../utils/helpers.dart';
import '../../utils/keys.dart';
import '../../widgets/show_snackbar.dart';
import 'app_provider.dart';

class MafiaIntroProvider extends ChangeNotifier {
  
  MafiaIntroProvider(this.appProvider);
  final AppProvider appProvider;

  var selectedBN = 0;
  var playerBox = Hive.box(DBKeys.home_players);
  final TextEditingController textEditingController = TextEditingController();
  final FocusNode textFocusNode = FocusNode();
  var allSelected = false;
  var players = Hive.box(DBKeys.home_players)
      .values
      .cast<String>()
      .map<Player>((e) => Player.fromJson(json.decode(e)))
      .toList();


  void changePage(int index) {
    selectedBN = index;
    notifyListeners();
  }

  int getSelectedPlayersLength() {
    return players.where((element) => element.selected == true).toList().length;
  }

  void toggleAllSelect() {
    if (allSelected != players.every((element) => element.selected == true)) {
      allSelected = !allSelected;
      notifyListeners();
    }
  }

  void handleSubmit(BuildContext context, String text) {
    if (playerBox.values
        .map<Player>((e) => Player.fromJson(json.decode(e)))
        .any((e) => e.name == text)) {
      showAppSnackbar(
        context,
        Colors.red,
        Text(
          "player_exists".tr(namedArgs: {"name": text}),
          style: textStyle(context, 15, color: Colors.white),
        ),
      );
      return;
    }
    textEditingController.clear();

    if (text.length == 0 || text == '') {
      return;
    }

    Player player = Player(name: text, selected: false, takingAction: []);
    playerBox.add(json.encode(player.toJson()));
    players.add(player);

    notifyListeners();
    toggleAllSelect();
  }

  void selectPlayer(int index, bool? value) {
    players[index] = players[index].copyWith(selected: value ?? false);
    notifyListeners();
    toggleAllSelect();
  }

  void deletePlayer(int index) {
    players.removeAt(index);
    playerBox.deleteAt(index);
    notifyListeners();
    toggleAllSelect();
  }

  void selectAll() {
    allSelected = !allSelected;
    players = players.map<Player>((e) {
      return e.copyWith(selected: allSelected);
    }).toList();
    notifyListeners();
  }

  goNextPage(BuildContext context) {
    if (getSelectedPlayersLength() >= 5) {
      context.beamToNamed('/mafia/pick-roles');
      appProvider.setPlayers(players);
    } else {
      showAppSnackbar(
        context,
        Colors.red,
        Text(
          "least_player_count"
              .tr(namedArgs: {"count": getSelectedPlayersLength().toString()}),
          style: textStyle(
            context,
            13,
            color: Colors.white,
            weight: FontWeight.w400,
          ),
        ),
      );
    }
  }

}