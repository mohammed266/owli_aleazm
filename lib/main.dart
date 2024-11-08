import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utils/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return  MaterialApp.router(
      theme: ThemeData(
        fontFamily: GoogleFonts.montserratTextTheme.toString(),
      ),
      routerConfig:AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}

