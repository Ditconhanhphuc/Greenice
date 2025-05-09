import 'package:flutter/material.dart';

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Illustration (replace with your actual asset)
          Image.asset(
            'assets/intro1.png', // Path to your illustration image
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Cung cấp dịch vụ thu gom và phân loại tài nguyên',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Hỗ trợ cung cấp dịch vụ thu gom và quản lí danh cho doanh nghiệp, và cá nhân. Phân loại các sản phẩm thu gom tài nguyên đảm bảo tính minh bạch và đúng tiêu chuẩn tái chế theo pháp luật hiện hành',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
