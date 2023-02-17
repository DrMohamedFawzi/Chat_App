import 'package:chat_to_chat/constantsString.dart';
import 'package:chat_to_chat/route_app.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChatToChat(routesApp: RoutesApp(),));
}

class ChatToChat extends StatelessWidget {

  RoutesApp routesApp ;

  ChatToChat({required this.routesApp , super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: ConstantsStrings.kWelcomeScreen,
     onGenerateRoute: routesApp.generateRoute,
    );
  }
}
