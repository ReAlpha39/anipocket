import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PvCard extends StatelessWidget {
  final String urlPV;
  final String titlePV;

  const PvCard({Key key, this.urlPV, this.titlePV});
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller;
    _controller = YoutubePlayerController(
      initialVideoId:
      YoutubePlayer.convertUrlToId(urlPV),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        controlsVisibleAtStart: false,
        forceHideAnnotation: true,
        disableDragSeek: true
      )
    );
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 3),
          height: 168,
          width: 300,
          child: Container(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: false,
                onEnded: (id) {
                  _controller.reset();
                  _controller.reload();
                },
              )
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 0,
                  offset: Offset(1, 1)
                )
              ]
            ),
          )
        ),
        Container(
          width: 300,
          margin: EdgeInsets.only(left: 10),
          child: Text(titlePV, overflow: TextOverflow.ellipsis,),
        )
      ],
    );
  }
}
