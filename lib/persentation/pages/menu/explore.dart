import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kabar/utils/colors.dart';
import 'package:kabar/persentation/pages/menu/home.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 15, top: 50),
              child: Text(
                "Explore",
                style: GoogleFonts.poppins(
                    color: title_active,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Row(
                children: [
                  Text(
                    "Topic",
                    style: GoogleFonts.poppins(
                        color: title_active, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  Text(
                    "See all",
                    style: GoogleFonts.poppins(color: body_text),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 315,
              child: ListView.builder(
                  padding: const EdgeInsets.only(top: 5),
                  itemCount: 3,
                  itemBuilder: ((context, index) => TemplateListExplore())),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15),
              alignment: Alignment.topLeft,
              child: Text("Popular Topic",
                  style: GoogleFonts.poppins(
                      color: title_active, fontWeight: FontWeight.w600)),
            ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                  padding: const EdgeInsets.only(top: 5),
                  itemCount: 5,
                  itemBuilder: ((context, index) => TemplateTranding())),
            )
          ],
        ),
      ),
    );
  }
}

class TemplateListExplore extends StatelessWidget {
  const TemplateListExplore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 15, top: 10, right: 5),
            alignment: Alignment.topLeft,
            child: SizedBox(
              width: 90,
              height: 90,
              child: Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                child: Image.network(
                  'https://dummyimage.com/600x400/dddddd/fff&text=image',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            width: MediaQuery.of(context).size.width * 0.45,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  child: Text("Lorem Ipsum",
                      style: GoogleFonts.poppins(
                          color: title_active, fontSize: 12)),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, right: 5),
                  alignment: Alignment.topLeft,
                  child: Text(
                      "Get energizing workout moves, healthy recipes...",
                      style: GoogleFonts.poppins(
                          color: title_active, fontSize: 12)),
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            height: 25,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                side: const BorderSide(width: 1, color: primary),
              ),
              onPressed: () {},
              child: Text('Save', style: GoogleFonts.poppins(color: primary)),
            ),
          )
        ],
      ),
    );
  }
}
