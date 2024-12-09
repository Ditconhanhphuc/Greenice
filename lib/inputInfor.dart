import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/signInBg.png'), // Add your background image here
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Form Content
          SingleChildScrollView(
            child: Column(
              children: [
                // Green Header with Text
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 60, bottom: 10),
                  color: Color(0xFFA3D5A4), // Match the green shade
                  child: Text(
                    "Thiết lập thông tin cá nhân",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 20),
                      // Form fields
                      _buildTextField("Tên của bạn"),
                      _buildTextField("Ngày/tháng/năm sinh"),
                      _buildTextField("Địa chỉ email"),
                      _buildTextField("Mật khẩu", obscureText: true),
                      _buildTextField("Xác nhận mật khẩu", obscureText: true),
                      SizedBox(height: 10),
                      // Avatar selection
                      _buildAvatarSelector(),
                      SizedBox(height: 10),
                      // Agreement
                      Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (bool? value) {},
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                text: "Đồng ý với ",
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    text: "Điều khoản sử dụng",
                                    style: TextStyle(
                                      color: Color(0xFF1AB91D),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(text: " và "),
                                  TextSpan(
                                    text: "Chính sách bảo mật",
                                    style: TextStyle(
                                      color: Color(0xFF1AB91D),
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                  TextSpan(text: " của Greenice"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper to build a text field
  Widget _buildTextField(String label, {bool obscureText = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.black),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
        ),
      ),
    );
  }

  // Helper to build the avatar selector
  Widget _buildAvatarSelector() {
    return Padding(
      // alignment: Alignment.start, // Ensures the container is centered horizontally
      padding: const EdgeInsets.only(left: 16.0),
      child: Container(
        width: 120, // Correct width
        height: 120, // Correct height
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centers icon and text vertically
          children: [
            Icon(
              Icons.camera_alt,
              size: 50,
              color: Colors.black,
            ),
            SizedBox(height: 8), // Space between icon and text
            Text(
              "+ Thêm ảnh từ thư viện",
              style: TextStyle(color: Colors.black, fontSize: 10), // Smaller font size
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
