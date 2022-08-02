



import 'package:flutter/material.dart';
import 'package:demoji/demoji.dart';
import 'package:uimentalhealth/utils/emotion.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Forum"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
      ]),
      body: SafeArea(
        top: true,
        // child: Padding(padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 18),
              child: SingleChildScrollView(
                child: Column(
                  children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    // hi alok
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Hi, Alok!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
              
                          ),
                        ),
                        SizedBox(height: 4),
              
                        
                        Text("26 Mar, 2005",
                        style: TextStyle(
                          color: Colors.blue[200],
                          // fontSize: 24,
                          // fontWeight: FontWeight.bold,
              
                          ),
                        ),
              
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(color: Colors.blue[400],borderRadius: BorderRadius.circular(12),),
                      child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                      ),
                      padding: EdgeInsets.all(12),
                    )
              
                  ],),
              
                  SizedBox(height: 25),
              
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[400],
                      borderRadius: BorderRadius.circular(12),
              
                    ),
                    child:
                    TextField(
                              onChanged: (value) {
              
                              },
                              decoration:const InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: Colors.white
                                  ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  prefixIcon: Icon(Icons.search,color: Colors.white,)
                                  ),
                            ),
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                      
                    
                    children: [
                      const Text("How do you feel?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
              
                              ),
                            ),
              
                            Icon(Icons.more_horiz,color: Colors.white,size: 25,)
                    ],
                  ),
                  
                  SizedBox(height: 20),
              
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
              
                  EmotionFace(emotion: Demoji.laughing,mood: "Naughty",),
                  EmotionFace(emotion: Demoji.cry,mood: "Hurting",),
                  EmotionFace(emotion: Demoji.hot,mood: "Exhaust",),
                  EmotionFace(emotion: Demoji.scream,mood: "Anxious",),
                  EmotionFace(emotion: Demoji.angry,mood: "Rough",),
              
                  ],
                ),
              
                        
                  ],
              
                ),
              ),
            ),
            SizedBox(height: 17,),
            
              Expanded(
                child: Container(

                  padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
                  color: Colors.grey[200],
                  child: Center(
                    child: Column(
                      children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Exercises",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                            ),
                        ),
                        Icon(Icons.more_horiz)
                      ],
                    ),

                    SizedBox(height: 20,),

                    // listview of exercices
                    exercisetile(title: "Speaking skills",subTitle: "15 Exercises",color1: Colors.orange,icon1: Icons.contactless_rounded,),
                    SizedBox(height: 12,),
                    exercisetile(title: "Reading skills",subTitle: "61 Exercises",color1: Colors.green,icon1: Icons.content_paste_rounded,),
                    SizedBox(height: 12,),
                    exercisetile(title: "Writing skills",subTitle: "2 Exercises",color1: Colors.pink,icon1: Icons.create,),
                    SizedBox(height: 12,),
                    exercisetile(title: "Maths skills",subTitle: "150 Exercises",color1: Colors.blue,icon1: Icons.monetization_on_sharp,),
                    SizedBox(height: 12,),
                    // exercisetile(title: "Maths skills",subTitle: "150 Exercises",color1: Colors.blue,icon1: Icons.monetization_on_sharp,),
                    // SizedBox(height: 12,),
                    // exercisetile(title: "Maths skills",subTitle: "150 Exercises",color1: Colors.blue,icon1: Icons.monetization_on_sharp,),
                    // SizedBox(height: 12,),
                    // exercisetile(title: "Speaking skills",subTitle: "15 Exercises",color1: Colors.orange,icon1: Icons.favorite,),
                    // SizedBox(height: 12,),
                  ]
                ),
              ),
                ),
              )
          ],
        ),
      )
      
      
    );
  }
}

class exercisetile extends StatelessWidget {
  const exercisetile({
    Key? key, required this.title, required this.subTitle, required this.color1, required this.icon1,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Color color1;
  final  icon1;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        ),
      child: ListTile(
        leading: 
        Container(
          height: 50,
          width: 50,
          child: Center(child: Icon(icon1,color: Colors.white,)),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: color1,
        ),
),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.w500),),
        subtitle: Text(subTitle, style: TextStyle(fontSize: 13),),
        trailing: IconButton(onPressed: (){},icon: Icon(Icons.more_horiz),),
        ),
        );
  }
}



