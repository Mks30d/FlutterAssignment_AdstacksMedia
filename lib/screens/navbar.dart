import 'package:flutter/material.dart';

class DashboardNavbar extends StatelessWidget {
  const DashboardNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22, right: 22),
      child: Row(
        children: [
          Text("Home",
              style: TextStyle(
                color: Colors.grey,
              )
          ),

          SizedBox(width: 560,),
          Container(
            width: 200,
            height: 28,
            child: SearchBar(
              leading: Icon(Icons.search, color: Colors.grey, size: 14,),
              hintText: "Search",
              backgroundColor: WidgetStateProperty.all(Color(0xff2F293E)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              hintStyle: WidgetStateProperty.all(TextStyle(fontSize: 12, color: Colors.grey)),
              textStyle: WidgetStateProperty.all(TextStyle(color: Colors.white)),
            )

          ),
          SizedBox(width: 15,),
          Icon(Icons.today_outlined, color: Color(0xff333D5D)),
          SizedBox(width: 11,),
          Icon(Icons.notification_add_outlined, color: Color(0xff333D5D)),
          SizedBox(width: 11,),
          Icon(
            Icons.lightbulb_circle,
            color: Color(0xff333D5D),
          ),
          SizedBox(width: 50,),
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/avatar.jpeg"),
            radius: 12,
          ),
        ],
      ),
    );
  }
}
