import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kabar/menu/menu.dart';

import '../helper/colors.dart';

class Lastest extends StatefulWidget {
  const Lastest({super.key});

  @override
  State<Lastest> createState() => _LastestState();
}

class _LastestState extends State<Lastest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leadingWidth: 100,
            leading: Image.asset(
              "assets/images/logo.png",
            ),
            title: Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Spacer(),
                const Card(
                  shadowColor: Colors.white,
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 25,
                    color: body_text,
                  ),
                )
              ],
            ),
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15, top: 10),
                    child: Text(
                      "Lastest",
                      style: GoogleFonts.poppins(
                          color: title_active,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: const EdgeInsets.only(right: 15, top: 15),
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "See all",
                        style: GoogleFonts.poppins(
                            color: body_text,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
              _tabSection(context)
            ],
          ),
        ));
  }
}

Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 7,
    child: Column(
      children: <Widget>[
        const TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            labelColor: body_text,
            tabs: [
              Tab(text: "All"),
              Tab(text: "Sports"),
              Tab(text: "Politics"),
              Tab(text: "Bussiness"),
              Tab(text: "Health"),
              Tab(text: "Travel"),
              Tab(text: "Science"),
            ]),
        SizedBox(
          //Add this to give height
          height: MediaQuery.of(context).size.height * 0.7,
          child: TabBarView(children: [
            SizedBox(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => TemplateListView(context),
              ),
            ),
            Container(
              child: const Text("Articles Body"),
            ),
            Container(
              child: const Text("User Body"),
            ),
            Container(
              child: const Text("User Body"),
            ),
            Container(
              child: const Text("User Body"),
            ),
            Container(
              child: const Text("User Body"),
            ),
            Container(
              child: const Text("User Body"),
            ),
          ]),
        ),
      ],
    ),
  );
}

Container TemplateListView(BuildContext context) {
  return Container(
    alignment: Alignment.topCenter,
    margin: const EdgeInsets.only(left: 15, top: 10, right: 15),
    child: Row(children: [
      Container(
        alignment: Alignment.topLeft,
        child: SizedBox(
          width: 100,
          height: 90,
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            child: Image.network(
              'https://ichef.bbci.co.uk/news/976/cpsprodpb/AF92/production/_124164944_gettyimages-501782322.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width / 2,
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.only(left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Europe",
              style: GoogleFonts.poppins(color: body_text, fontSize: 12),
            ),
            Text(
              "Ukraine's President Zelensky to BBC: Blood money being paid...",
              style: GoogleFonts.poppins(
                  color: title_active,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 2),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/en/thumb/f/ff/BBC_News.svg/2560px-BBC_News.svg.png"),
                    maxRadius: 8,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 5, right: 10),
                  child: Text(
                    "BBC News",
                    style: GoogleFonts.poppins(
                        color: body_text,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ),
                const Icon(
                  Icons.timelapse_outlined,
                  size: 15,
                  color: body_text,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 2),
                  child: Text(
                    "4h ago",
                    style: GoogleFonts.poppins(
                        color: body_text, fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            )
          ],
        ),
      )
    ]),
  );
}
