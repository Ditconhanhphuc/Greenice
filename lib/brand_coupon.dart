import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandVoucher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFB9D652),
        elevation: 0,
        title: Text(
          'VOUCHER',
          style: GoogleFonts.luckiestGuy(
            textStyle: const TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
      ),
      body: Stack(
        children: [
          // Nền trắng
          Container(
            color: Colors.white,
          ),
          // Layer bo góc màu xanh và form
          Align(
            alignment: Alignment.topCenter,
            child: SingleChildScrollView(
              // Cho phép cuộn nội dung
              child: Container(
                margin: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFD4E59D), // Màu xanh #AED140
                  borderRadius: BorderRadius.circular(16.0),
                ),
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildTextField(label: 'ID', initialValue: 'GHSK8192', enabled: false),
                    const SizedBox(height: 20),
                    _buildTextField(label: 'TÊN'),
                    const SizedBox(height: 20),
                    _buildTextField(label: 'ĐIỀU KIỆN ÁP DỤNG'),
                    const SizedBox(height: 20),
                    _buildTextField(label: 'MÔ TẢ', maxLines: 3),
                    const SizedBox(height: 20),
                    _buildTextField(label: 'TỈ LỆ GIẢM'),
                    const SizedBox(height: 20),
                    _buildTextField(label: 'NGÀY BẮT ĐẦU'),
                    const SizedBox(height: 20),
                    _buildTextField(label: 'NGÀY KẾT THÚC'),
                    const SizedBox(height: 30), // Khoảng cách trước nút bấm
                    Align(
                      alignment: Alignment.center, // Căn giữa nút
                      child: ElevatedButton(
                        onPressed: () {
                          _addVoucherToDatabase();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFB9D652), // Màu xanh của button
                          padding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 30.0,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        child: const Text(
                          'THÊM VOUCHER',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    String? initialValue,
    bool enabled = true,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        TextFormField(
          initialValue: initialValue,
          enabled: enabled,
          maxLines: maxLines,
          style: const TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 12.0,
            ),
          ),
        ),
      ],
    );
  }

  void _addVoucherToDatabase() {
    // Hàm xử lý thêm voucher vào database
    // Bạn có thể thay thế logic này bằng API hoặc phương thức lưu vào database thực tế.
    print("Voucher đã được thêm vào database!");
  }
}

void main() {
  runApp(MaterialApp(
    home: BrandVoucher(),
    debugShowCheckedModeBanner: false,
  ));
}
