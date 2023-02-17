

import 'package:chat_to_chat/constantsString.dart';
import 'package:chat_to_chat/screens/chat_screen.dart';
import 'package:chat_to_chat/screens/login_screen.dart';
import 'package:chat_to_chat/screens/registration_screen.dart';
import 'package:chat_to_chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class RoutesApp {

  Route generateRoute(RouteSettings settings){
    switch(settings.name){
      case ConstantsStrings.kWelcomeScreen:
        return MaterialPageRoute(builder: (context) => WelcomeScreen());
      case ConstantsStrings.kLoginScreen:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case ConstantsStrings.kRegisterScreen:
        return MaterialPageRoute(builder: (context) => RegistrationScreen());
      case ConstantsStrings.kChatScreen:
        return MaterialPageRoute(builder: (context) => ChatScreen());
    }
    return MaterialPageRoute(builder: (context) => WelcomeScreen());
  }

}