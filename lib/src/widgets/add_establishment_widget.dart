import 'package:flutter/material.dart';

class AddEstablishmentWidget extends StatefulWidget {
  AddEstablishmentWidget({Key? key}) : super(key: key);

  @override
  _AddEstablishmentWidgetState createState() => _AddEstablishmentWidgetState();
}

class _AddEstablishmentWidgetState extends State<AddEstablishmentWidget> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.0),
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                    width: 2.0, color: Theme.of(context).primaryColorDark)),
            child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 14.0, horizontal: 7.0),
                  child: Column(children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 7.0),
                        child: Text("Ingresar la imagen ",
                            style: Theme.of(context).textTheme.subtitle1)),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: []),
                    TextFormField(
                        keyboardType: TextInputType.text,
                        decoration:
                            const InputDecoration(labelText: "Establecimiento"),
                        maxLength: 150,
                        maxLines: 4),
                    TextFormField(
                        keyboardType: TextInputType.text,
                        decoration:
                            const InputDecoration(labelText: "Descripcion"),
                        maxLength: 150,
                        maxLines: 4),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            labelText: "Calificacion del 1 al 5"),
                        maxLength: 1),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration:
                          const InputDecoration(labelText: "Nombre del Dueño"),
                      maxLength: 50,
                    ),
                    TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            labelText: "Número de Contacto del dueño: "),
                        maxLength: 150,
                        maxLines: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          label: const Text("Guardar"),
                          icon: const Icon(Icons.save)),
                    )
                  ]),
                )),
          ),
        ],
      ),
    );
  }
}
