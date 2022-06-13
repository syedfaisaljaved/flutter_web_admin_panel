import 'package:flutter/material.dart';
import 'package:flutter_web_ui/ui/base_screen.dart';
import 'package:flutter_web_ui/util/color_utils.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        canvasColor: secondaryColor,
        scaffoldBackgroundColor: accentColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: colorWhite),
      ),
      home: const BaseScreen(),
    );
  }
}
