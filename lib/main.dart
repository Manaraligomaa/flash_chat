import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/screens/chat.dart';
import 'package:flash_chat/screens/login.dart';
import 'package:flash_chat/screens/registration.dart';
import 'package:flash_chat/screens/welcome.dart';
import 'package:flutter/material.dart';

//import 'firebase_options.dart';
//void main() async{
 // Firebase.initializeApp();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
 runApp(FlashChat());}


class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
