import 'package:first_app/chat_bot_page.dart';
import 'package:first_app/contact_page.dart';
import 'package:first_app/meteo_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(
        child: Text("Home Page",
        style: TextStyle(fontSize: 25),),
      )),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage("assets/img1.jpg"),
              ),
            ),
            ListTile(
              title: Text("Home",style: TextStyle(fontSize: 24),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              leading: Icon(Icons.home),
            ),
            ListTile(
              title: Text("Contacts",style: TextStyle(fontSize: 24),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactsPage()));
              },
              leading: Icon(Icons.contacts),
            ),
            ListTile(
              title: Text("Metéo",style: TextStyle(fontSize: 24),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MeteoPage()));
              },
              leading: Icon(Icons.ac_unit_rounded),
            ),
            ListTile(
              title: Text("ChatBot",style: TextStyle(fontSize: 24),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatBotPage()));
              },
              leading: Icon(Icons.mark_unread_chat_alt_rounded),
            ),
            ListTile(
              title: Text("Mask Detection",style: TextStyle(fontSize: 24),),
              onTap: (){

              },
              leading: Icon(Icons.photo_camera),
            ),
          ],
        ),
      ),
    );
  }
}
