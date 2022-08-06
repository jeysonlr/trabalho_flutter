import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:project_app/api/constants.dart';
import 'package:project_app/models/teams.dart';

class Api {
  Future<List<Teams>?> getTeams() async {
    try {
      var url = Uri.parse(ApiConstants.url);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<Teams> teams = teamModelFromJson(response.body);
        return teams;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
    return null;
  }
}
