import 'package:chat_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xFFFEF9EB),
        fontFamily: 'Montserrat',
      ),
      home: HomeScreen(),
    );
  }
}
