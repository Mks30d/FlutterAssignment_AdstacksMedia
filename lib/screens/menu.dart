import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Menu extends StatelessWidget {

  Icon icon1 = Icon(Icons.add);

  Widget profileSection() {
    return Padding(
      padding: const EdgeInsets.all(11.0),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/female.jpg"),
            radius: 20,
            backgroundColor: Colors.red,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("Pooja Mishra"),
          ),

          //button outlined button
          OutlinedButton(
              onPressed: () {
                print("Clicked..");
              },
              style: OutlinedButton.styleFrom(
                  minimumSize: Size(50, 30)
              ),
              child: Text("Admin", style: TextStyle(fontSize: 10),)
          ),
        ],
      ),
    );
  }

  Widget divider() {
    return Divider(
      color: Colors.grey,
      thickness: 1,
      height: 1,
      indent: 8,
      endIndent: 8,
    );
  }

  Widget listTile(Icon icon, String text) {
    return ListTile(
      minTileHeight: 35,
      leading: icon,
      title: Text(text, style: TextStyle(fontSize: 12),),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Center(
                child: Padding(
                  padding: EdgeInsets.all(11.0),
                  child: Image(
                    image: AssetImage("assets/images/logo.png"),
                    height: 30,
                  ),
                ),
              ),

              divider(),

              //==================================================
              profileSection(),

              divider(),

              //===============================================
              listTile(Icon(Icons.home_outlined, size: 20,), "Home"),
              listTile(Icon(Icons.groups, size: 20,), "Employees"),
              listTile(Icon(Icons.toc_outlined, size: 20,), "Attendance"),
              listTile(Icon(Icons.calendar_month, size: 20,), "Summary"),
              listTile(Icon(Icons.info_outline, size: 20,), "Information"),

              //=======================================================
              Container(
                color: const Color(0xffe3e9fe),
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("WORKSPACES",
                      style: TextStyle(fontWeight: FontWeight.bold),),

                    Icon(Icons.add, size: 18, color: Colors.black,)
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Adstacks"),
                    SizedBox(width: 35,),
                    Icon(Icons.keyboard_arrow_down_sharp),
                    SizedBox(width: 22,),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Finance"),
                  SizedBox(width: 45,),
                  Icon(Icons.keyboard_arrow_down_sharp),
                  SizedBox(width: 22,),
                ],
              ),


            ],
          ),

          //=================Lower Section=================
          Column(
            children: [
              // Row(
              //   // mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Icon(Icons.settings, size: 20,),
              //     SizedBox(width: 11,),
              //     Text("Setting", style: TextStyle(fontSize: 12)),
              //   ],
              // ),

              listTile(Icon(Icons.settings, size: 20,), "Setting"),
              listTile(Icon(Icons.logout, size: 20,), "Logout"),
              SizedBox(height: 21,)
            ],
          )
        ],
      ),
    );
  }
}
