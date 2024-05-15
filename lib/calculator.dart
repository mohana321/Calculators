import 'dart:math';

import 'package:calculators/BMI.dart';
import 'package:calculators/Gst%20calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:login/BMI.dart';
// import 'package:login/GST.dart';
//import 'package:login/Gst%20calculator.dart';

class calci extends StatefulWidget {
  const calci({super.key});

  @override
  State<calci> createState() => _calciState();
}

class _calciState extends State<calci> {
  TextEditingController cont = TextEditingController();

  String val1="",val2="",opr="";
  bool click = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("CALCULATOR",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => gstt()));
              },
                child: Icon(Icons.price_change_outlined)),
          ),
             GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => bmi()));
               },
                 child: Icon(Icons.girl_sharp),
             ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 190),
        child: Column(

          children: [
            TextFormField(
              controller: cont,
              style: TextStyle(fontSize: 50),
              decoration: InputDecoration(
                fillColor: Colors.blueGrey.shade200,
                filled: true,
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  ElevatedButton(onPressed: ()
                  {
                    val1 = "";
                    val2 = "";
                    cont.text = '';
                    opr="";
                    click=false;

                    }, child: Text("CLEAR", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
                  ElevatedButton(onPressed: (){
                    cont.text="+/-";
                    opr="+/-";
                    click=true;
                  }, child: Text("+/-",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){
                    cont.text="%";
                    opr="%";
                    click=true;
                  }, child: Text("%",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),



                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  ElevatedButton(onPressed: () {
                    if(click) {
                      val2 += "1";
                      cont.text=val2;

                    }
                    else{
                      val1 +="1";
                      cont.text=val1;
                    }
                  }, child: Text("1", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.pink),),),

                  ElevatedButton(onPressed: (){
                    if(click){
                      val2 +="2";
                      cont.text=val2;

                    }
                    else{
                      val1 +="2";
                      cont.text=val1;
                    }

                  },
                      child: Text("2",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.pink),)),

                  ElevatedButton(onPressed: (){
                    if(click){
                      val2 +="3";
                      cont.text=val2;

                    }
                    else{
                      val1 +="3";
                      cont.text=val1;
                    }
                  }, child: Text("3",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.pink),)),

                  ElevatedButton(onPressed: (){
                    cont.text="+";
                    opr="+";
                    click=true;


                  }, child: Text("+",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.cyan),)),
                  ElevatedButton(onPressed: (){
                    cont.text="^";
                    opr="^";
                    click=true;
                  }, child: Text("^",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.cyan),)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  ElevatedButton(onPressed: (){ if(click){
                    val2 +="4";
                    cont.text=val2;

                  }
                  else{
                    val1 +="4";
                    cont.text=val1;
                  }}, child: Text("4", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color:Colors.pink),),),

                  ElevatedButton(onPressed: (){ if(click)
                  {
                    val2 +="5";
                    cont.text=val2;

                  }
                  else{
                    val1 +="5";
                    cont.text=val1;
                  }}, child: Text("5",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.pink),)),

                  ElevatedButton(onPressed: (){ if(click)
                  {
                    val2 +="6";
                    cont.text=val2;

                  }
                  else{
                    val1 +="6";
                    cont.text=val1;
                  }}, child: Text("6",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.pink),)),
                  ElevatedButton(onPressed: ()
                  {
                    cont.text="-";
                  opr="-";
                  click=true;
                  }, child: Text("-",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.cyan),)),

                  ElevatedButton(onPressed: (){
                    cont.text="√";
                    opr="√";
                    click=true;
                  }, child: Text("√",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.cyan),)),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  ElevatedButton(onPressed: () { if(click){
                    val2 +="7";
                    cont.text=val2;

                  }
                  else{
                    val1 +="7";
                    cont.text=val1;
                  }}, child: Text("7", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.pink),),),
                  ElevatedButton(onPressed: (){ if(click){
                    val2 +="8";
                    cont.text=val2;

                  }
                  else{
                    val1 +="8";
                    cont.text=val1;
                  }}, child: Text("8",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.pink),)),
                  ElevatedButton(onPressed: (){ if(click){
                    val2 +="9";
                    cont.text=val2;

                  }
                  else{
                    val1 +="9";
                    cont.text=val1;
                  }}, child: Text("9",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.pink),)),
                  ElevatedButton(onPressed: (){
                    cont.text="*";
                  opr="*";
                  click=true;
                  },
                      child: Text("*",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.cyan),)),
                  ElevatedButton(onPressed: (){
                    cont.text=".";
                    opr=".";
                    click=true;
                  }, child: Text(".",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.cyan),)),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  ElevatedButton(onPressed: () { if(click){
                    val2 +="0";
                    cont.text=val2;

                  }
                  else{
                    val1 +="0";
                    cont.text=val1;
                  }}, child: Text("0", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.cyan),),),
                  ElevatedButton(onPressed: (){ cont.text="mod";}, child: Text("mod",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.cyan),)),
                  ElevatedButton(onPressed: (){
                    cont.text="/";
                    opr="/";
                    click=true;

                  },
                      child: Text("/",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.cyan),)),
                  ElevatedButton(onPressed: (){


                    if(opr=="+"){
                      double a=double.parse(val1);
                      double b=double.parse(val2);

                      double result= a+b;
                      cont.text= result.toString();
                    };
                    if(opr=="-"){
                      double a=double.parse(val1);
                      double b=double.parse(val2);

                      double result= a-b;
                      cont.text= result.toString();
                    };
                    if(opr=="*"){
                      double a=double.parse(val1);
                      double b=double.parse(val2);

                      double result= a*b;
                      cont.text= result.toString();
                    };
                    if(opr=="/"){
                      double a=double.parse(val1);
                      double b=double.parse(val2);

                      double result= a/b;
                      cont.text= result.toString();
                    };
                    if (opr == "√") {
                      double a = double.parse(val1);

                      double result = sqrt(a);
                      cont.text = result.toString();
                    };
                    if(opr=="mod")
                    {
                      double b =double.parse(val1);
                      double a =double.parse(val2);
                      double result = b%a;
                      cont.text=result.toString();
                    };
                    if (opr == "^") {
                      double a = double.parse(val1);

                      double result = a*a;
                      cont.text = result.toString();
                    };
                    if (opr == "+/-") {
                      double a = double.parse(val1);

                      double result = a*a;
                      cont.text = result.toString();
                    };

                    }, child: Text("=",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.cyanAccent),),),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class qwert extends StatefulWidget {
  const qwert({super.key});

  @override
  State<qwert> createState() => _qwertState();
}

class _qwertState extends State<qwert> {

  TextEditingController ctrl = TextEditingController();

  String val1="",val2="",optr="";

  bool clk =false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(controller: ctrl,
          ),
         SizedBox(height: 50,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
           ElevatedButton(onPressed: (){
             if(clk)
               {
                 val2 = "1";
                 ctrl.text=val2;
               }
             else
               {
                 val1 = "1";
                 ctrl.text=val1;
               }
           },
               child: Text("1")),
           ElevatedButton(onPressed: (){
             if(clk)
             {
               val2 = "2";
               ctrl.text=val2;
             }
             else
             {
               val1 = "2";
               ctrl.text=val1;
             }
           },
               child: Text("2")),

           ElevatedButton(onPressed: (){
             ctrl.text="+";
             optr = "+";
             clk = true;
           },
               child: Text("+")),
           ElevatedButton(onPressed: (){
            if(optr == "+")

              {
                int a = int.parse(val1);
                int b = int.parse(val2);

                int res = a + b;

                ctrl.text = res.toString(
                );
              }
           },
               child: Text("=")),
         ],),

        ],
      ),
    );
  }
}

