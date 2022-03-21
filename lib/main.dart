import 'package:flutter/material.dart';
import 'package:flutter_native_text_input/flutter_native_text_input.dart';
import 'package:native_text_field_demo/bottombar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyChatScreen(),
    );
  }
}

class MyChatScreen extends StatefulWidget {
  const MyChatScreen({Key? key}) : super(key: key);

  @override
  State<MyChatScreen> createState() => _MyChatScreenState();
}

class _MyChatScreenState extends State<MyChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
          children: const [
            Expanded(
              child: Text(
                'DEMO',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            BottomBar(),
          ],
        ),
      ),
    );
  }
}
