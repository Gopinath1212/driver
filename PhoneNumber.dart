import 'package:driver/Otp.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';



class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
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
            child:  Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Icon(Icons.help),
                Center(child: Text("Help"))
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                decoration:  BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/Motor.png"),
                        fit: BoxFit.cover
                    ),
                    borderRadius:BorderRadius.circular(50)
                ),
              ),
            ),
            SizedBox(height: 10,),
            const Text(
              "Enter your Phone Number to\n Driver",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10,),
            Padding(
                padding: EdgeInsets.all(8.0),
                child:IntlPhoneField(
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    filled: true,
                    fillColor: Colors.blue.withOpacity(0.1),
                  ),
                )
            ),
            SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.only(left: 120.0),
              child: Text(
                "Change Phone number",
                style: TextStyle(fontSize: 14, color: Colors.blue),
                textAlign: TextAlign.end,
              ),
            ),
            SizedBox(height: 10,),
            const Text("Please read our Terms and conditions\nbefore proceeding",textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),
            SizedBox(height: 70,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>OtpVerificationPage())
                );
              },
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()
                ),
                child: Center(child: Text("Proceed",style: TextStyle(fontSize: 18,color: Colors.black),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
