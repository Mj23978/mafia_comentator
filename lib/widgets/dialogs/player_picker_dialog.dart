import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../models/player/player.dart';
import '../../utils/helpers.dart';

class PlayerPickerDialog extends StatefulWidget {
  final ValueChanged<String> onValuePicked;
  final String? semanticLabel;
  final bool isSearchable;
  final Color? searchCursorColor;
  final List<Player> players;
  final List<String> restOptions;
  final double height;
  final double width;

  PlayerPickerDialog({
    Key? key,
    required this.height,
    required this.width,
    required this.onValuePicked,
    required this.players,
    required this.restOptions,
    this.isSearchable = true,
    this.semanticLabel,
    this.searchCursorColor,
  }) : super(key: key);

  @override
  SingleChoiceDialogState createState() {
    return new SingleChoiceDialogState();
  }
}

class SingleChoiceDialogState extends State<PlayerPickerDialog> {
  late List<Player> _allPlayers;
  late List<Player> _filteredPlayers;

  @override
  void initState() {
    _allPlayers = widget.players;
    _filteredPlayers = _allPlayers;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      padding: EdgeInsets.fromLTRB(widget.width * 0.08, widget.height * 0.05,
          widget.width * 0.08, widget.height * 0.05),
      decoration: BoxDecoration(
        color: Color(0xff222344),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Semantics(
        namesRoute: true,
        hint: "Player Picker",
        label: "Player Picker",
        child: DefaultTextStyle(
          style: textStyle(context, 14,
              weight: FontWeight.w400, color: Colors.white),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Text(
                    "player_picker_title".tr(),
                    style: textStyle(context, 15, color: Colors.white),
                  ),
                ).pLTRB(0, 2, 0, 4),
                if (widget.isSearchable)
                  TextField(
                    cursorColor: widget.searchCursorColor,
                    decoration: InputDecoration(
                      hintText: " " + 'search'.tr(),
                      hintStyle: textStyle(
                        context,
                        15,
                        color: Colors.white,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    ),
                    style: textStyle(context, 14, color: Colors.white),
                    onChanged: (String value) {
                      setState(
                        () {
                          _filteredPlayers = _allPlayers
                              .where((Player player) =>
                                  player.name
                                      .toLowerCase()
                                      .startsWith(value.toLowerCase()) ||
                                  player.roleName!
                                      .toLowerCase()
                                      .startsWith(value.toLowerCase()))
                              .toList();
                        },
                      );
                    },
                  ).pSy(y: 4),
                _buildContent(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildContent(BuildContext context) {
    return _filteredPlayers.isNotEmpty || widget.restOptions.isNotEmpty
        ? ListView(
            shrinkWrap: true,
            children: [
              ..._filteredPlayers
                  .map<Widget>(
                    (item) => SimpleDialogOption(
                      child: Text("${item.roleName}(${item.name})"),
                      onPressed: () {
                        widget.onValuePicked(item.name);
                      },
                    ),
                  )
                  .toList(),
              ...widget.restOptions.map<Widget>(
                (item) => SimpleDialogOption(
                  child: Text(item),
                  onPressed: () {
                    widget.onValuePicked(item);
                  },
                ),
              )
            ],
          ).pLTRB(0, 4, 0, 0)
        : Center(
            child: Text(
              'no_player_found'.tr(),
              style: textStyle(context, 15, color: Colors.white),
            ),
          ).pLTRB(0, 8, 0, 0);
  }
}
