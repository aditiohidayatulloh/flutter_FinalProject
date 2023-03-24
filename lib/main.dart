import 'package:final_project/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(400, 800),
      builder: ((context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Kalkulator IMT',
          theme: ThemeData(
            primaryColor: const Color.fromRGBO(4, 116, 237, 1),
          ),
          home: const HomeScreen(),
        );
      }),
    );
  }
}
