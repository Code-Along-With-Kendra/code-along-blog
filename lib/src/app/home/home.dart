import 'package:code_along/src/constants/text_styling.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Welcome to CodeAlong.IO',
                style: TextStyles.cardHeader,
              ),
              SizedBox(height: 10),
              Text(
                'Check out the blog page for the post by post build out of this blog.',
                style: TextStyles.cardSubTitle,
              ),
              SizedBox(height: 20),
              Text(
                'Over the course of this series we\'ll learn how to deploy a flutter web app from start to finish with testing, CI/CD, and cloud datastore integration together. My intent is to show you the process of how I\'m learning flutter and hopefully inspire you to take on a new coding challenge along with me.',
                style: TextStyles.postNormalText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
