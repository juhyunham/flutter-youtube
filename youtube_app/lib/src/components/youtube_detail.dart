import 'package:flutter/material.dart';

class YoutubeDetail extends StatelessWidget {
  const YoutubeDetail({ Key? key }) : super(key: key);

  Widget _titleZone() {
    return Container(child: const Text(
      "유튜브 영상 다시보기", 
      style: TextStyle(fontSize: 15)
      )
    );
  }

  Widget _description() {
    return const SingleChildScrollView(
      child: Column(
        children: [
          _titlezone(),
        ],
      )
    ),
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Container(
            height: 250, 
            color: Colors.grey.withOpacity(0.5)
          ),
          Expanded(child: _description())
        ],),
      )
    );
  }
}