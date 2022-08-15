import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_freebies/widgets/app_icon.dart';
import 'package:slicing_freebies/widgets/my_vertical_detail_list.dart';

class CourseDetailScreen extends StatefulWidget {
  const CourseDetailScreen({Key? key}) : super(key: key);

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 392,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(1, 0.0),
                      colors: <Color>[
                        Color(0xFFF4C465),
                        Color(0xFFC63956),
                      ],
                    ),
                    image: DecorationImage(
                      alignment: Alignment.bottomRight,
                      image: AssetImage('assets/images/img_saly36_detail.png'),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const AppIcon(icon: Icons.arrow_back_ios)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 22,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RatingBar.builder(
                    initialRating: 5,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 18,
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Color(0xFFF4C465),
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const SizedBox(height: 11),
                  Text(
                    "Graphic Design Master for Everyone",
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.roboto(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 29),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 112.5,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/img_user1.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 20,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/img_user2.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 44,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/img_user3.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 68,
                                  child: Container(
                                    height: 45,
                                    width: 45,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/img_user4.png'),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 14),
                          Text(
                            "+28 Members",
                            style: GoogleFonts.roboto(
                                fontSize: 18,
                                color: const Color(0xFFCACACA),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Container(
                        height: 47,
                        width: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xFF353567),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 12),
                          child:
                              SvgPicture.asset('assets/images/icon_like.svg'),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 51,
            ),
            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: 10,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return const MyVerticalDetailList(
                    detailImg: 'assets/images/img_saly20.png');
              },
            )
          ],
        ),
      ),
    );
  }
}
