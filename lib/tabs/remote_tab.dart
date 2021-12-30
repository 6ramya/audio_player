import 'package:audio_player/widgets/audio_player.dart';
import 'package:flutter/material.dart';

class RemoteTab extends StatelessWidget {
  const RemoteTab({Key? key}) : super(key: key);

  static String _url =
      "https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_700KB.mp3";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[100],
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Remote Audio',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        AudioPlayerWidget(
          url: _url,
          isAsset: false,
        )
      ]),
    );
  }
}
