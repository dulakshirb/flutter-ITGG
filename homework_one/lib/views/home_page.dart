import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 15,
                right: 30,
                bottom: 35,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      colorBox(color: Colors.red),
                      Row(
                        children: [
                          colorBox(color: Colors.yellow),
                          const SizedBox(
                            width: 30,
                          ),
                          colorBox(color: Colors.blue),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'THE LONG WAIT IS OVER',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    'New Collection',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  appImage(imgName: 'car_one.jpg'),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'A thoughtful \ncombination of \ndesign and \nfunction.',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        height: 1.1,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      appButton(btnText: 'shop'),
                      const SizedBox(
                        width: 25,
                      ),
                      appButton(btnText: 'contact'),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                top: 25,
                right: 30,
                bottom: 15,
              ),
              child: Column(
                children: [
                  appImage(imgName: 'car_two.jpeg'),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      colorBox(color: Colors.red),
                      colorBox(color: Colors.yellow),
                      colorBox(color: Colors.purple),
                      colorBox(color: Colors.blue),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded appButton({required String btnText}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
          shape: WidgetStatePropertyAll(BeveledRectangleBorder()),
        ),
        child: Text(
          btnText,
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Image appImage({required String imgName}) {
    return Image.asset(
      'assets/$imgName',
      height: 130,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Container colorBox({required Color color}) {
    return Container(
      width: 50,
      height: 50,
      color: color,
    );
  }
}
