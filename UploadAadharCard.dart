import 'package:flutter/material.dart';

class UploadAadhaar extends StatefulWidget {
  const UploadAadhaar({super.key});

  @override
  State<UploadAadhaar> createState() => _UploadAadhaarState();
}

class _UploadAadhaarState extends State<UploadAadhaar> {
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
            child: const Row(
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
              padding: EdgeInsets.only(right: 10.0),
              child: Text("Take a Photo of your Aadhaar Card",
                style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            ),
            const Padding(
              padding: EdgeInsets.only(left:10.0),
              child: Text("By sharing your Aadhar details, you hereby\n"
                  "conform that you have shared such details\n"
                  "voluntarily.You further confirm and consent\n"
                  "that your Aadhaar details may be shared by\n"
                  "Driver with relevant Government authorities\n"
                  "for the purposes provided herein",textAlign: TextAlign.start,
                style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.normal,
              ),),
            ),
            SizedBox(height: 20,),
            Image.asset("assets/Aadhar.png"),
            const SizedBox(height: 50,),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius:BorderRadius.circular(10),
                  border: Border.all()
              ),
              child: const Center(child: Text("Take Photo",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),)),
            ),

          ],
        ),
      ),
    );
  }
}
