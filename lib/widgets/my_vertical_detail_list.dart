import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyVerticalDetailList extends StatelessWidget {
  final String detailImg;

  const MyVerticalDetailList({Key? key, required this.detailImg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        height: 82,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(19),
          color: const Color(0xFF3E3A6D),
        ),
        child: Row(
          children: [
            Container(
              height: 82,
              width: 99,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: const Color(0xFFDB61A1),
                image: DecorationImage(
                  alignment: Alignment.bottomRight,
                  image: AssetImage(detailImg),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Introduction Design Graphic for Beginner",
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          "12 Minutes",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: const Color(0xFF8C8C8C),
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          height: 20,
                          decoration: BoxDecoration(
                            color: const Color(0xFFEB53A2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            child: Text(
                              "Free",
                              style: GoogleFonts.roboto(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        )
                      ],
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
