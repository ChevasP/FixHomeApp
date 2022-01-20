import 'package:fixhome_ready/src/models/establishment_model.dart';
import 'package:flutter/material.dart';

class EstablecimientoCard extends StatelessWidget {
  const EstablecimientoCard({Key? key, required this.model}) : super(key: key);
  final Establish model;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7.0,
      child: ListTile(
        title: Text(model.name ?? ""),
        subtitle: Text(model.description ?? ""),
        trailing: Text(model.quealification.toString()),
      ),
    );
  }
}
