import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;

import '../models/exhibit_model/exhibit_model.dart';


abstract class ExhibitsLoader {

  Future<List<ExhibitModel>> getExhibitList();

}


class RestExhibitsLoader implements ExhibitsLoader{

  @override
  Future<List<ExhibitModel>> getExhibitList() async {
    final url = Uri.parse("https://my-json-server.typicode.com/Reyst/exhibit_db/list");
    final response = await http.get(url);

    if(response.statusCode == 200){
      final List<dynamic> exhibitJson = json.decode(response.body);
      return exhibitJson.map((json) => ExhibitModel.fromJson(json)).toList();
    }else {
      throw Exception('Error fetching exhibit');
    }
  }

}