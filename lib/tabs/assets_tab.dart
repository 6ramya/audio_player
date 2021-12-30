import 'package:audio_player/widgets/audio_player.dart';
import 'package:flutter/material.dart';

class AssetsTab extends StatelessWidget {
  const AssetsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[100],
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('Asset Audio',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        AudioPlayerWidget(
          url: 'audio.mp3',
          isAsset: true,
        )
      ]),
    );
  }
}
