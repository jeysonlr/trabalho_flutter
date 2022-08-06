import 'package:flutter/material.dart';
import 'package:project_app/api/constants.dart';
import 'package:project_app/models/teams.dart';

class DetailsTeam extends StatelessWidget {
  final Teams teams;

  const DetailsTeam({
    required this.teams, 
    Key? key
    }) : super(key: key);

  @override
  Widget build(BuildContext context, {required}) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 100.0,
        title: Text(teams.name),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body:
        Center(
          child: Column(children: <Widget>[
            Padding(padding: const EdgeInsets.all(10)),
            Text(
              'Bandeira ' + teams.name,
              style: TextStyle(
                fontSize: 25, 
                letterSpacing: 5, 
                decoration: TextDecoration.underline
              ),
            ),
            Padding(padding: const EdgeInsets.all(25)),
            Image.network(
              width: 150,
                '${ApiConstants.urlImg}${teams.flag.replaceFirst('~', '')}'
              ),
      ])),
    );
  }
}
