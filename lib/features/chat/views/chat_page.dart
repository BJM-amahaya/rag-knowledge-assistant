import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rag_knowledge_assistant_frontend/features/chat/providers/chat_provider.dart';
import 'package:rag_knowledge_assistant_frontend/features/chat/providers/chat_state.dart';

class ChatPage extends ConsumerWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatState = ref.watch(chatNotifierProvider);
    print('チャットステイト__$chatState');

    return Scaffold(
      appBar: AppBar(title: const Text('チャット天早')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: chatState.messages.length,
              itemBuilder: (context, index) {
                final message = chatState.messages[index];
                return Text(message.content);
              },
            ),
          ),
          if (chatState.isLoading)
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(),
            ),
          Text('ここに入力欄'),
        ],
      ),
    );
  }
}
