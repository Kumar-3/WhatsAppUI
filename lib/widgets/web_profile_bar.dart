import 'package:flutter/material.dart';
import 'package:whatsappui/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
          color: webAppBarColor,
          border: Border(
            right: BorderSide(
              color: dividerColor,
            ),
          )),
      child: const Row(
        children: [
          CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
          ),
          Spacer(),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.comment),
            color: Colors.grey,
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.more_vert),
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
