import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  final String title;
  const MySlider({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
      decoration: BoxDecoration(
        color: const Color(0xffBAEBC8),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            color: Colors.grey,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          bottom: 16,
          right: 25,
          top: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 4,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                title.toUpperCase(),
                style: const TextStyle(fontSize: 24),
              ),
            ),
            Row(
              children: [
                Image.asset('assets/background.png'),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffF6AC56),
                          ),
                          child: const Icon(
                            Icons.arrow_upward_outlined,
                            size: 16,
                            color: Color(0xffBAEBC8),
                          ),
                        ),
                        horizontalTitleGap: 8,
                        title: const Text(
                          '1000kg',
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                      ),
                      ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff15CD49),
                          ),
                          child: const Icon(
                            Icons.arrow_downward_sharp,
                            size: 16,
                            color: Color(0xffBAEBC8),
                          ),
                        ),
                        title: const Text(
                          '1800kg',
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                        horizontalTitleGap: 8,
                        dense: true,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
