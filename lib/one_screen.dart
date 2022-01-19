import 'package:flutter/material.dart';

class OneScreenWidget extends StatefulWidget {
  const OneScreenWidget({Key? key}) : super(key: key);

  @override
  _OneScreenWidgetState createState() => _OneScreenWidgetState();
}

class _OneScreenWidgetState extends State<OneScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Первый экран'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(
              label: 'Главный',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Первый',
              icon: Icon(Icons.mail),
            ),
            BottomNavigationBarItem(
              label: 'Второй',
              icon: Icon(Icons.person),
            ),
          ],
          onTap: (int index) {
            if (index == 0) {
              Navigator.pushNamed(context, '/');
            } else if (index == 1) {
              Navigator.pushNamed(context, '/one');
            } else if (index == 2) {
              Navigator.pushNamed(context, '/two');
            }
          },
        ),
        body: const Center(
          child: Text(
            'Первый экран',
          ),
        ),
      ),
    );
  }
}
