import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/user_post.dart';
import 'package:instagram_ui/util/circle_avatar.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> roundAvatar = [
      {'name': 'TeeKay', 'imagePath': Icons.person_outlined},
      {'name': 'Maestro', 'imagePath': Icons.person_outlined},
      {'name': 'David', 'imagePath': Icons.person_outlined},
      {'name': 'RikStar', 'imagePath': Icons.person_outlined},
      {'name': 'Chris', 'imagePath': Icons.person_outlined},
      {'name': 'MonaLisa', 'imagePath': Icons.person_outlined},
    ];
    final List<String> posts = [
      'assets/images/Flutter_1.png',
      'assets/images/coffee.PNG',
      'assets/images/embark.PNG',
      'assets/images/Flutter_8.png',
      'assets/images/flutt.PNG',
      'assets/images/pic_5.PNG',
    ];
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Instagram'),
              Row(
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 20),
                  Icon(Icons.favorite),
                  SizedBox(width: 20),
                  Icon(Icons.share),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            // STORIES
            SizedBox(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: roundAvatar.length,
                    itemBuilder: (context, index) {
                      final item = roundAvatar[index];
                      return RoundAvatar(
                        text: item['name'],
                        imagePath: item['imagePath'],
                      );
                    })),
            // const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: roundAvatar.length,
                itemBuilder: (BuildContext context, int index) {
                  final post = roundAvatar[index];
                  return UserPost(
                    name: post['name'],
                    imagePath: posts[index],
                  );
                },
              ),
            )
          ],
        ));
  }
}
