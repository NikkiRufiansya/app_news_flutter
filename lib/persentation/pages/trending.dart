import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:kabar/utils/colors.dart';
import 'package:kabar/persentation/pages/menu/home.dart';

class Trending extends StatefulWidget {
  const Trending({super.key});

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15, top: 50),
                  child: const Icon(
                    Icons.arrow_back,
                    color: title_active,
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(left: 15, top: 50),
                  child: Text(
                    "Trending",
                    style: GoogleFonts.poppins(
                        color: title_active,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(left: 15, top: 50, right: 15),
                  child: const Icon(
                    Icons.more_vert,
                    color: title_active,
                  ),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.86,
              child: ListView.builder(
                  padding: const EdgeInsets.only(top: 15),
                  itemCount: 10,
                  itemBuilder: ((context, index) => const TemplateTranding())),
            )
          ],
        ),
      ),
    );
  }
}
