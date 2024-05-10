import 'package:driver/ConfirmCity.dart';
import 'package:driver/SelectVehicle.dart';
import 'package:flutter/material.dart';

class City extends StatefulWidget {
  const City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
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
            Padding(
              padding: const EdgeInsets.only(right: 80.0),
              child: Text("Which city do you want to ride",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 110,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 180.0,top: 15),
                        child: Text("You will ride in",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.pin_drop,color: Colors.blue,),
                            Text("Banglore",style: TextStyle(fontWeight: FontWeight.bold),),
                            ElevatedButton(
                              onPressed: (){
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context)=>SelectCity())
                               );
                              },
                              child: Text("CHANGE",selectionColor: Colors.blue,),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 400,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Vehicle())
                );
              },
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()
                ),
                child: const Center(child: Text("Confirm City",style: TextStyle(fontSize: 18,color: Colors.black),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
