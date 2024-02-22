import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focuseNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          textController.clear();
        },
      ),
    );

    return TextFormField(
        onTapOutside: (event) {
          focuseNode.unfocus();
        },
        focusNode: focuseNode,
        controller: textController,
        decoration: inputDecoration,
        onFieldSubmitted: (value) {
          textController.clear();
          focuseNode.requestFocus();
        });
  }
}
