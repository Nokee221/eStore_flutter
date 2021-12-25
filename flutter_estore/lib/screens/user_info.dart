import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  UserInfo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: userTitle("User info"),
          ),
          Divider(thickness: 1, color: Colors.grey,),
          userListTile('Email' , 'Your Email' , 0 , context),
          userListTile('Phone' , 'Your Phone' , 1 , context),
          userListTile('Shipping Address' , 'Your address' , 2 , context),
          userListTile('Joined Date' , 'Date ' , 3 , context),
        ],
      )
      
    );
  }

  List<IconData> _userTileIcons = [
    Icons.email,
    Icons.phone,
    Icons.local_shipping,
    Icons.watch_later,
    Icons.exit_to_app_rounded,
  ];

  Widget userListTile(String title,String subTitles, int index,  BuildContext context)
  {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          splashColor: Theme.of(context).splashColor ,
          child: ListTile(
            onTap: (){},
            title: Text(title),
            subtitle: Text(subTitles),
            leading: Icon(_userTileIcons[index]),
          ),
        ),
    );
  }

  Widget userTitle(String title)
  {
    return 
    Text(
      title,
      style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 23,
      color: Colors.black
      ),
    );
  }
}