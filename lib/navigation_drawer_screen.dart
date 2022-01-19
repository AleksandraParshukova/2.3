import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Center(
              child: Text(
                'Заголовок',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.next_plan),
            title: const Text('Перейти на Главный экран'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.next_plan),
            title: const Text('Перейти на первый экран'),
            onTap: () {
              Navigator.pushNamed(context, '/one');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.next_plan),
            title: const Text('Перейти на второй экран'),
            onTap: () {
              Navigator.pushNamed(context, '/two');
            },
          ),
        ],
      ),
    );
  }
}
