import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edwin Contreras"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text("EC"),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage(
              "https://media.licdn.com/dms/image/C4E03AQFjBjw0e9xOlg/profile-displayphoto-shrink_400_400/0/1630213630620?e=1682553600&v=beta&t=jxTv4qLZae8lXdG6Wq6BsSh8yKkdUIajRCXnYQP8h4s",
              scale: 20),
        ),
      ),
    );
  }
}
