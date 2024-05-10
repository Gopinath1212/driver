import 'package:driver/TrackEarning.dart';
import 'package:flutter/material.dart';

class TurnByTurn extends StatefulWidget {
  const TurnByTurn({super.key});

  @override
  State<TurnByTurn> createState() => _TurnByTurnState();
}

class _TurnByTurnState extends State<TurnByTurn> {
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
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)
                            ),
                            border: Border.all()
                        ),
                        child: Column(
                          children: [
                            Text("35",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            Text("Limit",style: TextStyle(fontSize: 16),)
                          ],
                        )
                      ),
                      SizedBox(width: 80,),

                      SizedBox(width: 80,),
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
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>TrackEarning())
                  );
                },
                child: Card(
                  child: Container(
                    height: 110,
                    width: double.infinity,
                    child: Column(
                      children: [
                        SizedBox(height: 15,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  // border: Border.all()
                              ),
                              child: Icon(Icons.night_shelter_sharp),
                            ),
                            Column(
                              children: [
                                Text("8 min to 10 mis",
                                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                                Text("Picking up Time")
                              ],
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                                // border: Border.all()
                              ),
                              child: Icon(Icons.list),
                            ),

                          ],
                        ),

                      ],
                    ),
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
