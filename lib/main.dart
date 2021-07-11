import 'package:flash_chat/screens/movie_details.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/screens/movies_screen.dart';
import 'screens/seats_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
     //home: SeatsScreen(),
      initialRoute:  WelcomeScreen.id,
    routes: {
        WelcomeScreen.id:(context)=> WelcomeScreen(),
        RegistrationScreen.id:(context)=> RegistrationScreen(),
        LoginScreen.id:(context)=> LoginScreen(),
        MovieScreen2.id:(context)=> MovieScreen2(),
        MovieDetails.id:(context)=> MovieDetails(1),
        SeatsScreen.id:(context)=>SeatsScreen(),
      },
    );
  }
}
