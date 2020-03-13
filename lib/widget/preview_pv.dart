import 'package:anipocket/bloc/home_bloc.dart';
import 'package:anipocket/bloc/home_state.dart';
import 'package:anipocket/widget/pv_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class PreviewPV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
            child: Text("Promotional Video",
                style: GoogleFonts.raleway(
                    textStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w400))),
          ),
          Container(
            padding: EdgeInsets.only(left: 8, bottom: 8),
            height: 220,
            child: BlocListener<HomeBloc, HomeState>(
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
                    return buildListPV(state.listUrl, state.listTitlePV);
                  } else if (state is HomeError) {
                    return buildError(state.message);
                  } else {
                    return Container();
                  }
                },
              ),
            )
          )
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

  Widget buildListPV(List<String> listUrl, List<String> listTitlePV) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listUrl.length,
      itemBuilder: (context, index) {
        return PvCard(urlPV: listUrl[index], titlePV: listTitlePV[index],);
      },
    );
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
