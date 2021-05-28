import 'package:flutter/material.dart';

class RoleCardInfo {
  final String backgroundImage;
  final String sideIcon;
  final String characterIcon;
  final String characterSvg;
  final String characterName;
  final String? sideIconLabel;
  final String? characterIconLabel;
  final String? characterSvgLabel;
  final Color color;

  RoleCardInfo({
    required this.backgroundImage,
    required this.sideIcon,
    required this.characterIcon,
    required this.characterSvg,
    required this.characterName,
    required this.color,
    this.sideIconLabel,
    this.characterIconLabel,
    this.characterSvgLabel,
  });
}

List<RoleCardInfo> rolesCard = <RoleCardInfo>[
  RoleCardInfo(backgroundImage: "assets/city-back.jpg", sideIcon: "assets/icons/mafia-side-icon.svg", characterIcon: "assets/icons/mafia-icon.svg", characterSvg: "assets/icons/mafia.svg", characterName: "Mafia", color: Colors.red),
  RoleCardInfo(backgroundImage: "assets/city-back.jpg", sideIcon: "assets/icons/mafia-side-icon.svg", characterIcon: "assets/icons/don-icon.svg", characterSvg: "assets/icons/don.svg", characterName: "Don", color: Colors.red),
  RoleCardInfo(backgroundImage: "assets/city-back.jpg", sideIcon: "assets/icons/city-icon.svg", characterIcon: "assets/icons/citizen-icon.svg", characterSvg: "assets/icons/citizen.svg", characterName: "Citizen", color: Colors.blue),
  RoleCardInfo(backgroundImage: "assets/city-back.jpg", sideIcon: "assets/icons/city-icon.svg", characterIcon: "assets/icons/doctor-icon.svg", characterSvg: "assets/icons/doctor.svg", characterName: "Doctor", color: Colors.blue),
  RoleCardInfo(backgroundImage: "assets/city-back.jpg", sideIcon: "assets/icons/mafia-side-icon.svg", characterIcon: "assets/icons/don-icon.svg", characterSvg: "assets/icons/don.svg", characterName: "Don", color: Colors.red),
  RoleCardInfo(backgroundImage: "assets/city-back.jpg", sideIcon: "assets/icons/city-icon.svg", characterIcon: "assets/icons/doctor-icon.svg", characterSvg: "assets/icons/doctor.svg", characterName: "Doctor", color: Colors.blue),
];