import 'package:flutter/material.dart';
import 'package:flutter_estore/consts/my_icons.dart';
import 'package:flutter_estore/screens/cart.dart';
import 'package:flutter_estore/screens/feeds.dart';
import 'package:flutter_estore/screens/home.dart';
import 'package:flutter_estore/screens/sreach.dart';
import 'package:flutter_estore/screens/user_info.dart';


class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  late List<Map<String, Widget>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HomePage(),
      },
      {
        'page': FeedPage(),
      },
      {
        'page': SearchPage(),
      },
      {
        'page': CartPage(),
      },
      {
        'page': UserInfo(),
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 0.01,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: kBottomNavigationBarHeight * 0.98,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
              onTap: _selectPage,
              backgroundColor: Theme.of(context).primaryColor,
              unselectedItemColor: Theme.of(context).textSelectionColor,
              selectedItemColor: Colors.blue,
              currentIndex: _selectedPageIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(MyAppIcons.home),
                  title: Text("Home"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(MyAppIcons.feed),
                  title: Text("Feeds"),
                ),
                BottomNavigationBarItem(
                  activeIcon: null,
                  icon: Icon(null),
                  title: Text("Search"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(MyAppIcons.cart),
                  title: Text("Cart"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(MyAppIcons.user),
                  title: Text("User"),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          backgroundColor: Colors.blue,
          hoverElevation: 10,
          splashColor: Colors.grey,
          tooltip: 'Search',
          elevation: 4,
          child: Icon(MyAppIcons.search),
          onPressed: () => setState(() {
            _selectedPageIndex = 2;
          }),
        ),
      ),
    );
  }
}
