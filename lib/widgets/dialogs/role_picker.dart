import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../models/enums.dart';
import '../../utils/helpers.dart';

class RolePickerDialog extends StatefulWidget {
  final ValueChanged<RoleEnum> onValuePicked;
  final String? semanticLabel;
  final bool isSearchable;
  final List<RoleEnum> roles;
  final double height;
  final double width;

  RolePickerDialog({
    Key? key,
    required this.height,
    required this.width,
    required this.onValuePicked,
    required this.roles,
    this.isSearchable = true,
    this.semanticLabel,
  }) : super(key: key);

  @override
  SingleChoiceDialogState createState() {
    return new SingleChoiceDialogState();
  }
}

class SingleChoiceDialogState extends State<RolePickerDialog> {
  late List<RoleEnum> _allRoles;
  late List<RoleEnum> _filteredRoles;

  @override
  void initState() {
    _allRoles = widget.roles;
    _filteredRoles = _allRoles;
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
        hint: "Role Picker",
        label: "Role Picker",
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
                    "role_picker_title".tr(),
                    style: textStyle(context, 15, color: Colors.white),
                  ),
                ).pLTRB(0, 2, 0, 4),
                if (widget.isSearchable)
                  TextField(
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
                          _filteredRoles = _allRoles
                              .where((RoleEnum role) => role
                                  .toString()
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
    return _filteredRoles.isNotEmpty
        ? ListView(
            shrinkWrap: true,
            children: [
              ..._filteredRoles
                  .map<Widget>(
                    (item) => SimpleDialogOption(
                      child: Text("$item"),
                      onPressed: () {
                        widget.onValuePicked(item);
                      },
                    ),
                  )
                  .toList(),
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
