import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import 'app_provider.dart';
import 'logger.dart';

final ProviderFamily<Logger, String> logger = Provider.family<Logger, String>((ref, scopeName) {
  return getLogger(scopeName);
});

final appProvider = Provider<AppProvider>((ref) => AppProvider());