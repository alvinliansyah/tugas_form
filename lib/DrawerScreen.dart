import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Muchammad Alvin Amrilliansyah"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/DSC_5621 copy.jpg"),
            ),
            accountEmail: Text("alvinamrilliansyah@gmail"),
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "newGroup",
            ontilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.lock,
            title: "new Secret Group",
            ontilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.notifications,
            title: "My Channel chat",
            ontilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.contacts,
            title: "contacts",
            ontilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.bookmark_border,
            title: "Saved Message",
            ontilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.phone,
            title: "Calls",
            ontilePressed: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String title;
  final VoidCallback ontilePressed;

  const DrawerListTile({Key key, this.iconData, this.title, this.ontilePressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
