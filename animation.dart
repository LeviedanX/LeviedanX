import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Gabut',
      home: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          width: 100,
          height: 100,
          color: Colors.pink,
          child: const Text('Animation start'),
    ),
   ),
  );
 }
}

class PositionedAnimation extends StatefulWidget {
    const PositionedAnimation({required Key key}) : super(key: key);
    @override
    _PositionedAnimationState createState()
    => _PositionedAnimationState();
}

class _PositionedAnimationState
    extends State<PositionedAnimation> {
    @override
    Widget build(BuildContext context) {
        return const Stack(
            children: <Widget>[],
        );
    }
}