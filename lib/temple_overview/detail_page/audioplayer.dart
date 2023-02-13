// import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:flutter/material.dart';

// class AudioPlayer extends StatefulWidget {
//   @override
//   _AudioPlayerState createState() => _AudioPlayerState();
// }

// class _AudioPlayerState extends State<AudioPlayer>
//     with SingleTickerProviderStateMixin {
//   late AnimationController iconController;

//   bool isAnimated = false;
//   bool showPlay = true;
//   bool shopPause = false;

//   AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

//   @override
//   void initState() {
//     super.initState();

//     iconController =
//         AnimationController(vsync: this, duration: Duration(milliseconds: 200));

//     audioPlayer.open(Audio('assets/sound/Lord.mp3'),
//         autoStart: false, showNotification: true);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Card(
//       margin: const EdgeInsets.only(top: 10, bottom: 10),
//       child: Padding(
//         padding:
//             const EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 10),
//         child: Row(
//           children: [
//             CircleAvatar(
//               maxRadius: 30,
//               backgroundColor: const Color(0xffffddbf),
//               child: Icon(
//                 Icons.music_note,
//                 color: Colors.orange,
//                 size: 30,
//               ),
//             ),
//             SizedBox(
//               width: 10,
//             ),
//             Text(
//               'Suprabatham.mp3',
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             Spacer(),
//             GestureDetector(
//               onTap: () {
//                 AnimateIcon();
//               },
//               child: AnimatedIcon(
//                 icon: AnimatedIcons.play_pause,
//                 progress: iconController,
//                 size: 30,
//                 color: Colors.black,
//               ),
//             ),
//           ],
//         ),
//       ),
//     ));
//   }

//   void AnimateIcon() {
//     setState(() {
//       isAnimated = !isAnimated;

//       if (isAnimated) {
//         iconController.forward();
//         audioPlayer.play();
//       } else {
//         iconController.reverse();
//         audioPlayer.pause();
//       }
//     });
//   }

//   @override
//   void dispose() {
//     iconController.dispose();
//     audioPlayer.dispose();
//     super.dispose();
//   }
// }
//.........................
// import 'package:flutter/material.dart';
// import 'package:just_audio/just_audio.dart';

// class Audio extends StatefulWidget {
//   const Audio({super.key});

//   @override
//   State<Audio> createState() => _AudioState();
// }

// class _AudioState extends State<Audio> {
//   late AudioPlayer audioPlayer;

//   @override
//   void initState() {
//     super.initState();
//     audioPlayer = AudioPlayer();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Column(
//         children: [
//           TextButton(
//             onPressed: () {
//               String url =
//                   'https://file-examples.com/wp-content/uploads/2017/11/file_example_MP3_700KB.mp3';
//               audioPlayer.setUrl(url);
//             },
//             child: Text('Play'),
//           ),
//           TextButton(
//               onPressed: () async {
//                 await audioPlayer.pause();
//               },
//               child: Text('Pause'))
//         ],
//       )),
//     );
//   }
// }
//...................................

// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';

// class AudioPlayerExample extends StatefulWidget {
//   @override
//   _AudioPlayerExampleState createState() => _AudioPlayerExampleState();
// }

// class _AudioPlayerExampleState extends State<AudioPlayerExample> {
//   AudioPlayer _audioPlayer = AudioPlayer();
//   bool _isPlaying = false;
//   String _currentTime = "00:00";
//   String _completeTime = "00:00";
//   String url =
//       "https://file-examples.com/storage/fe7122043963cd639947840/2017/11/file_example_MP3_700KB.mp3";

//   @override
//   void initState() {
//     super.initState();
//     _audioPlayer.onPositionChanged.listen((Duration duration) {
//       setState(() {
//         _currentTime = duration.toString().split(".")[0];
//       });
//     });
//     _audioPlayer.onDurationChanged.listen((Duration duration) {
//       setState(() {
//         _completeTime = duration.toString().split(".")[0];
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.all(12.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 Text(
//                   _currentTime,
//                   style: TextStyle(fontSize: 18.0),
//                 ),
//                 Text(
//                   _completeTime,
//                   style: TextStyle(fontSize: 18.0),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(12.0),
//             child: Slider(
//               value: 0,
//               onChanged: (value) {},
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.all(12.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 IconButton(
//                   icon: Icon(Icons.fast_rewind),
//                   onPressed: () {},
//                 ),
//                 IconButton(
//                   icon: _isPlaying ? Icon(Icons.pause) : Icon(Icons.play_arrow),
//                   onPressed: () {
//                     setState(() {
//                       _isPlaying = !_isPlaying;
//                       if (_isPlaying) {
//                         _audioPlayer.setSourceUrl(url);
//                       } else {
//                         _audioPlayer.pause();
//                       }
//                     });
//                   },
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.fast_forward),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPlayerCard extends StatelessWidget {
  AudioPlayerCard({super.key});

  final AudioPlayer audioPlugin = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('audio')),
      body: Container(
          child: ElevatedButton(onPressed: () => play(), child: Text('play'))),
    );
  }

  void play() async {
    // await audioPlugin.play(
    //     "https://file-examples.com/storage/feeb72b10363daaeba4c0c9/2017/11/file_example_MP3_700KB.mp3");
  }
}
