
import 'roles_card.dart';

class GameHistoryInfo {
  final RoleCardInfo playerRole;
  final List<RoleCardInfo> allRoles;
  final String? kind;
  final Duration gameTime;
  final int gameDayStages;
  final int gameNightStages;
  final DateTime whenEnded;
  final bool win;

  GameHistoryInfo({
    required this.playerRole,
    required this.allRoles,
    required this.gameTime,
    required this.gameDayStages,
    required this.gameNightStages,
    required this.whenEnded,
    required this.win,
    this.kind,
  });
}

List<GameHistoryInfo> mockGameHistory = <GameHistoryInfo>[
  GameHistoryInfo(playerRole: rolesCard[0], allRoles: rolesCard, gameTime: Duration(hours: 1, minutes: 23), gameDayStages: 3, gameNightStages: 2, whenEnded: DateTime.now().subtract(Duration(days: 2)), win: true),
  GameHistoryInfo(playerRole: rolesCard[0], allRoles: rolesCard, gameTime: Duration(hours: 1, minutes: 23), gameDayStages: 3, gameNightStages: 2, whenEnded: DateTime.now().subtract(Duration(days: 2)), win: true),
  GameHistoryInfo(playerRole: rolesCard[0], allRoles: rolesCard, gameTime: Duration(hours: 1, minutes: 23), gameDayStages: 3, gameNightStages: 2, whenEnded: DateTime.now().subtract(Duration(days: 2)), win: true),
];
