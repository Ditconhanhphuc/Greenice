import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/intro1.dart';
import 'package:my_flutter_app/intro2.dart';
import 'package:my_flutter_app/intro3.dart';
import 'package:my_flutter_app/intro4.dart';
import 'package:my_flutter_app/login.dart';

class IntroPage extends StatelessWidget {
  IntroPage({super.key});

  final ValueNotifier<int> index = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: CarouselSlider(
              items: const [
                Intro1(),
                Intro2(),
                Intro3(),
                Intro4(),
              ],
              options: CarouselOptions(
                initialPage: 0,
                autoPlay: false,
                height: double.infinity,
                enableInfiniteScroll: false,
                viewportFraction: 1,
                onPageChanged: (pageIndex, reason) {
                  index.value = pageIndex;
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                width: double.infinity,
                color: const Color(0xff8FCEA3),
                child: ValueListenableBuilder(
                  valueListenable: index,
                  builder: (context, value, child) {
                    if (value == 3) {
                      return Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 4,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: const Color(0xffd3e1d7),
                            ),
                            child: const Text('Đăng nhập để tiếp tục'),
                          ),
                        ),
                      );
                    }
                    return Center(
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(
                            16,
                          ),
                        ),
                        child: DotsIndicator(
                          decorator: const DotsDecorator(
                            activeColor: Colors.white,
                            color: Color(0xffbdbdbd),
                          ),
                          dotsCount: 4,
                          position: value,
                        ),
                      ),
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}
