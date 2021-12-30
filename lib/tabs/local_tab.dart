import 'package:audio_player/widgets/audio_player.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart';
import 'dart:io';

class LocalTab extends StatelessWidget {
  const LocalTab({Key? key}) : super(key: key);

  static final _url =
      "https://file-examples-com.github.io/uploads/2017/11/file_example_MP3_700KB.mp3";

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _loadFilePath(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Container(
            color: Colors.teal[100],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Local Audio',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                AudioPlayerWidget(
                    url: (snapshot.data).toString(), isAsset: false)
              ],
            ),
          );
        });
  }

  Future<String> _loadFilePath() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/downloaded_audio.mp3');
    if (await _assetAlreadyPresent(file.path)) {
      return file.path;
    }
    final bytes = await readBytes(Uri.parse(_url));
    await file.writeAsBytes(bytes);

    return file.path;
  }

  Future<bool> _assetAlreadyPresent(String filePath) async {
    final File file = File(filePath);
    return file.exists();
  }
}
