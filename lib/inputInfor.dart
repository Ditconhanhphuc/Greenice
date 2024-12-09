import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatefulWidget {
  @override
  _PersonalInfoScreenState createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  bool isChecked = false; // Trạng thái của checkbox

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
                  padding: const EdgeInsets.only(top: 10, bottom: 10, right: 60, left: 60),
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
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
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
                      // Hoàn tất Button
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: isChecked ? () {
                          // Thực hiện hành động khi bấm nút "Hoàn tất"
                          print("Hoàn tất đã được nhấn");
                        } : null, // Disable the button if checkbox is not checked
                        child: Text(
                          "Hoàn tất",
                          style: TextStyle(color: Colors.black), // Set text color to black
                        ),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(100, 50), // Set exact width and height
                          backgroundColor: Color(0xFF8FCEA3), // Button background color
                          padding: EdgeInsets.only(left: 100, right: 100),
                        ),
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

  Widget _buildAvatarSelector() {
    return Padding(
      padding: const EdgeInsets.only(right: 150),
      child: Container(
        width: 120, // Fixed width
        height: 120, // Fixed height
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
            SizedBox(height: 8),
            Text(
              "+ Thêm ảnh từ thư viện",
              style: TextStyle(color: Colors.black, fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
