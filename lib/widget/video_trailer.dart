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
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}