import 'package:flutter/material.dart';
import 'package:number_trivia/features/trivia/presentation/pages/number_trivia_page.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Trivia',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        accentColor: Colors.blueAccent.shade400,
      ),
      home: NumberTriviaPage(),
    );
  }
}
