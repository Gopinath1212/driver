import 'package:driver/Rating.dart';
import 'package:flutter/material.dart';

class TrackEarning extends StatefulWidget {
  const TrackEarning({super.key});

  @override
  State<TrackEarning> createState() => _TrackEarningState();
}

class _TrackEarningState extends State<TrackEarning> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  child: Container(
                    height: 300,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 220.0),
                            child: Text("Earnings",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 210.0),
                            child: Text("Feb 1 - feb 10"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 230.0),
                            child: Text("\u{20B9}500.00",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Online"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("23 hr 32 min"),
                              )
                            ],
                          ),
                          Divider(thickness: 2,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("54"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Trips"),
                              )
                            ],
                          ),
                          Divider(thickness: 2,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("73"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("points"),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context)=>Rating())
                              );
                            },
                            child: Container(
                              height: 40,
                              width: 200,
                              decoration: BoxDecoration(
                                  border: Border.all()
                              ),
                              child: Center(child: Text("See details",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
                            ),
                          ),
                        ],
                      )
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Balance:\u{20B9}155.00",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Next Payment scheduled for feb 11"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all()
                          ),
                          child: Center(
                            child: Text("Cash Out",
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                          ),
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Quest",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Until feb 8, 4 am"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Drive 35 more trips to make 60% extra"),
                      )

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


