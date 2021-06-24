import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  //Fixed Portrait Mode
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  //View Routing
  runApp(
    MaterialApp(
      initialRoute: '/home',
      routes: {},
    ),
  );
}
