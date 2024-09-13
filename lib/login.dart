import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/green_logo.png', height: 100), // Add your logo here
              SizedBox(height: 20),
              Text(
                'GREENICE',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Greenice chào mừng bạn đến với cộng đồng Xanh, hãy cùng nhau lan tỏa và hành động Xanh nhé',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Handle login with phone
                },
                child: Text('Đăng nhập bằng số điện thoại'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle login with email
                },
                child: Text('Đăng nhập bằng số email'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
