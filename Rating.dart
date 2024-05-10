import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Rating extends StatefulWidget {
  const Rating({super.key});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(child: Icon(Icons.pin_drop)),
        title: Column(
          children: [
            Text("EC",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text("180 West St")
          ],
        ),
      ),
      body: Container(
        height: 800,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/map.jpeg"),
            fit: BoxFit.cover
          )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 300,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("How was your rider?",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                        SizedBox(height: 10,),
                        Text("Jenny",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 20,),
                        Center(
                          child: RatingBar.builder(
                            initialRating: 3,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 50.0,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all()
                              ),
                              child: Center(child: Text("Yes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                            ),
                            SizedBox(width: 20,),
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all()
                              ),
                              child: Center(child: Text("No",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
