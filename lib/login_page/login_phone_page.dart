import 'package:flutter/material.dart';
import 'package:my_flutter_app/login_page/otp_page.dart';

class LoginPhonePage extends StatelessWidget {
  LoginPhonePage({super.key});

  final FocusNode focusNode = FocusNode();
  final TextEditingController controller = TextEditingController(text: '+84 ');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Đăng nhập bằng số điện thoại'),
          const SizedBox(
            height: 60,
          ),
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                focusNode: focusNode,
                controller: controller,
                onTapOutside: (event) => focusNode.unfocus(),
                decoration: const InputDecoration.collapsed(
                  hintText: '',
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(170, 52),
              shape: const RoundedRectangleBorder(),
              backgroundColor: const Color(0xff4D764E),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => OtpPage(
                    isPhone: true,
                    title: '0${controller.text.split(' ')[1]}',
                  ),
                ),
              );
            },
            child: const Text(
              'Đăng nhập',
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(170, 52),
              shape: const RoundedRectangleBorder(),
              backgroundColor: const Color(0xff4D764E),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Quay lại',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
