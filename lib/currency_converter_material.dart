// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CurrencyMatpage extends StatefulWidget {
  const CurrencyMatpage({super.key});
  @override
  CurrencyMatPageState createState() {
    return CurrencyMatPageState();
  }
}

class CurrencyMatPageState extends State<CurrencyMatpage> {
  double result = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black),
      borderRadius: BorderRadius.all(
        Radius.circular(100),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Currency converter'),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(228, 221, 223, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                  hintText: 'Input amount in pkr',
                  hintStyle: TextStyle(color: Color.fromARGB(59, 22, 80, 207)),
                  prefixIcon: Icon(Icons.monetization_on),
                  filled: true,
                  fillColor: Colors.white70,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                result = double.parse(textEditingController.text) / 3;
                setState(() {});
              },
              style: const ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                backgroundColor:
                    MaterialStatePropertyAll(Colors.deepPurpleAccent),
                fixedSize: MaterialStatePropertyAll(Size(100, 30)),
                elevation: MaterialStatePropertyAll(15),
              ),
              child: const Text('Convert'),
            ),
          ],
        ),
      ),
    );
  }
}
// class CurrencyMatPagee extends StatelessWidget {
//   const CurrencyMatPagee({super.key});

// //button is used to trigger action fill forms,validate and navigate screens
//   @override
//   Widget build(BuildContext context) {
//     double result = 0;
//     final TextEditingController textEditingController = TextEditingController();
//     final border = const OutlineInputBorder(
//       borderSide: BorderSide(color: Colors.black),
//       borderRadius: BorderRadius.all(
//         Radius.circular(100),
//       ),
//     );
//     return Scaffold(
//       //there is also a widget known as action through which i can use icon at
//       //the right hand side of my app
//       appBar: AppBar(
//         title: const Text('Currency converter'),
//         backgroundColor: Colors.green,
//         centerTitle: true,
//         elevation: 0,
//       ),
//       backgroundColor: Colors.green, // Set the background color to green
//       body: Center(
//         // Set the background color of the box to white
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               result.toString(),
//               style: const TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 color: Color.fromRGBO(
//                     228, 221, 223, 1), // Set the text color to black
//               ),
//             ),
//             Padding(
//               //in padding function of ltrb we have to mention all type
//               padding: const EdgeInsets.all(8.0), //but in only we have option
//               child: TextField(
//                 controller: textEditingController,
//                 //to specify some of them
//                 style: const TextStyle(
//                   color: Colors.white, //we also have a property of decoration
//                   //in which we can decorate the input text
//                 ),
//                 decoration: InputDecoration(
//                   hintText: 'Input amount in pkr',
//                   hintStyle: TextStyle(color: Color.fromARGB(59, 22, 80, 207)),
//                   prefixIcon: Icon(Icons.monetization_on),
//                   filled: true,
//                   fillColor: Colors.white70,
//                   //there is also border widget which is used to give border
//                   //a nice color focused border and outline and inline border
//                   //focused border can be used with them
//                   focusedBorder: border,
//                   //there is also prperty borderRadius: BorderRadius.horizontal(left:Radius.circular(100))),
//                   enabledBorder: border,
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//             ), //there is prefix and suffix with icon colors
//             // Add more widgets as needed there is also stuff known as
//             //enabledborder wher again you have to use it
//             ElevatedButton(
//               onPressed: () {
//                 result = double.parse(textEditingController.text) / 390;
//               },
//               //with the text form size i can skip this material size property
//               style: const ButtonStyle(
//                 foregroundColor: MaterialStatePropertyAll(Colors.white),
//                 backgroundColor:
//                     MaterialStatePropertyAll(Colors.deepPurpleAccent),
//                 fixedSize: MaterialStatePropertyAll(Size(100, 30)),
//                 elevation:
//                     MaterialStatePropertyAll(15), //there is also oval and
//                 //circular border ..we can use shape that material state and
//                 //border //there is also different types of the circular border  ractangular border of different border
//               ),
//               child: const Text('Convert'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
