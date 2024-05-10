import 'package:driver/AcceptTrip.dart';
import 'package:flutter/material.dart';

class GoOnline extends StatefulWidget {
  const GoOnline({super.key});

  @override
  State<GoOnline> createState() => _GoOnlineState();
}

class _GoOnlineState extends State<GoOnline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                // Background Container
                Container(
                 height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/map.jpeg"),
                      fit: BoxFit.cover
                    )
                  ),
                ),
                // Positioned Widget
                Positioned(
                  top: 300, // Distance from the top
                  left: 20, // Distance from the left
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all()
                        ),
                        child: Icon(Icons.night_shelter_sharp),
                      ),
                      SizedBox(width: 60,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context)=>AcceptTrip())
                          );
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all()
                          ),
                          child: Center(child: Text("Go",
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),)),
                        ),
                      ),
                      SizedBox(width: 60,),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all()
                        ),
                        child: Icon(Icons.pin_drop),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 80,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.offline_pin),
                            Text("You're Offline",
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,),),
                            Icon(Icons.list)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 120,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.email),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Inbox"),
                          )
                        ],
                      ),
                      Text("Complete personal safety\nEducation",
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
