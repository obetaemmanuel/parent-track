import 'package:flutter/material.dart';
import 'package:parent_ward/pages/signup/login_signup.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



void main() {
  runApp(
    ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Parent-Kid Monitoring App',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const LoginOrSignUpView(),
      ),
    ),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }

