import 'package:flutter/material.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shop',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.calendar_today
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.menu
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(12),
               color: Colors.grey[300],
              ),
              child:  Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey[600],
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w600,
                      fontSize: 17
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GridView.builder(
                itemCount: 20,
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) , 
               itemBuilder: (context, index) {
                 return Padding(
                   padding: const EdgeInsets.all(5.0),
                   child: Container(color: Colors.pink[200]),
                 );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}