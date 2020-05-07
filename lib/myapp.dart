import 'package:flutter/material.dart';
import 'package:music_player_demo/musicPlayerPage.dart';

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Music Player",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return songCard(index, navigateTo: MusicPlayerPage(song: "Sample Music ${index + 1}"));
            }),
      ),
    );
  }

  Widget songCard(int index, {Widget navigateTo}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (){
          if(navigateTo != null) {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => navigateTo
            ));
          }
        },
              child: Card(
          elevation: 5.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          child: Container(
            child: ListTile(
              leading: Icon(Icons.music_note, color: Colors.purple),
              title: Text(
                "Sample Music ${index + 1}",
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              trailing: Icon(
                Icons.play_circle_outline,
                color: Colors.purple,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
