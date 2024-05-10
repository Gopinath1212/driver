import 'package:flutter/material.dart';

class UploadPAN extends StatefulWidget {
  const UploadPAN({super.key});

  @override
  State<UploadPAN> createState() => _UploadPANState();
}

class _UploadPANState extends State<UploadPAN> {
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
              padding: EdgeInsets.only(right: 50.0),
              child: Text("Take a Photo of your PAN Card",
                style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text("Please upload the document by taking a picture",style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.normal,
              )),
            ),
            SizedBox(height: 10,),
            Image.asset("assets/pancard.jpeg"),
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
