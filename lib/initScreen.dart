import 'package:flutter/material.dart';
import 'login.dart';

class InitScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Lấy chiều cao của màn hình
    double screenHeight = MediaQuery.of(context).size.height;

    // Chiều cao của nút "BẮT ĐẦU"
    double buttonHeight = 34.0 * 2; // Padding trong Container của button (vertical: 34)

    return Scaffold(
      body: Container(
        color: Colors.white, // Background color
        child: Column(
          children: <Widget>[
            // Nội dung chính: logo và mô tả
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: buttonHeight), // Thêm khoảng trống dưới cùng để trừ đi chiều cao của button
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Căn giữa theo chiều dọc
                  children: [
                    // Logo (replace with your actual asset)
                    Image.asset(
                      'assets/green_logo.png', // Path to your logo image
                      height: 257,
                      width: 280,
                    ),
                    SizedBox(height: 40),
                    Text(
                      'GREENICE',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Nền tảng hỗ trợ quản lí thu gom chai lọ mỹ phẩm',
                        style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Nút "Bắt đầu" sẽ nằm ở dưới cùng
            Container(
              width: double.infinity,
              color: Color(0xFF8FCEA3), // Button background color
              padding: const EdgeInsets.symmetric(vertical: 34),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text(
                  'BẮT ĐẦU',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white, // Text color
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
