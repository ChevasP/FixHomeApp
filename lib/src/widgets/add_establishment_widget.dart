import 'package:flutter/material.dart';

class AddEstablishmentWidget extends StatelessWidget {
  GlobalKey<FormState> keyForm = GlobalKey();
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController descriptionCtrl = TextEditingController();
  TextEditingController identificationCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  TextEditingController repeatPassCtrl = TextEditingController();
  AddEstablishmentWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Añadir Establecimiento'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(60.0),
            child: Form(
              key: keyForm,
              child: formUser(),
            ),
          ),
        ),
      ),
    );
  }

  formItemsDesign(icon, item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Card(child: ListTile(leading: Icon(icon), title: item)),
    );
  }

  Widget formUser() {
    return Column(
      children: <Widget>[
        formItemsDesign(
            Icons.business,
            TextFormField(
              controller: nameCtrl,
              decoration: const InputDecoration(
                labelText: 'Nombre',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            Icons.receipt,
            TextFormField(
              controller: descriptionCtrl,
              decoration: const InputDecoration(
                labelText: 'Descripción',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            Icons.person,
            TextFormField(
              controller: identificationCtrl,
              decoration: const InputDecoration(
                labelText: 'Dueño',
              ),
              validator: validateName,
            )),
        formItemsDesign(
            Icons.date_range,
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Telefono',
              ),
              keyboardType: TextInputType.phone,
              maxLength: 10,
              validator: validateIndentification,
            )),
        formItemsDesign(
            Icons.email,
            TextFormField(
              controller: descriptionCtrl,
              decoration: new InputDecoration(
                labelText: 'Calificación de 1 a 5',
              ),
              keyboardType: TextInputType.number,
              maxLength: 1,
              validator: qualification,
            )),
        GestureDetector(
            onTap: () {
              save();
            },
            child: Container(
              margin: const EdgeInsets.all(30.0),
              alignment: Alignment.center,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                gradient: LinearGradient(colors: [
                  Color(0xFF0EDED2),
                  Color(0xFF03A0FE),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Text("Guardar",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500)),
              padding: EdgeInsets.only(top: 16, bottom: 16),
            ))
      ],
    );
  }

  String? validateName(String? value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = RegExp(pattern);
    if (value!.length == 0) {
      return "El nombre es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "El nombre debe de ser a-z y A-Z";
    }
    return null;
  }

  String? validateIndentification(String? value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = RegExp(patttern);
    if (value!.length == 0) {
      return "La cedula  es necesaria";
    }
    return null;
  }

  String? validateEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value!.length == 0) {
      return "El correo es necesario";
    } else if (!regExp.hasMatch(value)) {
      return "Correo invalido";
    } else {
      return null;
    }
  }

  String? validatePassword(String? value) {
    print("valorrr $value passsword ${passwordCtrl.text}");
    if (value != passwordCtrl.text) {
      return "Las contraseñas no coinciden";
    }
    return null;
  }

  void save() {
    if (keyForm.currentState!.validate()) {
      print("Nombre ${nameCtrl.text}");
      print("Cedula ${identificationCtrl.text}");
      print("Correo ${descriptionCtrl.text}");
      keyForm.currentState!.reset();
    }
  }

  String? qualification(String? value) {
    var val1 = int.parse(value!);
    if (val1 > 5 && val1 < 1) {
      return "La calificación va de 1 a 5";
    } else {
      return null;
    }
  }
}
