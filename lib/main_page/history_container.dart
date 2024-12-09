import 'package:flutter/material.dart';

class HistoryContainer extends StatelessWidget {
  const HistoryContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Container(
        width: double.infinity,
        height: 186,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: const Color(0xffFBF6DF),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: Colors.grey.withOpacity(0.5),
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 2 + 20,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                  topLeft: Radius.circular(24),
                ),
                color: const Color(0xffBAEBC8),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    color: Colors.grey.withOpacity(0.5),
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Text(
                'Lịch sử đóng góp',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '02/10/24 18:27',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '24/12/24 09:24',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '13/11/24 19:27',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '2 chai PET',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '1 hũ THUỶ TINH',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '2 hũ THUỶ TINH',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
