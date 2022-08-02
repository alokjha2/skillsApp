



import 'package:flutter/material.dart';



class EmotionFace extends StatelessWidget {
  final String emotion;
  final String mood;
  const EmotionFace({Key? key, required this.emotion, required this.mood}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
          color: Colors.blue[400],
          borderRadius: BorderRadius.circular(12),
        ),      
        child: Center(child: Text(
          emotion,
          style: TextStyle(fontSize: 26),
          ),)
              ),
              SizedBox(height: 8,),
                Text(mood, style: TextStyle(color: Colors.white),)
              
      ],
    );
  }
}
