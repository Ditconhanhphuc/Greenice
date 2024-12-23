// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:my_flutter_app/brand_page/brand_page.dart';
import 'package:my_flutter_app/main_page/main_page.dart';
import 'package:pinput/pinput.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';

class OtpPage extends StatelessWidget {
  final bool isPhone;
  final String title;
  OtpPage({
    super.key,
    required this.isPhone,
    required this.title,
  });

  final TextEditingController controller = TextEditingController();
  final CountdownController countdownController =
      CountdownController(autoStart: true);

  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.white.withOpacity(0.5),
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff245333),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 250,
            child: Text(
              isPhone
                  ? 'Mã xác thưc OTP đã được gửi bằng SMS tới số:'
                  : 'Mã xác thưc OTP đã được gửi qua địa chỉ email:',
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
          Center(
            child: Pinput(
              defaultPinTheme: defaultPinTheme,
              controller: controller,
              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Countdown(
            seconds: 60,
            controller: countdownController,
            build: (BuildContext context, double time) => Text(
              'Hết hạn sau 00:${time.toInt() < 10 ? '0' : ''}${time.toInt().toString()}',
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            interval: const Duration(
              seconds: 1,
            ),
            onFinished: () {},
          ),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(170, 52),
              shape: const RoundedRectangleBorder(),
              backgroundColor: Colors.white,
            ),
            onPressed: () {
              if (controller.text == '1234') {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const MainPage(),
                ));
              } else {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const BrandPage(),
                ));
              }
            },
            child: const Text(
              'Xác nhận OTP',
              style: TextStyle(color: Colors.black),
            ),
          ),
          TextButton(
            style: const ButtonStyle(
              overlayColor: WidgetStatePropertyAll(Colors.transparent),
            ),
            onPressed: () {
              countdownController.restart();
            },
            child: const Text(
              'Chưa nhận được mã OTP',
              style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
