import 'package:flutter/material.dart';
import 'package:my_flutter_app/main_page/main_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/signInBg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment:
                MainAxisAlignment.start, // Căn chỉnh nội dung từ trên xuống
            children: [
              const SizedBox(height: 40), // Khoảng cách từ trên cùng đến logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/green_logo.png', height: 100),
                  const SizedBox(width: 20),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 25, left: 0), // Lùi chữ xuống 25 điểm
                    child: Text(
                      'GREENICE',
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                child: Text(
                  'Greenice chào mừng bạn đến với cộng đồng Xanh, hãy cùng nhau lan tỏa và hành động Xanh nhé',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: double
                    .infinity, // Để nút chiếm toàn bộ chiều rộng của phần tử cha
                padding: const EdgeInsets.symmetric(
                    horizontal: 30), // Padding bên trái và bên phải của nút
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD9D9D9), // Màu nền của nút
                    foregroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.zero, // Hình chữ nhật không bo góc
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15), // Padding dọc của nút
                  ),
                  onPressed: () {
                    // Handle login with phone
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ));
                  },
                  child: const Text(
                    'Đăng nhập bằng số điện thoại',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD9D9D9), // Màu nền của nút
                    foregroundColor: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.zero, // Hình chữ nhật không bo góc
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15), // Padding dọc của nút
                  ),
                  onPressed: () {
                    // Handle login with email
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const MainPage(),
                    ));
                  },
                  child: const Text(
                    'Đăng nhập bằng email',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
