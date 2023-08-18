import 'package:flutter/material.dart';
import 'currency_converter_material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
//const means you do not need to rebuild every time
//now key is a class that helps flutter identify and differentiate
  /// between widget by passing a key
  /// key is used in updating the widget tree and all that stuff
  /// two type of design material as well as cupertino
  /// material key has alot of things like router navigator each and every thing
  /// theme hower over material app to see the further details ,localaization,map
  /// internalization scaffold is for the basic layout structure on every screen
  /// while material app is justt like the whole app design how app would like
  /// // home is the first widget in material
  //design to be displayed in appp
  // we also have text align in all direction
//text also does not have full control over
//all screen so it cannot move independently
// //wrap text with center to move in screen
//when ever there will be material than there wil be home
  /// when ever there will be scaffold than trher will be body and any other widget
  /// will have child root from M to C
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyMatpage(),
    );
  }
}
