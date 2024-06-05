import 'package:flutter/material.dart';
import 'package:mobile3/audio_video_flutter/screen_page/player_widget.dart';
import 'package:mobile3/audio_video_flutter/screen_page/video_palyer_page.dart';

class MenuUtamaPage extends StatelessWidget {
  const MenuUtamaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Media Player App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: 40,),
              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => VidioPlayerPage()),
                );
              },
                child: Text('Video Player'),
                textColor: Colors.white,
                color: Colors.blueAccent,
              ),
              SizedBox(height: 20,),
              MaterialButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AudioPlayerPage()
                  ),
                );
              },
                child: Text('Audio Player'),
                textColor: Colors.white,
                color: Colors.blueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}