// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LocationDetailPage extends StatelessWidget {
  final String title;
  const LocationDetailPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20), // Bottom-left corner rounded
              bottomRight: Radius.circular(20), // Bottom-right corner rounded
            ),
            child: Container(
              height: 100, // Custom height for the "AppBar"
              color:
                  const Color(0xFF7CB98D), // Background color of the "AppBar"
              padding: const EdgeInsets.only(
                  top: 40, left: 10, right: 10), // Padding for the "AppBar"
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Image.asset('assets/location.png'),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                        'Là thương hiệu mỹ phẩm nội địa hoạt động tích cực trong các dự án về môi trường, mới đây, Cocoon mang đến bất ngờ khi thu hồi được 2545kg pin cũ chỉ trong 1 tháng triển khai “Thu hồi pin cũ - Bảo vệ Trái đất xanh”. "Làn sóng" yêu môi trường từ chương trình "Thu hồi pin cũ - Bảo vệ Trái đất xanh" Nhắc đến Cocoon, người tiêu dùng không chỉ ấn tượng với các sản phẩm làm đẹp thuần chay mà thương hiệu còn ghi điểm với các dự án liên quan đến bảo tồn động vật và bảo vệ môi trường. Nối tiếp sự đón nhận của khách hàng dành chương trình "Đổi vỏ chai cũ – nhận sản phẩm mới" (hồi tháng 4/2021) Cocoon tiếp tục thông báo và triển khai hoạt động "Thu hồi pin cũ – Bảo vệ Trái đất xanh" với sự đồng hành của trường ĐH Sư phạm TP.HCM. Chương trình khởi động từ đầu tháng 5/2022 với 85 địa điểm thu hồi pin trên toàn thành phố. Các thùng thu pin được đặt tại các trường học như: trường ĐH SP, trường ĐH Y Dược, trường Lê Hồng Phong… Các quận Đoàn: quận 3, quận 5, Quận 10… hay tại các hệ thống mỹ phẩm như: Glam Beauty, Hasaki, Watson, Guardian, Beauty Box…')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
