import 'package:driver/Aadhaar.dart';
import 'package:driver/DrivingLicense.dart';
import 'package:driver/GoOnline.dart';
import 'package:driver/PanCard.dart';
import 'package:driver/ProfileInfo.dart';
import 'package:driver/RcDetails.dart';
import 'package:flutter/material.dart';

class ActiveAccount extends StatefulWidget {
  const ActiveAccount({super.key});

  @override
  State<ActiveAccount> createState() => _ActiveAccountState();
}

class _ActiveAccountState extends State<ActiveAccount> {
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
            Card(
              child: Container(
                height: 150,
                width: double.infinity,
                color: Colors.blue,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Please complete all the\nsteps to activate your \naccount",
                              style: TextStyle(fontSize: 20,color: Colors.white),),
                          ),
                          Icon(Icons.verified_outlined,size: 100,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>DrivingLicense( ))
                  );
                },
                child: Card(
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Driving License",style: TextStyle(fontSize: 18),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 150.0),
                                child: Icon(Icons.arrow_forward),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>ProfileInfo( ))
                  );
                },
                child: Card(
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Profile Info",style: TextStyle(fontSize: 18),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 180.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>Rcdetails( ))
                  );
                },
                child: Card(
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20.0),
                                child: Text("Vehicle RC",style: TextStyle(fontSize: 18),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 150.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>const Aadhaar( ))
                  );
                },
                child: Card(
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 30.0),
                                child: Text("Aadhaar Card",style: TextStyle(fontSize: 18),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 110.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>PanCard( ))
                  );
                },
                child: Card(
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 50.0),
                                child: Text("PAN Card",style: TextStyle(fontSize: 18),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 110.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50,),

            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>GoOnline())
                );
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all()
                ),
                child: Center(child: Text("Submit",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
