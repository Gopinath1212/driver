import 'package:driver/ActivateYourAccount.dart';
import 'package:flutter/material.dart';


class Vehicle extends StatefulWidget {
  const Vehicle({super.key});

  @override
  State<Vehicle> createState() => _VehicleState();
}

class _VehicleState extends State<Vehicle> {
  String selectedOption0 = 'Option 0';
  String selectedOption1 = 'Option 1';
  String selectedOption2 = 'Option 2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: BackButton(),
        actions: [
          Container(
            height: 40,
            width: 90,
            decoration: BoxDecoration(
                border: Border.all()
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.help),
                Text("Help")
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 50,
              decoration:  BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/Motor.png"),
                      fit: BoxFit.cover
                  ),
                  borderRadius:BorderRadius.circular(50)
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 150,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/java bike.jpeg",scale: 2,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Bike",style: TextStyle(fontSize: 18),),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Radio(
                              value: 'Option 1',
                              groupValue: selectedOption0,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption0 = value as String;
                                });
                              },
                            ),
                          ),


                        ],
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
                  height: 150,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/autobooking.jpeg",scale: 2,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Auto",style: TextStyle(fontSize: 18),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Radio(
                              value: 'Option 2',
                              groupValue: selectedOption0,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption0 = value as String;
                                });
                              },
                            ),
                          ),

                        ],
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
                  height: 150,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/cab booking.jpeg",scale: 2,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Cab",style: TextStyle(fontSize: 18),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Radio(
                              value: 'Option 3',
                              groupValue: selectedOption0,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption0 = value as String;
                                });
                              },
                            ),
                          ),

                        ],
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
                  height: 150,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/parcel bokking.jpeg",scale: 2,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Pacel",style: TextStyle(fontSize: 18),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Radio(
                              value: 'Option 4',
                              groupValue: selectedOption0,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption0 = value as String;
                                });
                              },
                            ),
                          ),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>ActiveAccount())
                );
              },
              child: Container(
                height: 40,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius:BorderRadius.circular(10),
                    border: Border.all()
                ),
                child: Center(child: Text("Confirm Vehicle",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}