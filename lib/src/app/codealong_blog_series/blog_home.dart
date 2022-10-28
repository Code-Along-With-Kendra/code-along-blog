import 'package:code_along/src/app/shared/page_template.dart';
import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageTemplate(
      pageContents: Center(child: Text('Blog')),
    );
  }
}
