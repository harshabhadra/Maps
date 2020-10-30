import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text(
                'Maps Launcher Demo',
              ),
            ),
            body: Center(
              child: RaisedButton(
                onPressed: () => MapsLauncher.launchCoordinates(
                    37.4220041, -122.0862462, 'Google Headquarters are here'),
                child: Text('LAUNCH MAP'),
              ),
            )));
  }
}
