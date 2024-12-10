// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DetailCouponsPage extends StatelessWidget {
  final bool canGet;
  final String price;
  const DetailCouponsPage({
    super.key,
    this.canGet = true,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                child: Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 60),
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 112,
                            margin: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
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
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        price,
                                        style: const TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const Text(
                                        'HSD: 27/09-02/10/2024',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ))
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                leading: const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 8,
                                  ),
                                ),
                                isThreeLine: true,
                                horizontalTitleGap: 1,
                                title: const Text(
                                  "Hạn sử dụng mã",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                subtitle: Text(
                                  '27/09/2024 00:00 - 02/10/2024 23:59',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                              ListTile(
                                leading: const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 8,
                                  ),
                                ),
                                isThreeLine: true,
                                horizontalTitleGap: 1,
                                title: const Text(
                                  "Ưu đãi",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                subtitle: Text(
                                  'Lượt sử dụng có hạn. Nhanh tay kẻo lỡ bạn nhé! Giảm VNĐ50.000 Đơn tối thiểu VNĐ700.000 Giảm tối đa VNĐ25.000',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                              ListTile(
                                leading: const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 8,
                                  ),
                                ),
                                isThreeLine: true,
                                horizontalTitleGap: 1,
                                title: const Text(
                                  "Áp dụng cho sản phẩm",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                subtitle: Text(
                                  'Áp dụng cho tất cả các dòng sản phẩm',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                              ListTile(
                                leading: const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 8,
                                  ),
                                ),
                                isThreeLine: true,
                                horizontalTitleGap: 1,
                                title: const Text(
                                  "Phương thức thanh toán",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                subtitle: Text(
                                  'Mọi phương thức thanh toán',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                              ListTile(
                                leading: const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 8,
                                  ),
                                ),
                                isThreeLine: true,
                                horizontalTitleGap: 1,
                                title: const Text(
                                  "Đơn vị vận chuyển",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                subtitle: Text(
                                  '- Hoả Tốc\n- Nhanh\n- Tiết kiệm\n- Ahamove\n- Ninja Van\n- J&T Express',
                                  style: TextStyle(color: Colors.grey[600]),
                                ),
                              ),
                              ListTile(
                                leading: const Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Icon(
                                    Icons.circle,
                                    size: 8,
                                  ),
                                ),
                                isThreeLine: true,
                                horizontalTitleGap: 1,
                                title: const Text(
                                  "Điều kiện",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                subtitle: Text(
                                  'Mã AUGHNKX18S giảm VNĐ50.000 tối đa VNĐ25.000 cho những đơn hàng hợp lệ từ VNĐ700.000\nĐã thực hiện đóng góp trên nền tảng Greenice.\nKhông áp dụng nhiều mã giảm giá cho 1 đơn hàng',
                                  style: TextStyle(
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: const BeveledRectangleBorder(),
                                    backgroundColor: const Color(0xffcbe5ca),
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 8,
                                      horizontal: 12,
                                    ),
                                  ),
                                  onPressed: !canGet
                                      ? null
                                      : () {
                                          showDialog(
                                            context: context,
                                            builder: (context) {
                                              return Center(
                                                child: Dialog(
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(24),
                                                    ),
                                                  ),
                                                  child: SizedBox(
                                                    width: 200,
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 12),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          24),
                                                              color: const Color(
                                                                  0xff92E3A9)),
                                                          child: const Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                  'XÁC NHẬN ĐỔI VOUCHER',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  )),
                                                            ],
                                                          ),
                                                        ),
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                          child: Text(
                                                            'Bạn đã quy đổi thành công voucher vừa được chọn. Kiểm tra túi coupons ngay!',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ),
                                                        const Center(
                                                          child: Icon(
                                                            Icons.emoji_events,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          );
                                        },
                                  child: const Text(
                                    'ĐỔI VOUCHER NGAY',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
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
