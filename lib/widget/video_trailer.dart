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
    data();
    _controller = YoutubePlayerController(
        initialVideoId: 'HmPSEs5OSts',
        flags: YoutubePlayerFlags(
            mute: false,
            autoPlay: false,
            controlsVisibleAtStart: true,
            forceHideAnnotation: true,
            disableDragSeek: true));
    super.initState();
  }

  void data() async {
    var data = await api.getAnimeInfo(9253);
    String videoId = YoutubePlayer.convertUrlToId(data.trailerUrl);
    vId = videoId;
    print(vId);
    print(data.trailerUrl);
  }

  @override
  Widget build(BuildContext context) {
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
            maxLines: 10,
          ),
        ),
      ],
      onEnded: (id) {
        _controller.reset();
        _controller.reload();
      },
    );
  }
}
