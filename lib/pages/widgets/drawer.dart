import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);
  final url = "https://therecord.media/wp-content/uploads/2021/10/hoodie-hacker.jpg";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
             DrawerHeader(
               padding: EdgeInsets.zero,
               margin: EdgeInsets.zero,
             
              child: UserAccountsDrawerHeader(
                accountEmail: const Text("Shiv@gmail.com"),
                 accountName: const Text("Shiv"),
                 decoration: const BoxDecoration(color: Colors.blue),
                currentAccountPicture:CircleAvatar(backgroundImage: NetworkImage(url),) ,
                
                )
                ),
                const ListTile(
                  leading: Icon(
                    CupertinoIcons.home,color: Colors.white,
                    ),
                  title: Text(
                    "Home",
                    textScaleFactor: 1.3,
                    style: TextStyle(color: Colors.white),),
                ),
                const ListTile(
                  leading: Icon(CupertinoIcons.return_icon,color: Colors.white,),
                  title:  Text("Retrun" ,textScaleFactor: 1.3,style: TextStyle(color: Colors.white),),
                ),
                const ListTile(
                  leading: Icon(CupertinoIcons.profile_circled,color:Colors.white),
                   title:  Text("Profie" ,textScaleFactor: 1.3,style: TextStyle(color: Colors.white),),
                )
          ],
        ),
      ),      
    );
  }
}