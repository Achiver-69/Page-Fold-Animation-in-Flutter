import 'package:animation_good_assignment/login_card.dart';
import 'package:animation_good_assignment/login_card_back.dart';
import 'package:animation_good_assignment/login_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flip Animation By Qamar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    var Size(:height, :width) = size;
    return Scaffold(
        body: LoginForm(
      height: height,
      width: width,
      loginCard: LoginCard(width: width, height: height),loginCardBack: LoginCardBackground(width: width, height: height)
    ));
  }
}
//this code is only for practice mode