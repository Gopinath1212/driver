import 'package:driver/UploadPan.dart';
import 'package:flutter/material.dart';

class PanCard extends StatefulWidget {
  const PanCard({super.key});

  @override
  State<PanCard> createState() => _PanCardState();
}

class _PanCardState extends State<PanCard> {
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
              padding: const EdgeInsets.only(right: 90.0),
              child: const Text("Let's Find your PAN card",
                style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Enter your PAN number and we'll get\n"
                  "the required information from the NSDL,or\n"
                  "you can upload your PAN card instead",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.normal,
              )),
            ),
            Image.asset("assets/pancard.jpeg"),
            SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(right: 180.0),
              child: Text("PAN card number",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),


                    hintText: 'ABCCD123L',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>UploadPAN())
                    );
                  },
                  child: const Text("Upload document instead",
                    style: TextStyle(fontSize: 18,decoration: TextDecoration.underline,color: Colors.blue),)),
            ),
            SizedBox(height: 50,),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius:BorderRadius.circular(10),
                  border: Border.all()
              ),
              child: const Center(child: Text("Continue",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),)),
            ),

          ],
        ),
      ),
    );
  }
}
