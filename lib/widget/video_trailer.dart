import 'package:anipocket/repositories/jikan_api.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoTrailer extends StatefulWidget {
  @override
  _VideoTrailerState createState() => _VideoTrailerState();
}

class _VideoTrailerState extends State<VideoTrailer> {
  YoutubePlayerController _controller;
  String vId;
  var api = JikanApi();
  @override
  void initState() {
    _controller = YoutubePlayerController(
      initialVideoId: 'HmPSEs5OSts',
      flags: YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        controlsVisibleAtStart: true,
        forceHideAnnotation: true,
        disableDragSeek: true
      )
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trailer'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: false,
            topActions: <Widget>[
              SizedBox(width: 8.0),
            ],
          )),
        ],
      ),
    );
  }
}