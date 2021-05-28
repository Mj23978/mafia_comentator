import 'package:dartx/dartx.dart';
import 'package:logger/logger.dart';

Logger? _logger;

Logger getLogger(String className) {
  return _logger ??
      (_logger = Logger(
        printer: SecondLogger(
          className: className,
        ),
      ));
}

class SecondLogger extends LogPrinter {
  final String className;

  SecondLogger({required this.className});

  @override
  List<String> log(LogEvent event) {
    final level = event.level;
    final color = PrettyPrinter.levelColors[level]!;
    final emoji = PrettyPrinter.levelEmojis[level];
    final divider = PrettyPrinter.doubleDivider;
    final middle = PrettyPrinter.middleCorner;
    final verticalLine = PrettyPrinter.verticalLine;
    int methodCount;
    if (level == Level.debug) {
      methodCount = 2;
    } else if (level == Level.error || level == Level.wtf) {
      methodCount = -1;
    } else if (level == Level.warning) {
      methodCount = 4;
    } else {
      methodCount = 1;
    }
    final res =
        PrettyPrinter().formatStackTrace(StackTrace.current, methodCount)!;
    final preLog = <String>[
      "$emoji  $className - ${event.message}",
    ];
    return [
      color(middle + divider * 25),
      ...preLog.map((v) => color("$verticalLine $v")),
      ...res.split("\n").drop(1).map((v) => "$verticalLine $v")
    ];
  }
}

// class PrettyLogger extends LogPrinter {
//   static const topLeftCorner = '┌';
//   static const bottomLeftCorner = '└';
//   static const middleCorner = '├';
//   static const verticalLine = '│';
//   static const doubleDivider = "─";
//   static const singleDivider = "┄";

//   static final levelColors = {
//     Level.verbose: AnsiColor.fg(AnsiColor.grey(0.5)),
//     Level.debug: AnsiColor.none(),
//     Level.info: AnsiColor.fg(12),
//     Level.warning: AnsiColor.fg(208),
//     Level.error: AnsiColor.fg(196),
//     Level.wtf: AnsiColor.fg(199),
//   };

//   @override
//   List<String> log(LogEvent event) {
//     var messageStr = stringifyMessage(event.message);

//     String stackTraceStr;
//     if (event.stackTrace == null) {
//       if (methodCount > 0) {
//         stackTraceStr = formatStackTrace(StackTrace.current, methodCount);
//       }
//     } else if (errorMethodCount > 0) {
//       stackTraceStr = formatStackTrace(event.stackTrace, errorMethodCount);
//     }

//     var errorStr = event.error?.toString();

//     String timeStr;
//     if (printTime) {
//       timeStr = getTime();
//     }

//     return _formatAndPrint(
//       event.level,
//       messageStr,
//       timeStr,
//       errorStr,
//       stackTraceStr,
//     );
//   }

//   static final levelEmojis = {
//     Level.verbose: '',
//     Level.debug: '🐛 ',
//     Level.info: '💡 ',
//     Level.warning: '⚠️ ',
//     Level.error: '⛔ ',
//     Level.wtf: '👾 ',
//   };

//   static final stackTraceRegex = RegExp(r'#[0-9]+[\s]+(.+) \(([^\s]+)\)');

//   static DateTime _startTime;

//   final int methodCount;
//   final int errorMethodCount;
//   final int lineLength;
//   final bool colors;
//   final bool printEmojis;
//   final bool printTime;

//   String _topBorder = '';
//   String _middleBorder = '';
//   String _bottomBorder = '';

//   PrettyLogger({
//     this.methodCount = 2,
//     this.errorMethodCount = 8,
//     this.lineLength = 120,
//     this.colors = true,
//     this.printEmojis = true,
//     this.printTime = false,
//   }) {
//     _startTime ??= DateTime.now();

//     var doubleDividerLine = StringBuffer();
//     var singleDividerLine = StringBuffer();
//     for (int i = 0; i < lineLength - 1; i++) {
//       doubleDividerLine.write(doubleDivider);
//       singleDividerLine.write(singleDivider);
//     }

//     _topBorder = "$topLeftCorner$doubleDividerLine";
//     _middleBorder = "$middleCorner$singleDividerLine";
//     _bottomBorder = "$bottomLeftCorner$doubleDividerLine";
//   }

//   String formatStackTrace(StackTrace stackTrace, int methodCount) {
//     var lines = stackTrace.toString().split("\n");

//     var formatted = <String>[];
//     var count = 0;
//     for (var line in lines) {
//       var match = stackTraceRegex.matchAsPrefix(line);
//       if (match != null) {
//         if (match.group(2).startsWith('package:logger')) {
//           continue;
//         }
//         var newLine = "#$count   ${match.group(1)} (${match.group(2)})";
//         formatted.add(newLine.replaceAll('<anonymous closure>', '()'));
//         if (++count == methodCount) {
//           break;
//         }
//       } else {
//         formatted.add(line);
//       }
//     }

//     if (formatted.isEmpty) {
//       return null;
//     } else {
//       return formatted.join('\n');
//     }
//   }

//   String getTime() {
//     String _threeDigits(int n) {
//       if (n >= 100) return "$n";
//       if (n >= 10) return "0$n";
//       return "00$n";
//     }

//     String _twoDigits(int n) {
//       if (n >= 10) return "$n";
//       return "0$n";
//     }

//     var now = DateTime.now();
//     String h = _twoDigits(now.hour);
//     String min = _twoDigits(now.minute);
//     String sec = _twoDigits(now.second);
//     String ms = _threeDigits(now.millisecond);
//     var timeSinceStart = now.difference(_startTime).toString();
//     return "$h:$min:$sec.$ms (+$timeSinceStart)";
//   }

//   String stringifyMessage(dynamic message) {
//     if (message is Map || message is Iterable) {
//       var encoder = JsonEncoder.withIndent('  ');
//       return encoder.convert(message);
//     } else {
//       return message.toString();
//     }
//   }

//   AnsiColor _getLevelColor(Level level) {
//     if (colors) {
//       return levelColors[level];
//     } else {
//       return AnsiColor.none();
//     }
//   }

//   AnsiColor _getErrorColor(Level level) {
//     if (colors) {
//       if (level == Level.wtf) {
//         return levelColors[Level.wtf].toBg();
//       } else {
//         return levelColors[Level.error].toBg();
//       }
//     } else {
//       return AnsiColor.none();
//     }
//   }

//   String _getEmoji(Level level) {
//     if (printEmojis) {
//       return levelEmojis[level];
//     } else {
//       return "";
//     }
//   }

//   List<String> _formatAndPrint(
//     Level level,
//     String message,
//     String time,
//     String error,
//     String stacktrace,
//   ) {
//     List<String> buffer = [];
//     var color = _getLevelColor(level);
//     buffer.add(color(_topBorder));

//     if (error != null) {
//       var errorColor = _getErrorColor(level);
//       for (var line in error.split('\n')) {
//         buffer.add(
//           color('$verticalLine ') +
//               errorColor.resetForeground +
//               errorColor(line) +
//               errorColor.resetBackground,
//         );
//       }
//       buffer.add(color(_middleBorder));
//     }

//     if (stacktrace != null) {
//       for (var line in stacktrace.split('\n')) {
//         buffer.add('$color$verticalLine $line');
//       }
//       buffer.add(color(_middleBorder));
//     }

//     if (time != null) {
//       buffer..add(color('$verticalLine $time'))..add(color(_middleBorder));
//     }

//     var emoji = _getEmoji(level);
//     for (var line in message.split('\n')) {
//       buffer.add(color('$verticalLine $emoji$line'));
//     }
//     buffer.add(color(_bottomBorder));

//     return buffer;
//   }
// }
