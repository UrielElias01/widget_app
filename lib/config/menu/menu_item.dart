import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTiltle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTiltle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTiltle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTiltle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.add_card_rounded)
];
