import 'package:flutter/material.dart';

class CenterPortionSecondpart extends StatelessWidget {
  const CenterPortionSecondpart({super.key});

  Widget creatorDetails(String id, String artworks, int rating) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/profilepic.jpg"),
              radius: 10,
              backgroundColor: Colors.white,
            ),
            SizedBox(width: 5,),
            Text(id,
                style: TextStyle(
                  color: Colors.white,
                    fontSize: 11
                )),
          ],
        ),
        Text(artworks,
            style: TextStyle(
              color: Colors.white,
              fontSize: 11
            )),
        // LinearProgressIndicator(
        //   color: Colors.yellowAccent,
        // )
        SizedBox(
          width: 50, // Adjust width as needed
          child: LinearProgressIndicator(
            value: rating / 10,
            color: Color(0xff734FFA),
            backgroundColor: Color(0xff273156),
            minHeight: 5,
          ),
        ),
      ],
    );
  }

  Widget projectDetails() {
    return Container(
      width: 370,
      decoration: BoxDecoration(
          color: Color(0xff1B254B), borderRadius: BorderRadius.circular(11)),
      child: const ListTile(
        minTileHeight: 30,
        hoverColor: Colors.yellowAccent,
        leading: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Image(
            image: AssetImage("assets/images/avatar.jpeg"),
            height: 30,
          ),
        ),
        title: Text(
          "Technology behind the Blockchain",
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        ),
        subtitle: Row(
          children: [
            Text(
              "Project #1  -  ",
              style: TextStyle(
                fontSize: 10,
                color: Colors.white,
              ),
            ),
            Text(
              "See project details",
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white,
                  decorationThickness: 2),
            )
          ],
        ),
        trailing: Icon(
          Icons.edit,
          size: 18,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 800,
      decoration: BoxDecoration(
          color: Colors.green, borderRadius: BorderRadius.circular(11)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ==============Second half===================
          Container(
            width: 390,
            decoration: BoxDecoration(
                color: Color(0xff111C44),
                borderRadius: BorderRadius.circular(11)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22),
                      child: Text(
                        "All Projects",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )),
                projectDetails(),
                projectDetails(),
                projectDetails(),
              ],
            ),
          ),

          // ==============Second half===================
          Container(
            width: 390,
            padding: EdgeInsets.only(left: 15, right: 30, top: 5, bottom: 5),
            decoration: BoxDecoration(
              color: Color(0xff111C44),
              borderRadius: BorderRadius.circular(11),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Top Creators",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      )),
                ),
                Container(
                  color: Color(0xff1B254B),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Name",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      Text("                 Artworks",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      Text("Rating",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                creatorDetails("@maddison_c21", "9821", 9),
                creatorDetails("@karlwill01        ", "7032", 8),
                creatorDetails("@maddison_c21", "9821", 9),
                creatorDetails("@maddison_c21", "9821", 9,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
