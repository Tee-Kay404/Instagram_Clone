import 'package:flutter/material.dart';

class AccountTabs1 extends StatelessWidget {
  const AccountTabs1({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 11,
     gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
     itemBuilder: (BuildContext context, int index) {
       return Padding(
         padding: const EdgeInsets.all(2.0),
         child: Container(
            color: Colors.deepPurple[200],
          ),
       );
      },
    );
  }
}