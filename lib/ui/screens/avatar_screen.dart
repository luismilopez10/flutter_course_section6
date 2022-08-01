import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('T'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 120,
          backgroundImage: NetworkImage(
              'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/hc_1440x810/public/media/image/2021/08/final-fantasy-x-tidus-2426595.jpg?itok=inDUnO3_'),
        ),
      ),
    );
  }
}
