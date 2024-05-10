import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DrivingLicense extends StatefulWidget {
  const DrivingLicense({super.key});

  @override
  State<DrivingLicense> createState() => _DrivingLicenseState();
}

class _DrivingLicenseState extends State<DrivingLicense> {
  bool isChecked0 = false;

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
            SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.only(right: 170.0),
              child: Text("Upload DL Images",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  padding: EdgeInsets.all(6),
                  child:  ClipRRect(

                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    child: SizedBox(
                      height: 100,
                      width: 140,
                     child: Card(
                       child: Container(
                         height: 30,
                         width: 100,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Icon(Icons.image_search_rounded,color: Colors.blue,),
                             Text("FRONT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
                           ],
                         ),

                       ),
                     ),
                    ),
                  ),
        ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: Radius.circular(12),
                    padding: EdgeInsets.all(6),
                    child:  ClipRRect(

                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: SizedBox(
                        height: 100,
                        width: 140,
                        child: Card(
                          child: Container(
                            height: 30,
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.image_search_rounded,color: Colors.blue,),
                                Text("BACK",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
                              ],
                            ),

                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
            const Padding(
              padding: EdgeInsets.only(right: 180.0),
              child: Text("Enter DL number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
          const SizedBox(
           width: 320,
           child: TextField(
             obscureText: true,
             decoration: InputDecoration(
             border: OutlineInputBorder(),
             suffixIcon: Icon(Icons.expand_circle_down),
             labelText: '',
          ),
        ),
      ),
            Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text("Eg:KA1654254454",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 80,
                    width:double.infinity,
                    child: Column(
                      children: [
                        Row(

                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("I don't have a Driving License",
                                style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            GestureDetector(
                              onTap: (){
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext context){

                                      return Column(
                                        children: [
                                           SizedBox(height: 10,),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Text("Driving License is mandatory",style: TextStyle(fontWeight: FontWeight.bold),),
                                                ),

                                              ],
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Container(
                                                height: 40,
                                                width:250,
                                                decoration: BoxDecoration(
                                                    color:Colors.green,
                                                    borderRadius: BorderRadius.circular(15),
                                                    border: Border.all()
                                                ),
                                                child: Center(
                                                  child: Text("Upload DL Later",
                                                    style: TextStyle(color: Colors.white),),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      );
                                    });
                              },
                              child: Checkbox(
                                tristate: true,
                                value: isChecked0,
                                checkColor: Colors.green,
                                onChanged: (bool? value) {
                                  setState(() {
                                    void main() {
                                      String? nullableString = null;

                                      // Using null-aware access to check if nullableString is null before calling length
                                      int? length = nullableString?.length;

                                      if (length != null) {
                                        print('Length: $length');
                                      } else {
                                        print('The string is null');
                                      }
                                    }
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 70.0),
                          child: Text("Our team will reach out to you soon."),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all()
              ),
              child: Center(child: Text("Submit",
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.white),)),
            )



          ],
        ),
      ),
    );
  }
}
