import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: 343,
                height: 397,
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  image: DecorationImage(
                    image: AssetImage('assets/images/popular_3.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icons/back.svg'),
                    Container(
                      width: 170,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Color(0xFF9B9B9B),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 36,
                            height: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(34),
                              image: DecorationImage(
                                image: AssetImage('assets/images/avatar.jpg'),
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Azat Khabirov',
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Location guide',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0x90FFFFFF),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shulgaт-Tash cave',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: 290,
                    child: Text(
                      'A truly amazing example of the creation of nature, the Kapova cave with cave paintings of ancient people with...',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0x90000000),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        'Read more',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFF678B),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset('assets/icons/more.svg'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 92,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 24),
                shrinkWrap: false,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 80,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0x10242424),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/price.svg'),
                        Text(
                          'from 90\$',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 80,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0x10242424),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/distance.svg'),
                        Text(
                          '6 hours',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 80,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0x10242424),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/breakfast.svg'),
                        Text(
                          'Full Board',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    width: 80,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0x10242424),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/icons/ensurance.svg'),
                        Text(
                          'Insurance',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Container(
                height: 64,
                decoration: BoxDecoration(
                  color: Color(0xFFFF678B),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Buy a tour',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SvgPicture.asset('assets/icons/arrow.svg', color: Colors.white,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
