import 'package:code_along/src/constants/text_styling.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: SizedBox(
        height: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Home Page Content',
                style: TextStyles.homePageHeader,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
