import 'package:anipocket/models/anime_info.dart';
import 'package:anipocket/repositories/jikan_api.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoTrailer extends StatefulWidget {
  @override
  _VideoTrailerState createState() => _VideoTrailerState();
}

class _VideoTrailerState extends State<VideoTrailer> {
  String vId;
  var api = JikanApi();
  YoutubePlayerController _controller;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<AnimeInfo>(
      future: api.getAnimeInfo(38572),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data.trailerUrl);
          print(YoutubePlayer.convertUrlToId(snapshot.data.trailerUrl));
            _controller = YoutubePlayerController(
              initialVideoId: YoutubePlayer.convertUrlToId(snapshot.data.trailerUrl),
              flags: YoutubePlayerFlags(
                mute: false,
                autoPlay: false,
                controlsVisibleAtStart: true,
                forceHideAnnotation: true,
                disableDragSeek: true
              )
            );
          return YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: false,
            topActions: <Widget>[
              SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  _controller.metadata.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                  overflow: TextOverflow.ellipsis,
                  //maxLines: 10,
                ),
              ),
            ],
            onEnded: (id) {
              _controller.reset();
              _controller.reload();
            },
          );
        }
      },
    );
  }
}