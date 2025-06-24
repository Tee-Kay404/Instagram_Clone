import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  final String imagePath;
  const UserPost({super.key, required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white30,
                    ),
                  ),
                ),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Icon(Icons.more_vert)
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 380,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey[400],
              shape: BoxShape.rectangle,
            ),
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                Icon(Icons.favorite),
                SizedBox(width: 20),
                Icon(Icons.chat_bubble_outline),
                SizedBox(width: 20),
                Icon(Icons.share),
              ],
            ),
            Icon(Icons.bookmark),
          ]),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: Row(
            children: [
              Text(
                'Liked by',
              ),
              SizedBox(width: 5),
              Text('Maestro', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(width: 5),
              Text('and'),
              SizedBox(width: 5),
              Text(
                'Others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: RichText(
            text: const TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Avour',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  WidgetSpan(child: SizedBox(width: 5)),
                  TextSpan(
                    text:
                        'i like the way you grind, roll and rock it! like a rookie tomorrow',
                  ),
                ]),
          ),
        ),
      ],
    );
  }
}
