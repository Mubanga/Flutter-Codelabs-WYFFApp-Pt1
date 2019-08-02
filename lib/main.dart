import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

/** The " => " can be used if the function contains only 1 line
 *  this IS NOT A LAMBDA!!!!!!!!!
 */
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: Center(
          child: RandomWords()
          //child: Text(wordPair.asPascalCase),
         // child: const Text('Hello World'),
        ),
      ),
    );
  }
}

class RandomWordState extends State<RandomWords>
{
  /**
   *  Creating And Returning A New Text Widget With State
   */
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }

}

class RandomWords extends StatefulWidget {

  @override
  RandomWordState createState() => RandomWordState();

}



