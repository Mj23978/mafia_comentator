import 'package:flutter/material.dart';

class HerosCard {
  final String backgroundImage;
  final String characterName;
  final Color? color;

  HerosCard({
    required this.backgroundImage,
    required this.characterName,
    this.color,
  });
}

enum EventType { bloody, normal }

class EventCard {
  final String eventName;
  final String eventDescription;
  final List<String> eventAttentions;
  final EventType eventType;
  final int minimumAvailablePlayers;
  final Color? color;

  EventCard({
    required this.eventName,
    required this.eventDescription,
    required this.eventType,
    required this.eventAttentions,
    required this.minimumAvailablePlayers,
    this.color,
  });
}

List<HerosCard> lastStationHeros = <HerosCard>[
  HerosCard(
      backgroundImage: "assets/images/heros/ablah.jpg", characterName: "ablah"),
  HerosCard(
      backgroundImage: "assets/images/heros/dana.jpg", characterName: "dana"),
  HerosCard(
      backgroundImage: "assets/images/heros/deshne.jpg",
      characterName: "deshne"),
  HerosCard(
      backgroundImage: "assets/images/heros/gholchomagh.jpg",
      characterName: "gholchomagh"),
  HerosCard(
      backgroundImage: "assets/images/heros/khalasi.jpg",
      characterName: "khalasi"),
  HerosCard(
      backgroundImage: "assets/images/heros/makare.jpg",
      characterName: "makare"),
  HerosCard(
      backgroundImage: "assets/images/heros/marmoz.jpg",
      characterName: "marmoz"),
  HerosCard(
      backgroundImage: "assets/images/heros/mokhber.jpg",
      characterName: "mokhber"),
  HerosCard(
      backgroundImage: "assets/images/heros/motamed.jpg",
      characterName: "motamed"),
  HerosCard(
      backgroundImage: "assets/images/heros/namir.jpg", characterName: "namir"),
  HerosCard(
      backgroundImage: "assets/images/heros/ozbak.jpg", characterName: "ozbak"),
  HerosCard(
      backgroundImage: "assets/images/heros/pir.jpg", characterName: "pir"),
  HerosCard(
      backgroundImage: "assets/images/heros/rend.jpg", characterName: "rend"),
  HerosCard(
      backgroundImage: "assets/images/heros/saket.jpg", characterName: "saket"),
  HerosCard(
      backgroundImage: "assets/images/heros/shokaran.jpg",
      characterName: "shokaran"),
  HerosCard(
      backgroundImage: "assets/images/heros/tabib.jpg", characterName: "tabib"),
];

List<HerosCard> mafiaHeros = <HerosCard>[
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Alchemist.jpg",
      characterName: "alchemist_name", color: Color(0xFF106E0D)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Armor Man.jpg",
      characterName: "armor_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Bomber.jpg",
      characterName: "bomber_name",
      color: Color(0xFF106E0D)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Bully.jpg",
      characterName: "bully_name",
      color: Color(0xFF106E0D)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Carer.jpg",
      characterName: "carer_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Civilian.jpg",
      characterName: "citizen_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Colonel.jpg",
      characterName: "colonel_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Cowboy.jpg",
      characterName: "cowboy_name", color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Doctor.jpg",
      characterName: "doctor_name", color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Duelist.jpg",
      characterName: "duelist_name", color: Color(0xFF106E0D)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Gangester.jpg",
      characterName: "gangester_name",
      color: Color(0xFF106E0D)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/godfather.jpg",
      characterName: "godfather_name",
      color: Color(0xFF106E0D)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Gunsmith.jpg",
      characterName: "gunsmith_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Inspecter.jpg",
      characterName: "inspecter_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Judah.jpg",
      characterName: "judah_name",
      color: Color(0xFF106E0D)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Messiah.jpg",
      characterName: "messiah_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Nurse.jpg",
      characterName: "nurse_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Priest.jpg",
      characterName: "priest_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Private Detective.jpg",
      characterName: "private_detective_name",
      color: Color(0xFF106E0D)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Prosecutor.jpg",
      characterName: "prosecutor_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Psychiatrist.jpg",
      characterName: "psychiatrist_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Santa.jpg",
      characterName: "santa_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Shadow.jpg",
      characterName: "shadow_name",
      color: Color(0xFF106E0D)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Sniper.jpg",
      characterName: "sniper_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Snow Man.jpg",
      characterName: "snow_man_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Soldier.jpg",
      characterName: "soldier_name",
      color: Color(0xFF421065)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Terrorist.jpg",
      characterName: "terrorist_name",
      color: Color(0xFF106E0D)),
  HerosCard(
      backgroundImage: "assets/images/mafia_heros/Witch.jpg",
      characterName: "witch_name",
      color: Color(0xFF106E0D)),
];

List<EventCard> lastStationEvents = <EventCard>[
  EventCard(
    eventName: "here_we_go",
    eventAttentions: [
      "attention_1",
    ],
    eventDescription: "here_we_go_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.green,
  ),
  EventCard(
    eventName: "best_shot",
    eventAttentions: [],
    eventDescription: "best_shot_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "interrogation",
    eventAttentions: [],
    eventDescription: "interrogation_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "mercenary!",
    eventAttentions: [],
    eventDescription: "mercenary_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "unequal_fight",
    eventAttentions: [],
    eventDescription: "unequal_fight_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "supper",
    eventAttentions: [],
    eventDescription: "supper_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "normal_condition",
    eventAttentions: [],
    eventDescription: "normal_condition_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "high_alert",
    eventAttentions: [],
    eventDescription: "high_alert_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "intellegince",
    eventAttentions: [],
    eventDescription: "intellegince_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "last_drink",
    eventAttentions: [],
    eventDescription: "last_drink_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "high_stakes",
    eventAttentions: [],
    eventDescription: "high_stakes_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "sacrifice",
    eventAttentions: [],
    eventDescription: "sacrifice_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "suspicious",
    eventAttentions: [],
    eventDescription: "suspicious_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "stupid_mistake",
    eventAttentions: [],
    eventDescription: "stupid_mistake_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "the_3_unfortunates",
    eventAttentions: [],
    eventDescription: "the_3_unfortunates_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "and_there_we_go",
    eventAttentions: [],
    eventDescription: "and_there_we_go_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
  EventCard(
    eventName: "angel",
    eventAttentions: [],
    eventDescription: "angel_des",
    eventType: EventType.normal,
    minimumAvailablePlayers: 0,
    color: Colors.red,
  ),
];
