import 'package:flutter/material.dart';

class MemberList extends StatefulWidget {
  const MemberList({Key? key}) : super(key: key);

  @override
  State<MemberList> createState() => _MemberListState();
}

class _MemberListState extends State<MemberList> {
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
        title: const Text("Member List"),
      ),
      body: ListView.builder(
          itemCount: member.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                print(member[index]['name']);
              },
              leading: 

              // CircleAvatar(
              //   backgroundImage: NetworkImage(
              //     member[index]['picture'],
              //   ),
              // ),

              // CircleAvatar(
              // child: Text(member[index]['name'][0]),
              // child: Image.network(member[index]['picture']),
              // ),
              
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue,
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
          }),
    );
  }
}
