import 'package:flutter/material.dart';
import 'package:log_in/ui/providers/logIn_provider.dart';
import 'package:provider/provider.dart';
import 'ui/view/screens/logInPage.dart';
import 'ui/view/screens/homePage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<LogInProvider>(
          create: (_) => LogInProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: const MyLoginPage(),
    );
  }
}
