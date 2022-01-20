import 'package:flutter/material.dart';
import 'package:phone_number_screen/presentation/phone_number_screen/phone_number_screen.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PhoneNumberScreen(),
    );
  }
}
