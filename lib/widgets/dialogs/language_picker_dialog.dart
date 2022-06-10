import 'package:flutter/material.dart';
import 'package:flutter_uix/flutter_uix.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../config/localization/language.dart';
import '../../utils/helpers.dart';

class LanguagePickerDialog extends StatefulWidget {
  final ValueChanged<Language> onValuePicked;
  final String? semanticLabel;
  final bool isSearchable;
  final Color? searchCursorColor;
  final List<Language>? languages;
  final double height;
  final double width;

  LanguagePickerDialog({
    Key? key,
    required this.height,
    required this.width,
    required this.onValuePicked,
    this.semanticLabel,
    this.isSearchable = true,
    this.searchCursorColor,
    this.languages,
  }) : super(key: key);

  @override
  SingleChoiceDialogState createState() {
    return new SingleChoiceDialogState();
  }
}

class SingleChoiceDialogState extends State<LanguagePickerDialog> {
  late List<Language> _allLanguages;
  late List<Language> _filteredLanguages;

  @override
  void initState() {
    _allLanguages = widget.languages ?? Languages.defaultLanguages;
    _filteredLanguages = _allLanguages;
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
        hint: "Language Picker",
        label: "Language Picker",
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
                    "language_picker_title".tr(),
                    style: textStyle(context, 15, color: Colors.white),
                  ),
                ).pLTRB(0, 2, 0, 4),
                if (widget.isSearchable)
                  TextField(
                    cursorColor: widget.searchCursorColor,
                    decoration: InputDecoration(
                      hintText: " " + 'language_picker_field'.tr(),
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
                          _filteredLanguages = _allLanguages
                              .where((Language language) =>
                                  language.name
                                      .toLowerCase()
                                      .startsWith(value.toLowerCase()) ||
                                  language.isoCode
                                      .toLowerCase()
                                      .startsWith(value.toLowerCase()))
                              .toList();
                        },
                      );
                    },
                  ).pSy(y: 4),
                _buildContent(context),
                // if (actions != null) {
                //   ButtonBar(
                //     children: actions!,
                //   ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildContent(BuildContext context) {
    return _filteredLanguages.isNotEmpty
        ? ListView(
            shrinkWrap: true,
            children: _filteredLanguages
                .map(
                  (item) => SimpleDialogOption(
                    child: Text(item.name),
                    onPressed: () {
                      widget.onValuePicked(item);
                    },
                  ),
                )
                .toList(),
          ).pLTRB(0, 4, 0, 0)
        : Center(
            child: Text(
              'no_language_found'.tr(),
              style: textStyle(context, 15, color: Colors.white),
            ),
          ).pLTRB(0, 8, 0, 0);
  }
}
