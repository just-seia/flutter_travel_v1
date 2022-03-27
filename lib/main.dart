import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/screens/card_screen.dart';
import 'package:travel/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel',
      theme: ThemeData(
        fontFamily: 'Rubik',
      ),
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int pageIndex = 0;
  final _screens = [
    HomeScreen(),
    CardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _screens[pageIndex],
      ),
      bottomNavigationBar: Container(
        height: 100,
        padding: EdgeInsets.only(bottom: 10, left: 50, right: 50),
        decoration: BoxDecoration(
          color: Color(0xFFE8E8E8),
          // color: Colors.transparent,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            pageIndex == 0 ?
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xFFEB5757),
                borderRadius: BorderRadius.circular(50),
              ),
              child: SvgPicture.asset(
                'assets/icons/main.svg',
              ),
            )
            : SvgPicture.asset(
              'assets/icons/main.svg',
            ),
            InkWell(
              onTap: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              child: SvgPicture.asset(
                'assets/icons/liked_nav.svg',
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              child: SvgPicture.asset(
                'assets/icons/chat_nav.svg',
              ),
            ),
            SvgPicture.asset(
              'assets/icons/settings_nav.svg',
            ),
          ],
        ),
      ),
    );
  }
}
