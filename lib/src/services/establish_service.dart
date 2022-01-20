import 'package:fixhome_ready/src/models/establishment_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EstablecimientoService {
  EstablecimientoService();

  Future<List<Establish>?> getEstablishment() async {
    List<Establish> result = [];
    try {
      var url = Uri.parse('https://fixhome-278cf.web.app/api/establishment');
      var response = await http.get(url);
      if (response.body.isEmpty) return result;
      List<dynamic> listBody = json.decode(response.body);
      for (var item in listBody) {
        var establecimiento = Establish.fromJson(item);
        result.add(establecimiento);
      }
      return result;
    } catch (ex) {
      // ignore: avoid_print
      print(ex);
      return null;
    }
  }
}
