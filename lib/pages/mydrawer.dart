import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final String imageUrl = "https://i.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI";
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
          color: Colors.purple,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  currentAccountPicture : CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                accountName: Text("Kunal kolhe"),
                accountEmail: Text("Kunalkohle.07@gmail.com"),

              ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.home,
                color: Colors.white,),
                title: Text("Home",style: TextStyle(fontSize: 18,color: Colors.white),),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.profile_circled,
                  color: Colors.white,),
                title: Text("Profile",style: TextStyle(fontSize: 18,color: Colors.white),),
              ),
            ],
          ),
        )

    );
  }
}
