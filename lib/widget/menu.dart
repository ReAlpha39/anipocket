import 'package:anipocket/views/pop-up_logout.dart';
import 'package:anipocket/views/season_view.dart';
import 'package:anipocket/views/top_anime_view.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30, bottom: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.wallpaperscraft.com/image/anime_face_hair_mask_85079_300x168.jpg"),
                            fit: BoxFit.fill)),
                  ),
                  Text(
                    "Muhammad Miftah",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  Text(
                    "muhammadmiftah998@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
              title: Text("Top Anime"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TopAnimeView()));
              }),
          ListTile(
            title: Text("Seasonal Anime"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SeasonView()));
            },
          ),
          ListTile(
            title: Text("Setting"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Dark Theme"),
            trailing: Switch(
              value: false,
              onChanged: (chnageTheme) {},
            ),
          ),
          ListTile(
            title: Text("Logout"),
            onTap: () async {
              final action = await Dialogs.yesAbortDialog(
                  context, 'Logout', 'Apakah anda yakin ingin logout?');
            },
          )
        ],
      ),
    );
  }
}
