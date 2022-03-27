import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel/screens/card_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bashkortostan',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/icons/map.svg',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Choose another',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0x60242424),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter name or category',
                      fillColor: Color(0x10242424),
                      filled: true,
                      suffixIcon: SvgPicture.asset(
                        'assets/icons/search.svg',
                        fit: BoxFit.scaleDown,
                        width: 20,
                        height: 20,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          width: 0,
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          width: 0,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Category',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Container(
              height: 52,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 24),
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0x10242424),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/top30.svg'),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Top 30 places'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0x10242424),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/nature.svg'),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Nature'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0x10242424),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/food.svg'),
                        SizedBox(
                          width: 8,
                        ),
                        Text('Gastro'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 24, right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const const [
                  Text(
                    'Popular',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Container(
              height: 280,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 24),
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CardScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 215,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/popular_1.jpg'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset('assets/icons/liked.svg'),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Monument to\nSalavat Yulaev ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 60,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFF242424),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/rate.svg',
                                      width: 13,
                                      height: 13,
                                      fit: BoxFit.scaleDown,
                                    ),
                                    Text(
                                      '4.9',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CardScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 215,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/popular_2.jpg'),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SvgPicture.asset('assets/icons/liked.svg'),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Krasnyy klyuch\nspring ',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: 60,
                                padding: EdgeInsets.symmetric(
                                  vertical: 5,
                                  horizontal: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFF242424),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/rate.svg',
                                      width: 13,
                                      height: 13,
                                      fit: BoxFit.scaleDown,
                                    ),
                                    Text(
                                      '5.0',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
