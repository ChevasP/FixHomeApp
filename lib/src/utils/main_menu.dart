import 'package:fixhome_ready/src/widgets/add_establishment_widget.dart';
import 'package:fixhome_ready/src/widgets/services_home_widget.dart';
import 'package:fixhome_ready/src/widgets/settings_widget.dart';
import 'package:flutter/material.dart';

class ItemMenu {
  String title;
  IconData icon;
  ItemMenu(this.icon, this.title);
}

List<ItemMenu> menuOptions = [
  ItemMenu(Icons.home, "Inicio"),
  ItemMenu(Icons.add_business_sharp, "Agregar"),
  ItemMenu(Icons.settings, "Ajustes"),
];

class ServiceMenu {
  String title;
  String image;
  ServiceMenu(this.image, this.title);
}

List<ServiceMenu> servicios = [
  ServiceMenu("assets/images/carpinteria.PNG", "CARPINTERIA"),
  ServiceMenu("assets/images/albañil.PNG", "ALBAÑILERIA"),
  ServiceMenu("assets/images/cerrajeria.PNG", "CERRAJERIA"),
  ServiceMenu("assets/images/electricidad.PNG", "ELECTRICIDAD"),
  ServiceMenu("assets/images/jardineria.PNG", "JARDINERIA"),
  ServiceMenu(
      "assets/images/electrodomestico.png", "REPARACION ELECTRODOMESTICOS"),
];

List<Widget> homeWidgets = [
  const HomePageWidget(),
  AddEstablishmentWidget(),
  const SettingsWidget()
];
