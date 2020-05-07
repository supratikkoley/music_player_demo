import 'package:flutter/material.dart';

class MusicPlayerPage extends StatefulWidget {
  final String song; //todo: later it will be a Song Class instead of String.
  MusicPlayerPage({@required this.song});
  @override
  _MusicPlayerPageState createState() => _MusicPlayerPageState();
}

class _MusicPlayerPageState extends State<MusicPlayerPage> {
  double value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.2),

        title: Text(widget.song),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.purple],
                  begin: Alignment.center,
                  end: Alignment.topCenter),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.35,
                  ),
                  Icon(
                    Icons.library_music,
                    size: 140,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text("0:0"),
                      Slider(
                        value: value,
                        // divisions: 1,
                        // label: "1.35",
                        min: 0.0,
                        onChanged: (val){
                          setState(() {
                            value = val;
                          });
                        },
                        inactiveColor: Colors.white,
                        activeColor: Colors.white,
                      ),
                      Text("1:0"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Icon(
                          Icons.forward_5,
                          color: Colors.white,
                          size: 40,
                        ),
                        Icon(
                          Icons.play_circle_filled,
                          color: Colors.white,
                          size: 70,
                        ),
                        Icon(
                          Icons.forward_5,
                          color: Colors.white,
                          size: 40,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
