import 'package:driver/UploadRC.dart';
import 'package:flutter/material.dart';

class Rcdetails extends StatefulWidget {
  const Rcdetails({super.key});

  @override
  State<Rcdetails> createState() => _RcdetailsState();
}

class _RcdetailsState extends State<Rcdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: const BackButton(),
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
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text("Let's find your Registration Certificate(RC)",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 50.0,right: 15),
              child: Text("Enter your license plate number and we'll\n"
                  "get the required information from the vahan\n"
                  "and sarathi portal of MoRTH,or you can \n"
                  "upload your Registration certificate(RC)\n"
                  "instead",textAlign: TextAlign.start,),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(right: 150.0),
              child: Text("Licence plate number",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: BorderSide(color: Colors.black, width: 1.0),
                    ),


                    hintText: '',
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
                        MaterialPageRoute(builder: (context)=>UploadRC())
                    );
                  },
                  child: const Text("Upload document instead",style: TextStyle(fontSize: 18,decoration: TextDecoration.underline,color: Colors.blue),)),
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
