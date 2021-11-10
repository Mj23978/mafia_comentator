import 'package:flutter/cupertino.dart';
// import 'package:hive/hive.dart';

// import '../../../utils/keys.dart';

class AddRoleProvider extends ChangeNotifier {
  FocusNode textFocusNode = FocusNode();
  final roleNameTextEditing = TextEditingController();
  final roleDesTextEditing = TextEditingController();

  void submitRoleName() {}

  void submitRoleDescription() {}
}
