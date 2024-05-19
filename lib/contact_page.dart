

import 'dart:js_util';

import 'package:flutter/material.dart';

class ContactsPage extends StatefulWidget {
  const ContactsPage({super.key});

  @override
  State<ContactsPage> createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
  List<String> contacts=[];
  TextEditingController textcontroller= new TextEditingController();

  void addToList(){
    contacts.add(textcontroller.text);
  }
  void deleteItem(index){
    contacts.removeAt(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contacts")),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                      width: 1
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.amber,
                          width: 1
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                ),
                controller: textcontroller,
              ),
              MaterialButton(onPressed: (){
               setState(() {
                 addToList();
               });
              },
              child: Text("Ajouter"),
              color: Colors.blueAccent,),
              Expanded(child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index){
                  return Card(
                    child: ListTile(
                      title: Text(contacts[index]),
                      leading: CircleAvatar(
                        child: Text(contacts[index].substring(0,1).toUpperCase()),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            deleteItem(index);
                          });
                        },
                      ),
                    ),
                    elevation: 5,

                  );
              },
              ))

            ],
          ),
        ),
    );
  }
}
