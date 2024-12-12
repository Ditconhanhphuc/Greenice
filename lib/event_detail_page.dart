import 'package:flutter/material.dart';

class EventDetailPage extends StatelessWidget {
  const EventDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/event1.png'),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text(
                      'Tuổi trẻ xứ Dừa vì một “Bến Tre xanh”',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Bạch Thanh • 25/09/2024 - 17:09',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.withOpacity(0.4),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      '(TN&MT) - Thời gian qua, Tỉnh đòan Bến Tre đã tích cực tham gia bảo vệ môi trường (BVMT), ứng phó với biến đổi khí hậu (BĐKH); đặc biệt là các họat động tham gia thực hiện Đề án “Bến Tre xanh” đã tạo được dấu ấn, có sức lan tỏa, thể hiện tinh thần xung kích, tình nguyện của tuổi trẻ xứ Dừa.\nTheo Tỉnh đoàn Bến Tre, thời gian qua, Đoàn các cấp trong tỉnh đã tổ chức triển khai, quán triệt các nội dung cơ bản của Đoàn tham gia Đề án nâng cao nhận thức và năng lực xây dựng Bến Tre xanh để tuyên truyền trong đoàn viên, thanh niên, học sinh, sinh viên về tầm quan trọng của chương trình xây dựng nông thôn mới; tuyên truyền về BVMT, ứng phó với BĐKH; trọng tâm là tuyên truyền các hoạt động hưởng ứng phong trào “Chống rác thải nhựa” nhằm nâng cao nhận thức, thay đổi hành vi, thói quen sử dụng một lần các sản phẩm từ nhựa, túi ni-lông khó phân hủy, góp phần giảm thiểu ô nhiễm môi trường, bảo vệ sức khỏe con người và hệ sinh thái.',
                    ),
                    Image.asset('assets/event2.png'),
                    const Text(
                      'Anh Phan Thanh Trẻ, Phó Bí thư Tỉnh đoàn Bến Tre cho biết: Trong thời gian qua, Tỉnh đoàn đã cùng với Hội LHTN Việt Nam tỉnh triển khai thực hiện nhiều mô hình liên quan đến BVMT, ứng phó với BĐKH trong đoàn viên, hội viên và thanh thiếu niên. Trong đó, có các mô hình tiêu biểu, mang đậm dấu ấn, có sức lan tỏa, thể hiện tinh thần xung kích, tình nguyện của tuổi trẻ xứ Dừa, góp phần cùng địa phương trong việc thực hiện các công trình, phần việc, các tiêu chí xây dựng nông thôn mới, BVMT và ứng phó với BĐKH.\nĐiển hình nhất là mô hình “Đội hình tuyên truyền viên và BVMT cấp tỉnh”. Từ khi thành lập đến nay, Đội hình này cũng đã tổ chức nhiều hoạt động như thu dọn rác ven bờ sông Bến Tre cũng như phát động các hoạt động cổ vũ thực hành lối sống xanh, BVMT trong giới trẻ và cộng đồng như các mô hình sân chơi tái chế, vận động tiểu thương chợ Bến Tre cam kết và thay thế túi ni-lông bằng túi thân thiện với môi trường; tổ chức các hoạt động “Đổi rác thải nhựa lấy lồng đèn Trung thu”, “Đổi rác thải nhựa lấy cây xanh”....',
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
