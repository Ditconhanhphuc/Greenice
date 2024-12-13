import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChampionPage extends StatelessWidget {
  const ChampionPage({super.key});

  @override
  Widget build(BuildContext context) {
    int myPoint = Random().nextInt(10);

    return Scaffold(
      backgroundColor: const Color(0xffBAEBC8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/voucher_logo.png'))),
                          ),
                          Container(
                            height: 300 / 2,
                            decoration: const BoxDecoration(
                                color: Color(0xffF8C698),
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(8),
                                )),
                            child: Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                    fontSize: 80,
                                    color: const Color(0xffF1A358),
                                    fontWeight: FontWeight.w900,
                                    fontFamily:
                                        GoogleFonts.spicyRice().fontFamily,
                                    shadows: [
                                      Shadow(
                                        offset: const Offset(5, 5),
                                        blurRadius: 3.0,
                                        color: Colors.grey.withOpacity(0.5),
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/voucher_logo.png'))),
                          ),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Color(0xffFAAC55),
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(8),
                                  )),
                              child: Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 80,
                                      fontFamily:
                                          GoogleFonts.spicyRice().fontFamily,
                                      color: const Color(0xffFFF1C8),
                                      fontWeight: FontWeight.w900,
                                      shadows: [
                                        Shadow(
                                          offset: const Offset(5, 5),
                                          blurRadius: 3.0,
                                          color: Colors.grey.withOpacity(0.5),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/voucher_logo.png'))),
                          ),
                          Container(
                            height: 300 / 2.5,
                            decoration: const BoxDecoration(
                                color: Color(0xffFFF4C9),
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(8),
                                )),
                            child: Center(
                              child: Text(
                                '3',
                                style: TextStyle(
                                  fontSize: 80,
                                  letterSpacing: 0,
                                  fontFamily:
                                      GoogleFonts.spicyRice().fontFamily,
                                  fontWeight: FontWeight.w900,
                                  color: const Color(0xffFFD453),
                                  shadows: [
                                    Shadow(
                                      offset: const Offset(5, 5),
                                      blurRadius: 3.0,
                                      color: Colors.grey.withOpacity(0.5),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(
                    24,
                  ),
                ),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: index == myPoint ? const Color(0xffBAEBC8) : null,
                    ),
                    child: ListTile(
                      leading: Text(
                        '${index + 4}',
                        style: TextStyle(
                          fontFamily: GoogleFonts.spicyRice().fontFamily,
                          fontSize: 40,
                        ),
                      ),
                      title: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage('assets/voucher_logo.png'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Expanded(child: Text('Gamer')),
                          Text('${(100000 / (index + 1)).toDouble().round()}'),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
