import 'package:driver/UploadAadharCard.dart';
import 'package:flutter/material.dart';

class Aadhaar extends StatefulWidget {
  const Aadhaar({super.key});

  @override
  State<Aadhaar> createState() => _AadhaarState();
}

class _AadhaarState extends State<Aadhaar> {
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
              padding: const EdgeInsets.only(right: 85.0),
              child: Text("Let's Find your Aadhaar card",
                style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Enter the Aadhaar and we'll get your\n"
                    "information from UIDAI. By sharing your\n"
                    "Aadhaar details, you hereby confirm that you\n"
                    "have shared such details voluntarily",
                textAlign: TextAlign.start,
                style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.normal,
              )
              ),
            ),
            Image.asset("assets/Aadhar.png"),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 180.0),
              child: Text("Aadhaar number",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: const BorderSide(color: Colors.black, width: 1.0),
                    ),


                    hintText: '0000 0000 0000',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    )

                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>UploadAadhaar())
                );
              },
                child: const Text("Upload document instead",
                  style: TextStyle(fontSize: 18,decoration: TextDecoration.underline,color: Colors.blue),)),
            SizedBox(height: 50,),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius:BorderRadius.circular(10),
                  border: Border.all()
              ),
              child: Center(child: Text("Continue",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),)),
            ),

          ],
        ),
      ),
    );
  }
}
