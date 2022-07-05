

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer  extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    const imageUrl="https://media-exp2.licdn.com/dms/image/C4E03AQERvG-2rsL1Fg/profile-displayphoto-shrink_400_400/0/1638638213012?e=1662595200&v=beta&t=vkmQb9nThlg8flZhHxr9-tx3FL4tRYOiCARwCxF4OOc";

  
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
           padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              padding:EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,accountName: Text("Pranav Singh"),
                decoration: BoxDecoration(
                 color: Colors.white,
                ),
                accountEmail: Text("mailsandstuffs@gmail.com"),
                
                currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
                 ),          
                ),
                ),
      
                ListTile(
                  leading: Icon(CupertinoIcons.home, color: Colors.white),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style:TextStyle(
                  color: Colors.white,
              ),
              ),
              ),
                 ListTile(
                  leading: Icon(CupertinoIcons.profile_circled, color: Colors.white),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style:TextStyle(
                  color: Colors.white,
              ),
              ),
              )
          ],
        ),
      ),
    );
  }
}