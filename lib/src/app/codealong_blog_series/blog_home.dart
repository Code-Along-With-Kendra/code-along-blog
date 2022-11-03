import 'package:code_along/src/app/shared/page_template.dart';
import 'package:code_along/src/constants/text_styling.dart';
import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      pageContents: Card(
        child: Center(
          child: Column(
            children: const [
              Text('Heading', style: TextStyles.postHeader),
              Text('Author', style: TextStyles.postNormalText),
              Text('Posting Date', style: TextStyles.postNormalText),
              Text('Contents', style: TextStyles.postNormalText),
            ],
          ),
        ),
      ),
    );
  }
}
