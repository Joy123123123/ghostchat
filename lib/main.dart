import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'lib/screens/auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // We initialization inside try-catch to keep it crash-free before fully configuring Firebase
  try { await Firebase.initializeApp(); } catch (e) {}
  runApp(const GhostChatApp());
}

class GhostChatApp extends StatelessWidget {
  const GhostChatApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GhostChat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff0d0e15),
        primaryColor: const Color(0xff6c5ce7),
      ),
      home: const AuthScreen(),
    );
  }
}
