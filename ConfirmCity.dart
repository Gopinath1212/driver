import 'package:driver/SelectVehicle.dart';
import 'package:flutter/material.dart';


class SelectCity extends StatefulWidget {
  const SelectCity({super.key});

  @override
  State<SelectCity> createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  String selectedOption0 = 'Option 0';
  String selectedOption1 = 'Option 1';
  String selectedOption2 = 'Option 2';
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
              child: TextFormField(
                decoration: const InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: const BorderSide(color: Colors.black, width: 1.0),
                    ),

                    prefixIcon: Icon(Icons.search),
                    labelText: 'Search City',
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
              child: Card(
                child: Container(
                  height: 560,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      const Padding(
                        padding: EdgeInsets.only(right: 150.0),
                        child: Text("Nearest serviceable",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                      ),
                      ListTile(
                        title: const Text('Bangalore'),
                        leading: Radio(
                          value: 'Option 1',
                          groupValue: selectedOption0,
                          onChanged: (value) {
                            setState(() {
                              selectedOption0 = value as String;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Mysore'),
                        leading: Radio(
                          value: 'Option 2',
                          groupValue: selectedOption0,
                          onChanged: (value) {
                            setState(() {
                              selectedOption0 = value as String;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Salem'),
                        leading: Radio(
                          value: 'Option 3',
                          groupValue: selectedOption0,
                          onChanged: (value) {
                            setState(() {
                              selectedOption0 = value as String;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Tiruppur'),
                        leading: Radio(
                          value: 'Option 4',
                          groupValue: selectedOption0,
                          onChanged: (value) {
                            setState(() {
                              selectedOption0 = value as String;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Anantapur'),
                        leading: Radio(
                          value: 'Option 5',
                          groupValue: selectedOption0,
                          onChanged: (value) {
                            setState(() {
                              selectedOption0 = value as String;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Tirupati'),
                        leading: Radio(
                          value: 'Option 6',
                          groupValue: selectedOption0,
                          onChanged: (value) {
                            setState(() {
                              selectedOption0 = value as String;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Coimbatore'),
                        leading: Radio(
                          value: 'Option 7',
                          groupValue: selectedOption0,
                          onChanged: (value) {
                            setState(() {
                              selectedOption0 = value as String;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Kadapa'),
                        leading: Radio(
                          value: 'Option 8',
                          groupValue: selectedOption0,
                          onChanged: (value) {
                            setState(() {
                              selectedOption0 = value as String;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text('Trichy'),
                        leading: Radio(
                          value: 'Option 9',
                          groupValue: selectedOption0,
                          onChanged: (value) {
                            setState(() {
                              selectedOption0 = value as String;
                            });
                          },
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Vehicle())
                );
              },
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()
                ),
                child: const Center(child: Text("Confirm City",style: TextStyle(fontSize: 18,color: Colors.black),)),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
