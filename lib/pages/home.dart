// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:projeto_beta/components/myCard.dart';
import 'package:projeto_beta/pages/addNews.dart';
import 'package:projeto_beta/pages/cart.dart';
import 'package:projeto_beta/pages/userPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const MyCardList(),
    MyProductCard(),
    AddNewsPage(),
    const UserSettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cunhantan News'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurpleAccent,
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            label: 'Compras',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
              color: Colors.black,
            ),
            label: 'Add News',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class MyCardList extends StatelessWidget {
  const MyCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Altere para o número de cards que deseja exibir
      itemBuilder: (context, index) {
        return MyCard();
      },
    );
  }
}
