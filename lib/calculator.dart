import 'package:calculator/widgets/blue_container.dart';

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

   num number1=0;
  num number2=0;
  num result=0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
      body: Column(children: [
        const SizedBox(height: 20,),

        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(width: double.infinity,height: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: Colors.blue,),
          
           child: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(width: 300, height: 200,
            decoration: BoxDecoration(color: Colors.black,
            borderRadius: BorderRadius.circular(20)),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BlueContainer(txt: "$number1"),
                BlueContainer(txt: "$number2"),
                 Text("=", style: TextStyle(color: Colors.white , fontSize: 50),),
               BlueContainer(txt: "$result")
                 
              ],),
            ),
          ),
                 ),
        ),
       const SizedBox(height: 10,),
       Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Text("The first number",style: TextStyle(color: Colors.white,
        fontSize: 20),),
        Text("The second number",style: TextStyle(color: Colors.white,
        fontSize: 20),),
       ],),
       const SizedBox(height: 10,),
       Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
        Row(
          
          children: [
            InkWell(onTap: (){setState(() {
              number1++;
            });},
               child: CircleAvatar(radius: 21,backgroundColor: Colors.white,
                child: CircleAvatar(radius: 20,backgroundColor: Colors.black,
                child: Icon(Icons.add,color: Colors.blue,),),
                           ),
             ),
            const SizedBox(width: 30,),
           InkWell(onTap: (){setState(() {
             number1--;
           });},
               child: CircleAvatar(radius: 21,backgroundColor: Colors.white,
                child: CircleAvatar(radius: 20,backgroundColor: Colors.black,
                child: Icon(Icons.remove,color: Colors.blue,),),
                           ),
             ),
          ],
        ),
        Row(
          children: [
             InkWell(onTap: (){setState(() {
              number2++;
            });},
               child: CircleAvatar(radius: 21,backgroundColor: Colors.white,
                child: CircleAvatar(radius: 20,backgroundColor: Colors.black,
                child: Icon(Icons.add,color: Colors.blue,),),
                           ),
             ),
            const SizedBox(width: 30,),
            InkWell(onTap: (){setState(() {
              number2--;
            });},
              child: CircleAvatar(radius: 21,
                child: CircleAvatar(radius: 20,backgroundColor: Colors.black,
                child: Icon(Icons.remove,color: Colors.blue,),),
              ),
            ),
          ],
        ),
       ],),
       const SizedBox(height: 20,),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Row(children: [
            Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              
           InkWell(onTap: (){setState(() {
             result=number1+number2;
           });},
            child: Container(width: 150,height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),
            color: Colors.white),
            child: Center(
            child: Text("+ Addition" ,style: TextStyle(color: Colors.black,
           fontSize: 20),),
           ),
          ),
          ),
           const SizedBox(height: 10,),
           InkWell(onTap: (){setState(() {              
             result=number1 * number2;
           });},
            child: Container(width: 150,height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),
            color: Colors.white),
            child: Center(
            child: Text("* Multiplication" ,style: TextStyle(color: Colors.black,
           fontSize: 20),),
           ),
          ),
          ),
           const SizedBox(height: 10,),
           InkWell(onTap: (){setState(() {
            
            num res=1;
            for(num i=1; i<=number2;i++)  {
              res=res*number1;  
              result=res;           
            } 
            result; 
           });},
            child: Container(width: 150,height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),
            color: Colors.white),
            child: Center(
            child: Text("^ Exponentition" ,style: TextStyle(color: Colors.black,
           fontSize: 20),),
           ),
          ),
          ),
            ],)
           ],),

           Row(children: [
            Column(children: [
              
           InkWell(onTap: (){setState(() {
             result=number1-number2;
           });},
            child: Container(width: 150,height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),
            color: Colors.white),
            child: Center(
            child: Text("- Subtraction" ,style: TextStyle(color: Colors.black,
           fontSize: 20),),
           ),
          ),
          ),
           const SizedBox(height: 10,),
           InkWell(onTap: (){setState(() {
             result=number1/number2;
           });},
            child: Container(width: 150,height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),
            color: Colors.white),
            child: Center(
            child: Text("/ Division" ,style: TextStyle(color: Colors.black,
           fontSize: 20),),
           ),
          ),
          ),
           const SizedBox(height: 10,),
         InkWell(onTap: (){setState(() {
             result=number1%number2;
           });},
            child: Container(width: 150,height: 50,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(80),
            color: Colors.white),
            child: Center(
            child: Text("% Modulus" ,style: TextStyle(color: Colors.black,
           fontSize: 20),),
           ),
          ),
          ),
            ],)
           ],),
         ],
       ),
       const SizedBox(height: 10,),

        CircleAvatar(radius: 80,backgroundColor: Colors.blue,
         child: TextButton(onPressed: (){setState(() {
           number1=0;
         number2=0;
         result=0;
         });}, 
         child: Text("Reset all",style: TextStyle(color: Colors.white,
         fontSize: 20),)),),
       


       
      ],)
    );
  }
}