import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageTemplate extends StatefulWidget {
  const PageTemplate({super.key, required this.pageContents});

  final Widget pageContents;

  @override
  State<PageTemplate> createState() => _PageTemplateState();
}

class _PageTemplateState extends State<PageTemplate> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavigationRail(
              selectedIndex: _selectedIndex,
              groupAlignment: -1.0,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.all,
              trailing: IconButton(
                onPressed: () => context.goNamed('settings'),
                icon: const Icon(Icons.more_horiz_rounded),
              ),
              destinations: <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: IconButton(
                      onPressed: () => context.goNamed('home'),
                      icon: const Icon(Icons.home_outlined)),
                  selectedIcon: const Icon(Icons.home_filled),
                  label: const Text('Home'),
                ),
                NavigationRailDestination(
                  icon: IconButton(
                      onPressed: () => context.goNamed('blog'),
                      icon: const Icon(Icons.book_outlined)),
                  selectedIcon: const Icon(Icons.book),
                  label: const Text('Blog'),
                ),
              ],
            ),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      color: Colors.pink,
                      child: SizedBox(
                        height: 200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'CodeAlong.IO',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Learn along with me as we build out this blog together.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 20,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 10.0,
                      ),
                      child: widget.pageContents,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
