import 'mafia_engine.dart';
import 'roles.dart';

class Player {
  String name;
  bool selected;
  bool roleShowed;
  bool alive;
  Map<String, int> votes;
  String? roleName;
  List<StageAction> takingAction;
  Role? role;

  Player({
    required this.name,
    required this.takingAction,
    this.selected = false,
    this.roleShowed = false,
    this.alive = true,
    this.votes = const <String, int>{},
    this.roleName,
    this.role,
  });
}

