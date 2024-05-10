import 'package:driver/TurnbyTurn.dart';
import 'package:flutter/material.dart';

class AcceptTrip extends StatefulWidget {
  const AcceptTrip({super.key});

  @override
  State<AcceptTrip> createState() => _AcceptTripState();
}

class _AcceptTripState extends State<AcceptTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all()
                    ),
                    child: Icon(Icons.person_add)
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Driver pickup added",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                      ),
                      Text("\u{20B9}50 -\u{20B9}100",style: TextStyle(fontWeight: FontWeight.bold),),

                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("3 mins(1.3 mi) away"),
                      ),
                      Text("Citrus Ave.Daly City")
                    ],
                  ),

                ],
              ),
            ),
           SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>TurnByTurn())
                  );
                },
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("13 mins(6 mi) trip"),
                        ),
                        Text("City Hall, San Francisco")
                      ],
                    ),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
