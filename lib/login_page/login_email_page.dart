import 'package:flutter/material.dart';
import 'package:my_flutter_app/login_page/otp_page.dart';

class LoginEmailPage extends StatelessWidget {
  LoginEmailPage({super.key});

  final FocusNode focusNode = FocusNode();
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Đăng nhập bằng email'),
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
                decoration: InputDecoration.collapsed(
                  hintText: 'example@gmail.com',
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.4)),
                  border: const UnderlineInputBorder(
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
                    isPhone: false,
                    title: controller.text,
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
