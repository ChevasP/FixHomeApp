import 'package:fixhome_ready/src/models/establishment_model.dart';
import 'package:flutter/material.dart';

class establishDetailsContentWidget extends StatelessWidget {
  const establishDetailsContentWidget({Key? key, required this.establish})
      : super(key: key);
  final Establish establish;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        ListTile(
          leading: const Icon(Icons.business_sharp),
          title: const Text("Establecimiento"),
          subtitle: Text(establish.name ?? ""),
        ),
        ListTile(
          leading: const Icon(Icons.comment),
          title: const Text("Descripción"),
          subtitle: Text(establish.description ?? ""),
        ),
        ListTile(
          leading: const Icon(Icons.comment),
          title: const Text("Registrado"),
          subtitle: Text(establish.quealification.toString()),
        ),
        ListTile(
            leading: const Icon(Icons.comment),
            title: const Text("Categoria"),
            subtitle: establish.tipo == 0
                ? const Text("Carpinteria")
                : establish.tipo == 1
                    ? const Text("Albañileria")
                    : establish.tipo == 2
                        ? const Text("Cerrajeria")
                        : establish.tipo == 3
                            ? const Text("Electricidad")
                            : establish.tipo == 4
                                ? const Text("Jardineria")
                                : const Text("Cerrajeria")),
      ]),
    );
  }
}
