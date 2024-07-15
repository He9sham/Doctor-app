import 'package:flutter/material.dart';
import 'package:flutter_gemini_bot/flutter_gemini_bot.dart';
import 'package:flutter_gemini_bot/models/chat_model.dart';

class ChatAiPage extends StatefulWidget {
  const ChatAiPage({super.key});
  @override
  State<ChatAiPage> createState() => _ChatAiPageState();
}

class _ChatAiPageState extends State<ChatAiPage> {
  List<ChatModel> chatlist = [];
  String apikey = 'AIzaSyB9iHTCh87r2OyqvEyp1RF7uFvqVRXeklM';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterGeminiChat(
        onRecorderTap: () {
          
        },
        botChatBubbleColor: Colors.black,
        errorMessage: 'Something went wrong',
        userChatBubbleTextColor: Colors.blue,
        userChatBubbleColor: Colors.black,
        bodyPlaceHolder: const Center(
          child: Text(
            'Write your consultation here...',
            style: TextStyle(color: Colors.black),
          ),
        ),
        buttonColor: Colors.blue,
        botChatBubbleTextColor: Colors.black,
        chatContext: 'It would be better to consult a doctor',
        chatList: chatlist,
        apiKey: apikey,
      ),
    );
  }
}
