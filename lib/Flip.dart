import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
  

class Flip extends StatelessWidget {
  const Flip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
        'https://images.pexels.com/photos/2101187/pexels-photo-2101187.jpeg?auto=compress&cs=tinysrgb&w=600'
      , fit: BoxFit.cover,
      ),
      DraggableScrollableSheet(
        builder:(BuildContext context , myScrollController){
        return Container(
          color: Colors.white70,
          child: ListView.builder(
            controller: myScrollController,
            itemCount: 25,
            itemBuilder: (BuildContext context, int index) { 
              return ListTile(title: Text('list ke $index'),);
             },
            )
        );
        } 
      )
        ],
      )
    ) ;
  }
}