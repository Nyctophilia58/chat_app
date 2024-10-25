import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../themes/theme_provider.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;

  ChatBubble({
    super.key,
    required this.message,
    required this.isCurrentUser,
  });

  @override
  Widget build(BuildContext context) {

    bool isDarkMode = Provider.of<ThemeProvider>(context, listen: false).isDarkMode;

    return Container(
      decoration: BoxDecoration(
        color: isCurrentUser
            ? (isDarkMode ? Colors.green.shade600 : Colors.grey.shade500)
            : (isDarkMode ? Colors.grey.shade800 : Colors.grey.shade200),
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 25.0),
      child: Text(
        message,
        style: TextStyle(
          color: isCurrentUser
              ? Colors.white
              : (isDarkMode ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}