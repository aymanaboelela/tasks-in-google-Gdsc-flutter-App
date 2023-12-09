import 'package:flutter/material.dart';

import 'view/singin_screen.dart';
import 'view/widgets/splach_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SingInScreen()
      //  SplachScreen(),

    );
  }
}
