import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHorizontalList extends StatelessWidget {
  final String courseHeadline, courseTittle, courseImage;
  final int startColor, endColor;
  const MyHorizontalList({
    Key? key,
    required this.courseHeadline,
    required this.courseImage,
    required this.courseTittle,
    required this.endColor,
    required this.startColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 26),
      child: Container(
        width: 246,
        // height: 349,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: const Alignment(1, 0.0),
            colors: <Color>[
              Color(startColor),
              Color(endColor),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 11,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 39,
                decoration: BoxDecoration(
                  color: const Color(0xFFAFA8EE),
                  borderRadius: BorderRadius.circular(36),
                ),
                child: Text(
                  courseHeadline,
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 80,
              left: 14,
              child: Text(
                courseTittle,
                style: GoogleFonts.roboto(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                courseImage,
                scale: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
