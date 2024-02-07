import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ImageUrl =
        "https://th.bing.com/th/id/OIP.0CZd1ESLnyWIHdO38nyJDAAAAA?rs=1&pid=ImgDetMain";
    return Drawer(
      child: Container(
         color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                 margin: EdgeInsets.zero,
                accountName: Text("Harsh Tripathi"),
                accountEmail: Text("mynameisharsh143@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(ImageUrl)),
               
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,
              color: Colors.white,
              ),
              title: Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),)

            ),

            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,
              color: Colors.white,
              ),
              title: Text("Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),)

            ),

            ListTile(
              leading: Icon(CupertinoIcons.mail,
              color: Colors.white,
              ),
              title: Text("Email",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),)

            )
          ],
        ),
      ), //data in type of list can be accessed
    );
  }
}
