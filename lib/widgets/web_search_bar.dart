import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsappui/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
          border: Border(
        bottom: BorderSide(color: dividerColor),
      )),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: searchBarColor,
          prefixIcon: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(
                Icons.search,
                size: 20,
                color: Colors.grey,
              )),
          hintText: 'Search or start new chat',
          hintStyle: const TextStyle(fontSize: 15),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20.0),
          ),
          contentPadding: const EdgeInsets.all(10.0),
        ),
      ),
    );
  }
}
