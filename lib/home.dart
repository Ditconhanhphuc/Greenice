import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top bar with icons
            _buildTopBar(),

            // Dashboard Section
            _buildDashboardSection(),

            // Knowledge & Education Section
            _buildKnowledgeSection(),

            // News & Events Section
            _buildNewsSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Container(
        color: const Color(0xFF7CB98D), // Sử dụng mã màu HEX
        padding: const EdgeInsets.only(
            top: 70, bottom: 30), // Di chuyển biểu tượng xuống dưới
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.center, // Giảm khoảng cách giữa các icon
          children: [
            _buildIconWithBackground('assets/topIcon1.png', 'Đổi quà'),
            const SizedBox(width: 34), // Thêm khoảng cách nhỏ giữa các icon
            _buildIconWithBackground('assets/topIcon2.png', 'Địa điểm'),
            const SizedBox(width: 34), // Thêm khoảng cách nhỏ giữa các icon
            _buildIconWithBackground('assets/topIcon3.png', 'Điểm Xanh'),
          ],
        ),
      ),
    );
  }

  Widget _buildIconWithBackground(String assetPath, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white, // Nền trắng
            borderRadius: BorderRadius.circular(20), // Giảm bo góc
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              assetPath,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.white, // Đổi màu chữ thành trắng
          ),
        ),
      ],
    );
  }

  Widget _buildDashboardSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Tiêu đề "Dashboard"
        const Padding(
          padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
              bottom: 0), // Căn lề ngang cho tiêu đề
          child: Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Color(0xFF4D5350),
            ),
          ),
        ),
        const SizedBox(height: 10), // Khoảng cách giữa tiêu đề và box lớn
        // Box lớn
        Container(
          margin: const EdgeInsets.symmetric(
              vertical: 0, horizontal: 20), // Thêm margin ngang
          padding:
              const EdgeInsets.only(left: 30, right: 30, top: 14, bottom: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFBAEBC8),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  // Dòng chữ PET
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 44, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Text(
                      'PET',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8), // Khoảng cách giữa chữ và hình
                  // Hình ảnh
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: const Color(0xFFBAEBC8), // Màu nền nhẹ nhàng
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/home1.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                  width:
                      30), // Khoảng cách giữa phần bên trái và nội dung bên phải
              // Nội dung bên phải
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildDashboardItem('assets/increase.png', '1000', 'kg'),
                    const SizedBox(height: 16),
                    _buildDashboardItem('assets/decrease.png', '1800', 'kg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDashboardItem(String assetPath, String value, String unit) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Icon
        SizedBox(
          width: 40,
          height: 40,
          child: Center(
            child: Image.asset(assetPath, width: 32, height: 32),
          ),
        ),
        const SizedBox(width: 8),
        // Text
        Row(
          children: [
            Text(
              value,
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
            const SizedBox(width: 4),
            Text(
              unit,
              style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.normal,
                  color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildKnowledgeSection() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tiêu đề
          const Text(
            'Kiến Thức & Giáo Dục',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color(0xFF4D5350)),
          ),
          const SizedBox(height: 10),
          // Box hình vuông
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildImageBox('assets/home2.png'),
              _buildImageBox('assets/home2.png'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildImageBox(String imagePath) {
    return Container(
      width: 180,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildNewsSection() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Dòng tiêu đề "Tin Tức & Sự Kiện"
          const Text(
            'Tin Tức & Sự Kiện',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Color(0xFF4D5350),
            ),
          ),
          const SizedBox(height: 10), // Khoảng cách giữa tiêu đề và hình ảnh
          // Container chứa hình ảnh
          Container(
            height: 200, // Chiều cao cố định cho hình ảnh
            decoration: BoxDecoration(
              color: Colors.orange[50], // Màu nền nhẹ nhàng
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              'assets/home3.png', // Thay đổi đường dẫn ảnh theo nhu cầu
              fit: BoxFit.cover, // Làm ảnh phủ kín container
            ),
          ),
        ],
      ),
    );
  }
}
