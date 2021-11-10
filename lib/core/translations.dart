import 'package:flutter/cupertino.dart';

import '../config/localization/language/en.dart';
import '../config/localization/language/fa.dart';

class AppStrings extends ChangeNotifier {
  @override
  Map<String, Map<String, String>> get keys => {
    "en_US": enKeys,
    "fa_IR": faKeys,
  };

}