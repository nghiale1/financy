import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.transparent,
      child: Stack(
        children: [
          SizedBox(
            height: 300, // Chiều cao của Stack
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  width: 343,
                  height: 198,
                  child: Transform.rotate(
                    angle: -8 * 3.14159265359 / 180,
                    child: Image.asset(
                      'assets/images/card1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  width: 343,
                  height: 198,
                  child: Transform.rotate(
                    angle: 8 * 3.14159265359 / 180,
                    child: Image.asset(
                      'assets/images/card2.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  width: 343,
                  height: 198,
                  child: Transform.rotate(
                    angle: 0 * 3.14159265359 / 180,
                    child: Stack(alignment: Alignment.topLeft, children: [
                      Image.asset(
                        'assets/images/card3.png',
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24, top: 28),
                          child: Text(
                            'ISHAQUE HASSAN', // Nội dung chữ
                            style: TextStyle(
                                color: Colors.black, // Màu chữ
                                fontSize: 15, // Kích thước chữ
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 190, top: 60),
                          child: Text(
                            '5138', // Nội dung chữ
                            style: TextStyle(
                                color: Colors.black, // Màu chữ
                                fontSize: 18, // Kích thước chữ
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24, top: 150),
                          child: Text(
                            '120,000,000 VNĐ', // Nội dung chữ
                            style: TextStyle(
                                color: Colors.black, // Màu chữ
                                fontSize: 18, // Kích thước chữ
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins'
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
