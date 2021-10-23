import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first_proj/screens/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen()
      // AnimatedSplashScreen(
      //   splash:Icons.home,
      //   nextScreen: LoginScreen(),
      //    splashIconSize: 300,
      //   splashTransition: SplashTransition.fadeTransition,
      //     pageTransitionType: PageTransitionType.scale,
      //     backgroundColor: Colors.orange,
      //     duration: 400,
      //   ),
    );
  }
}

