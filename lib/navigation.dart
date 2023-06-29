import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) => setState(() {
          selectedIndex = value;
        }),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home),
            label: "Home",
            selectedIcon: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
          NavigationDestination(
            icon: const Icon(Icons.search_off_rounded),
            label: "Search",
            selectedIcon: Icon(
              Icons.search_off_rounded,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings),
            label: "Settings",
            selectedIcon: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
