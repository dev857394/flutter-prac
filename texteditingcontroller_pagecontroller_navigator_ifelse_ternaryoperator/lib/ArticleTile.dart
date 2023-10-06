import 'package:flutter/material.dart';

class ArticleTile extends StatefulWidget {
  const ArticleTile(
      {super.key,
      required this.title,
      required this.author,
      required this.content});

  final String title;
  final String author;
  final String content;

  @override
  State<ArticleTile> createState() => _ArticleTileState();
}

class _ArticleTileState extends State<ArticleTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(widget.title), //stateful widget은 변수앞에 widget.
          subtitle: Text(widget.author),
          onTap: () {
            isExpanded = !isExpanded;

            setState(() {});
          },
        ),
        if (isExpanded) Text(widget.content)
      ],
    );
  }
}
