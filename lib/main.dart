import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var ab=3;
  var weightcon=TextEditingController();
  var heightcon=TextEditingController();
  var res="ENTER YOUR DETAILS";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("BODY MASS INDEX CALCULATOR"),
            titleTextStyle: const TextStyle(
                fontSize: 17.5, // Adjust the size as needed
                fontWeight: FontWeight.w400,
                fontFamily: 'Roboto',
                color: Colors.black // Use a clean, standard font like Roboto
                ),
            centerTitle: true,
            backgroundColor: Colors.green,
            foregroundColor: Colors.red,
          ),
          drawer: Drawer(
              child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text("Welcome, user !"),
                accountEmail: const Text("Guide to infer your BMI"),
                currentAccountPicture: Image.asset('images/useracc.png')),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("Underweight (BMI less than 18.5) indicates potential nutritional deficiencies and health problems; normal weight (BMI 18.5-24.9) suggests a generally healthy weight with lower risk of chronic diseases; overweight (BMI 25-29.9) is associated with increased risk of cardiovascular diseases and diabetes; and obese (BMI 30 or above) significantly raises the likelihood of serious health issues like heart disease, stroke, and certain cancers.",style:TextStyle(fontFamily: 'Roboto',fontSize: 16.0)),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("Devoloped by vikram balaji subrahmanyam"),
              )
            ],
          )),
          body: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.red,
                      child: Center(
                        child: SizedBox(
                          width: 410,
                          height: double.infinity,
                          child: Center(
                            child: Column(
                                      children: [
                                        const Padding(
                                          padding:  EdgeInsets.all(30.0),
                                          child:  Text("ENTER YOUR WEIGHT (kg)",style:TextStyle(fontSize: 23.0)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: TextField(
                                            controller: weightcon,
                                              decoration: InputDecoration(
                                            fillColor: Colors.grey, // Fill color for the TextField
                                            filled: true,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20.0), // Border radius
                                              borderSide: BorderSide.none, // Remove the border
                                            ),
                                            contentPadding: const EdgeInsets.all(
                                                20.0), // Padding inside the TextField
                                            hintText: 'Enter weight',
                                            alignLabelWithHint: true,
                                            
                                          )),
                                        ),
                                        const Padding(
                                          padding:  EdgeInsets.all(30.0),
                                          child:  Text("ENTER YOUR HEIGHT (in m)",style:TextStyle(fontSize: 23.0)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: TextField(
                                            controller: heightcon,
                                              decoration: InputDecoration(
                                            fillColor: Colors.grey, // Fill color for the TextField
                                            filled: true,
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(20.0), // Border radius
                                              borderSide: BorderSide.none, // Remove the border
                                            ),
                                            contentPadding: const EdgeInsets.all(
                                                20.0), // Padding inside the TextField
                                            hintText: 'Enter height',
                                            alignLabelWithHint: true
                                          )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(30.0),
                                          child: ElevatedButton(onPressed:(){
                                            try{
                                              var userweight=double.parse(weightcon.text);
                                              var userheight=double.parse(heightcon.text);
                                              var bmii=userweight/(userheight*userheight);
                                              setState(() {
                                                res='YOUR BMI IS ${bmii.toStringAsFixed(3)}';
                                                
                                              });
                                              
                                      
                                            }catch(e){
                                              setState(() {
                                                res="ENTER IN CORRECT FORMAT";
                                                
                                              });
                                              
                                      
                                            }
                                          }, child: const Text("CHECK BMI"),style:ElevatedButton.styleFrom(elevation: 10.0,foregroundColor: Colors.black)),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(18.0),
                                          child: Text(res,style:TextStyle(fontSize: 27.0)),
                                        )
                                      ],
                            ),
                          ),
                        ),
                      ),
                    )),
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
