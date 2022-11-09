import 'dart:convert';

import 'package:code_along/src/app/shared/page_template.dart';
import 'package:code_along/src/constants/text_styling.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Blog extends StatefulWidget {
  const Blog({super.key});

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  Map _jsonMap = {};

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/post_1.json');
    final parsedJson = await jsonDecode(response);
    setState(() {
      _jsonMap = parsedJson;
    });
  }

  @override
  Widget build(BuildContext context) {
    readJson();
    return PageTemplate(
      pageContents: Card(
        child: Center(
          child: _jsonMap.isNotEmpty
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Text(_jsonMap["title"],
                            style: TextStyles.postHeader)),
                    Text('Author: ${_jsonMap["author"]}',
                        style: TextStyles.postNormalText),
                    Text('Published: ${_jsonMap["posting_date"]}',
                        style: TextStyles.postNormalText),
                    const SizedBox(
                      height: 10,
                    ),
                    for (final paragraph in _jsonMap["blog_post"])
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child:
                            Text(paragraph, style: TextStyles.postNormalText),
                      ),
                  ],
                )
              : Column(),
        ),
      ),
    );
  }
}
