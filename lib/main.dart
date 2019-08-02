import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

/** The " => " can be used if the function contains only 1 line
 *  this IS NOT A LAMBDA!!!!!!!!!
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
         // child: const Text('Hello World'),
        ),
      ),
    );
  }
}
