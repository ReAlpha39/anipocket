import 'package:anipocket/app_theme.dart';
import 'package:anipocket/bloc/theme_bloc.dart';
import 'package:anipocket/bloc/theme_event.dart';
import 'package:anipocket/redux/action.dart';
import 'package:anipocket/redux/store.dart';
import 'package:anipocket/views/pop-up_logout.dart';
import 'package:anipocket/views/season_view.dart';
import 'package:anipocket/views/top_anime_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Color.fromARGB(255, 7, 48, 66),
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
              store.dispatch(getSeasonAnime());
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
                value: isSwitched,
                onChanged: (value) {
                  isSwitched = value;
                  print(value);
                  setState(() {});
                  if (value == true) {
                    BlocProvider.of<ThemeBloc>(context)
                    .add(ThemeChanged(theme: AppTheme.DarkTheme));
                  } else {
                    BlocProvider.of<ThemeBloc>(context)
                    .add(ThemeChanged(theme: AppTheme.LightTheme));
                  }
                },
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
