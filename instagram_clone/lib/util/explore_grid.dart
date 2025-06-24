import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  const ExploreGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        itemCount: 20,
       gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
       itemBuilder: (BuildContext context, int index) {
         return Padding(
           padding: const EdgeInsets.all(2.0),
           child: Container(
              color: Colors.deepPurple[100],
            ),
         );
        },
      ),
    );
  }
}