import 'package:flutter/material.dart';

class TwoScreenWidget extends StatefulWidget {
  const TwoScreenWidget({Key? key}) : super(key: key);

  @override
  _TwoScreenWidgetState createState() => _TwoScreenWidgetState();
}

class _TwoScreenWidgetState extends State<TwoScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Второй экран'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 2,
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
            'Второй экран',
          ),
        ),
      ),
    );;
  }
}
