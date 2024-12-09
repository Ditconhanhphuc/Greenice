import 'package:flutter/material.dart';

class CouponsPage extends StatelessWidget {
  const CouponsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                color: const Color(0xff7CB98D),
                height: MediaQuery.of(context).size.height / 2,
              ),
              Container(
                margin: const EdgeInsets.only(top: 80),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Image.asset('assets/decor.png'),
                            ),
                          ),
                          Image.asset('assets/icon_greenice.png'),
                          const Text(
                            '14,000',
                            style: TextStyle(
                                fontSize: 30,
                                color: Color(0xffFFF4C9),
                                fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Voucher hiên có:',
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                          ListView.separated(
                            itemCount: 2,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 8,
                            ),
                            itemBuilder: (context, index) => Container(
                              height: 112,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xffFFF4C9),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0, 2),
                                      spreadRadius: 1,
                                      blurRadius: 2,
                                      color: Colors.black.withOpacity(
                                        0.2,
                                      ),
                                    )
                                  ]),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    child:
                                        Image.asset('assets/voucher_logo.png'),
                                  ),
                                  const VerticalDivider(
                                    color: Colors.black,
                                  ),
                                  const Expanded(
                                      child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          ' VNĐ50.000',
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          'HSD: 27/09-02/10/2024',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            'Điều kiện',
                                            style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))
                                ],
                              ),
                            ),
                          ),
                          const Text(
                            'Voucher có thể đổi:',
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                          Container(
                            height: 112,
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color(0xffEBD19D),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(0, 2),
                                    spreadRadius: 1,
                                    blurRadius: 2,
                                    color: Colors.black.withOpacity(
                                      0.2,
                                    ),
                                  )
                                ]),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: Image.asset('assets/voucher_logo.png'),
                                ),
                                const VerticalDivider(
                                  color: Colors.black,
                                ),
                                const Expanded(
                                    child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        ' VNĐ150.000',
                                        style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      Text(
                                        'HSD: 27/09-02/10/2024',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Text(
                                          'Đổi ngay',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          ),
                          const Text(
                            'Quà tặng & vouchers bạn đã quy đổi',
                            style: TextStyle(),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SizedBox(
                                    child: Center(
                                      child:
                                          Image.asset('assets/voucherBg.png'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  SizedBox(
                                    child: Center(
                                      child:
                                          Image.asset('assets/voucherBg.png'),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  SizedBox(
                                    child: Center(
                                      child:
                                          Image.asset('assets/voucherBg.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
