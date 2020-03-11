import 'package:anipocket/bloc/home_bloc.dart';
import 'package:anipocket/bloc/home_event.dart';
import 'package:anipocket/bloc/home_state.dart';
import 'package:anipocket/models/request_type/tops.dart';
import 'package:anipocket/widget/minimal_card_anime.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PreviewMostPopular extends StatefulWidget {
  @override
  _PreviewMostPopularState createState() => _PreviewMostPopularState();
}

class _PreviewMostPopularState extends State<PreviewMostPopular> {
  HomeBloc homeBloc;

  @override
  void initState() {
    super.initState();
    homeBloc = BlocProvider.of<HomeBloc>(context);
    homeBloc.add(FetchData());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Most Populer",
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400))),
                  FlatButton(
                    child: Text(
                      "View All",
                      style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          BlocListener<HomeBloc, HomeState>(
            listener: (context, state) {
              if (state is HomeError) {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(state.message),
                ));
              }
            },
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is HomeInitial) {
                  return buildLoading();
                } else if (state is HomeLoading) {
                  return buildLoading();
                } else if (state is HomeLoaded) {
                  return buildListAnime(state.tops);
                } else if (state is HomeError) {
                  return buildError(state.message);
                } else {
                  return Container();
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLoading() {
    return Container(
      height: 300,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget buildListAnime(Tops tops) {
    return Container(
        height: 300,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return MinCardAnime(
              topAnime: tops.top[index],
            );
          },
        ));
  }

  Widget buildError(String message) {
    return Container(
      height: 300,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
