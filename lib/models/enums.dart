enum GuessType { Role, Side }

enum ChangeType { Resault, Direction }

enum Who { Himself, Target, Counter, All, HisTeam }

enum Cost {
  Die,
  RoleBlock,
  Nothing,
}

enum CostOn { Him, All, None, Target }

enum RoleEnum {
  Lecter,
  Doctor,
  Hero,
  Guardian,
  Angel,
  Armor,
  Priest,
  Citizen,
  Mafia,
  Devoted,
  Journalist,
  Negotiator,
  Mason,
  Nato,
  Hacker,
  Detective, 
  Framer,
  Lawer,
  Nexsus,
  StrongMan,
  GodFather,
  Sniper,
  RoleBlocker,
  ProfessionalKiller,
  Psycho,
  Cowboy,
  Silncer,
  Soldier,
  Nurse,
  Deputy,
  GunSmith,
  Terrorist,
  Mistress,
  Bomber,
  All,
  City,
  MafiaSide,
  None,
  Himself,
  ExceptHimself,
  New,
  PickedPlayer
}

enum MafiaWakesGroup { Main, Side, Alone }

enum RoleSide { City, Mafia, All, None }

enum Stage { Day, Vote, Night, All, BeforeVote, AfterVote, None }

enum Action {
  Killing,
  Silnce,
  Disable,
  VotingOut,
  RoleBlock,
  Talking,
  Voting,
  Die,
  GuessedWrong,
  HisAction,
  Everything,
  Nothing,
}

enum AbilityType {
  Save,
  RoleBlock,
  Kill,
  Activation,
  Change,
  Recrute,
  Guess,
  Counter,
  Disable,
  Reserve,
  Give,
  All,
  Nothing
}
