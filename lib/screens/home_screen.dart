import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_freebies/screens/course_detailscreen.dart';
import 'package:slicing_freebies/widgets/my_horizontal_list.dart';
import 'package:slicing_freebies/widgets/my_vertical_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          physics: const BouncingScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Online',
                  style: GoogleFonts.roboto(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Master class',
                  style: GoogleFonts.roboto(
                      fontSize: 36,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 22),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CourseDetailScreen(),
                    ));
              },
              child: SizedBox(
                height: 349,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const MyHorizontalList(
                      courseHeadline: 'Reccomended',
                      courseImage: 'assets/images/img_saly10.png',
                      courseTittle: 'UI/UX DESIGNER \nBEGINNER',
                      endColor: 0xff534ea7,
                      startColor: 0xff9288e4,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 34),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free Online Class',
                  style: GoogleFonts.roboto(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'From over 80 lectures',
                  style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: const Color(0xFF9C9A9A),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return const MyVertialList(
                  courseDuration: '8 Hourse',
                  courseImage: 'assets/images/img_saly24.png',
                  courseRating: 5.0,
                  courseTittle: 'Flutter Developer',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
