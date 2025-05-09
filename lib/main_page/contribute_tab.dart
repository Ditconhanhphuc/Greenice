import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_app/main_page/history_container.dart';
import 'package:my_flutter_app/main_page/slider.dart';

class ContributeTab extends StatelessWidget {
  ContributeTab({super.key});

  final ValueNotifier position = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    const List<String> titleList = ['pet', 'pp', 'glass', 'carton'];
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: kToolbarHeight,
            ),
            Stack(
              children: [
                CarouselSlider(
                  items: List.generate(
                    4,
                    (index) {
                      return MySlider(
                        title: titleList[index],
                      );
                    },
                  ),
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 16 / 8,
                    viewportFraction: 1,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    onPageChanged: (index, reason) {
                      position.value = index;
                    },
                  ),
                ),
                Positioned.fill(
                  bottom: 5,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ValueListenableBuilder(
                      valueListenable: position,
                      builder: (context, value, child) {
                        return DotsIndicator(
                          dotsCount: 4,
                          position: value,
                          decorator: const DotsDecorator(
                            activeColor: Colors.black,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const HistoryContainer(),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xffBAEBC8),
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(16))),
              margin: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset('assets/icon.png'),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          'Bài học & Quizz',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(16),
                      ),
                      color: Color(0xffFBF6DF),
                    ),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        // mainAxisExtent: 121,
                        mainAxisSpacing: 40,
                        crossAxisSpacing: 55,
                      ),
                      itemCount: 8,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(20),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: const EdgeInsets.only(
                            left: 8,
                            right: 8,
                            bottom: 6,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffEFC194),
                                ),
                                child: Text(
                                  index.toString(),
                                  style: const TextStyle(fontSize: 20),
                                ),
                              ),
                              const Flexible(
                                child: Text(
                                  'Tái chế và lợi ích của việc tái chế',
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
