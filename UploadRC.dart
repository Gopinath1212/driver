import 'package:flutter/material.dart';

class UploadRC extends StatefulWidget {
  const UploadRC({super.key});

  @override
  State<UploadRC> createState() => _UploadRCState();
}

class _UploadRCState extends State<UploadRC> {
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
              padding: EdgeInsets.only(left: 20.0),
              child: Text("Take a Photo of your Registration Certificate(RC)",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("if the vechile owner name on the vehicle\n"
                  "documents  is different from mine,then i hereby\n"
                  "confirm that i have the vahicle owner's consent to\n"
                  "drive this vehile on the Driver Platform.This\n"
                  "declartion can be treated as a No-Objection\n"
                  "Certificate and releases Driver from any legal\n"
                  "obligations and consuquences"),
            ),
            Image.asset("assets/RC book.jpeg"),
            const SizedBox(height: 20,),
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
