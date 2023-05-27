import 'package:flutter/material.dart';
class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    "Title",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text(
                    "Description",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_upward),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_downward),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    // icon button for flagging a post
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.flag),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]
      )
    );
  }
}