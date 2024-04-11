import 'package:flutter/material.dart';
import 'package:whatsappui/colors.dart';
import 'package:whatsappui/widgets/chat_app_bar.dart';
import 'package:whatsappui/widgets/chat_list.dart';
import 'package:whatsappui/widgets/contacts_list.dart';
import 'package:whatsappui/widgets/web_profile_bar.dart';
import 'package:whatsappui/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                WebProfileBar(),
                WebSearchBar(),
                ContactList(),
              ],
            )),
          ),
          Container(
            height: double.infinity,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'backgroundImage.png',
              ),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                const WebChatAppBar(),
                const ChatList(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: chatBarMessage,
                    border: Border(
                      top: BorderSide(
                        color: dividerColor,
                        width: 0.5,
                      ),
                    ),
                  ),
                  child: Row(children: [
                    IconButton(
                      icon: const Icon(
                        Icons.emoji_emotions,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type a message',
                          hintStyle: TextStyle(
                            color: Colors.white60,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.attach_file,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
