import 'package:flutter/material.dart';

class AddressBook extends StatefulWidget {
  const AddressBook({Key? key}) : super(key: key);

  @override
  State<AddressBook> createState() => _AddressBookState();
}

class _AddressBookState extends State<AddressBook> {
  //https://randomuser.me/api/?results=10
  final List member = [
    {
      "name": "Ram",
      "email": "Ram@gmail.com",
      "picture": "https://randomuser.me/api/portraits/thumb/women/71.jpg"
    },
    {
      "name": "Bob",
      "email": "bob32@gmail.com",
      "picture": "https://randomuser.me/api/portraits/thumb/men/91.jpg"
    },
    {
      "name": "Shyam",
      "email": "shyamjaiswal@gmail.com",
      "picture": "https://randomuser.me/api/portraits/thumb/men/14.jpg"
    },
    {
      "name": "Bob",
      "email": "bob32@gmail.com",
      "picture": "https://randomuser.me/api/portraits/thumb/men/39.jpg"
    },
    {
      "name": "Jai",
      "email": "jai87@gmail.com",
      "picture": "https://randomuser.me/api/portraits/thumb/men/69.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Address Book'),
      ),
      body: ListView.builder(
        itemCount: member.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            // leading:CircleAvatar(child: Text(member[index]['name'][0])),
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(60 / 2),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    member[index]['picture'],
                  ),
                ),
              ),
            ),
            title: Text(member[index]['name']),
            subtitle: Text(member[index]['email']),
            trailing: GestureDetector(
              child: const Icon(Icons.delete),
              onTap: () {
                setState(() {
                  member.removeAt(index);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
