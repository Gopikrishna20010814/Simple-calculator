// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
main()
{
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
  home: MyApp(),
  ));
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key});
  @override
  _MyAppState createState()=>_MyAppState();
}

class _MyAppState extends State<MyApp>{
  TextEditingController controller1=TextEditingController();
  TextEditingController controller2=TextEditingController();
  int? result=0,num1=0,num2=0;
  add(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      result=num1!+num2!;
    });
  }
  sub(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      result=num1!-num2!;
    });
  }
  divide(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      result=(num1!~/num2!);
    });
  }
  multiply(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      result=num1!*num2!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text('Simplecalculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Result:$result",
              style: const TextStyle(
              fontSize: 20,
              fontWeight:FontWeight.bold)
              ),
              const SizedBox(height: 20,),
              TextField(
                controller: controller1,
                decoration: InputDecoration(
                  labelText: "Enter first number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: controller2,
                decoration: InputDecoration(
                  labelText: "Enter second number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
               const SizedBox(height: 20),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    add();
                    controller1.clear();
                    controller2.clear();       
                    
                   }, 
                   child: const Text("Add")),
                  ElevatedButton(onPressed: (){
                    sub();
                    controller1.clear();
                    controller2.clear();

                  }, child: const Text("sub")),
                ],
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    multiply();
                    controller1.clear();
                    controller2.clear();

                  }, child: const Text("multiply")),
                  ElevatedButton(onPressed: (){
                    divide();
                    controller1.clear();
                    controller2.clear();

                  }, child: const Text("Divide")),
                ],
               ),
          ],
        ),
      ),
    );
   
  }
}