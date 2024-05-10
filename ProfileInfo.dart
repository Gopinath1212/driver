import 'package:flutter/material.dart';

class ProfileInfo extends StatefulWidget {
  const ProfileInfo({super.key});

  @override
  State<ProfileInfo> createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo> {
  String selectedOption0 = 'Option 0';
  String selectedOption1 = 'Option 1';
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70),
                    border: Border.all()
                  ),
                  child: Icon(Icons.person,size: 50,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Edit",style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220.0),
              child: Text("First name",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: const BorderSide(color: Colors.black, width: 1.0),
                    ),


                    hintText: 'Enter First Name',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220.0),
              child: Text("Last name",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: const BorderSide(color: Colors.black, width: 1.0),
                    ),


                    hintText: 'Enter Last Name',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210.0),
              child: Text("Date of Birth",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: const BorderSide(color: Colors.black, width: 1.0),
                    ),


                    hintText: 'DD/MM/YYYY',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.blue
                        )
                    )

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240.0),
              child: Text("Gender",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Radio(
                    value: 'Option 1',
                    groupValue: selectedOption0,
                    onChanged: (value) {
                      setState(() {
                        selectedOption0 = value as String;
                      });
                    },
                  ),
                ),
                Text("Male",style: TextStyle(fontSize: 17),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Radio(
                    value: 'Option 2',
                    groupValue: selectedOption0,
                    onChanged: (value) {
                      setState(() {
                        selectedOption0 = value as String;
                      });
                    },
                  ),
                ),
                Text("Female",style: TextStyle(fontSize: 17),),

              ],
            ),
            SizedBox(height: 30,),
            Container(
              height: 40,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius:BorderRadius.circular(10),
                  border: Border.all()
              ),
              child: Center(child: Text("Submit",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),)),
            ),
            SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
