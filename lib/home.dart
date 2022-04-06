import 'package:example/pages/deletedPage.dart';
import 'package:example/pages/familyPage.dart';
import 'package:example/pages/galeryPage.dart';
import 'package:example/pages/moviePage.dart';
import 'package:example/pages/recentPage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _pageController;
  int _page = 0;
  // static final List pages = [GaleryPage(), MoviePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Belajar Drawer")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _drawerHeader(),
            _drawerItem(
              icon: Icons.image,
              text: 'My Galery',
              onTap: () =>
                  {_pageController.jumpToPage(0), Navigator.pop(context)},
            ),
            _drawerItem(
              icon: Icons.movie,
              text: 'My Movie',
              onTap: () =>
                  {_pageController.jumpToPage(1), Navigator.pop(context)},
            ),
            _drawerItem(
              icon: Icons.access_time,
              text: 'Recent',
              onTap: () =>
                  {_pageController.jumpToPage(2), Navigator.pop(context)},
            ),
            _drawerItem(
              icon: Icons.delete,
              text: 'Deleted',
              onTap: () =>
                  {_pageController.jumpToPage(3), Navigator.pop(context)},
            ),
            Divider(
              height: 25,
              thickness: 1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
              child: Text(
                'Label',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
            _drawerItem(
              icon: Icons.family_restroom,
              text: 'Family',
              onTap: () =>
                  {_pageController.jumpToPage(4), Navigator.pop(context)},
            ),
          ],
        ),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: <Widget>[
          GaleryPage(),
          MoviePage(),
          RecentPage(),
          DeletedPage(),
          FamilyPage()
        ],
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget _drawerHeader() {
    return UserAccountsDrawerHeader(
      currentAccountPicture: ClipOval(
        child: Image(
            image: AssetImage('assets/images/user.png'), fit: BoxFit.cover),
      ),
      // otherAccountsPictures: [
      //   ClipOval(
      //     child: Image(
      //         image: AssetImage('assets/images/user.png'), fit: BoxFit.cover),
      //   ),
      //   ClipOval(
      //     child: Image(
      //         image: AssetImage('assets/images/user.png'), fit: BoxFit.cover),
      //   )
      // ],
      accountName: Text('Yusup Supriyanto'),
      accountEmail: Text('test@example.com'),
    );
  }

  @override
  Widget _drawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      onTap: onTap,
    );
  }
}
