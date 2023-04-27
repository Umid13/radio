import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
class RadioCheck extends StatefulWidget {
  const RadioCheck({super.key});

  @override
  State<RadioCheck> createState() => _RadioCheckState();
}

class _RadioCheckState extends State<RadioCheck> {
  bool x1=false;
  String? food;
  int a=0;
  void log(value){
    setState(() {
      food=value;
      if(food=='Small'){
        a=50000;
      }
      if(food=='Medium'){
        a=75000;
      }
      if(food=='Large'){
        a=100000;
      }
    });
    print(value.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Center(
        child: Column(
          children: [
           const CircleAvatar(
              backgroundImage: NetworkImage('https://www.vhv.rs/dpng/d/543-5439424_quarter-pizza-clipart-hd-png-download.png'),
              radius: 100,
            ),
            Container(
              height: 100,
            ),
           Padding(
             padding: const EdgeInsets.only(left: 120),
             child: Row(
              children: [
                Radio(value: 'Small', groupValue: food, onChanged: log),
                const Text('Small')
              ],
              
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 120),
             child: Row(
              children: [
                Radio(value: 'Medium', groupValue: food, onChanged: log),
                const Text('Medium')
              ],
              
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 120),
             child: Row(
              children: [
                Radio(value: 'Large', groupValue: food, onChanged: log),
                const Text('Large')
              ],
              
             ),
           ),
           Container(
            height: 120,
           ),
           Padding(
             padding: const EdgeInsets.only(left: 120),
             child: Row(
              children: [
                Text('Total sum : ',
                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                Text(
                  a.toString(),
                  style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20)
                ),
                Text('  so\'m',
                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20)),
                
                
              ],
             ),
           )
          ],
        ),
      ),
    );
  }
}