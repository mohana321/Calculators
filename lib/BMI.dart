import 'package:flutter/material.dart';
class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  Color color = Colors.transparent;
  final weight= TextEditingController();
  final height= TextEditingController();
  var res;
  String bmi="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI calculator"),
        backgroundColor: Colors.cyanAccent,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
    child: Icon(Icons.arrow_back_outlined)),),


      body: Column(
        children: [
          Container(
            width: 412,
            decoration: BoxDecoration(

            ),
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Container(
                    width: 350,
                    child: TextFormField(
                      controller: weight,
                      decoration: InputDecoration(
                        hintText: "Enter the Weight in kg",
                       //fillColor: Colors.lightBlueAccent,
                        filled: true,
                        icon: Icon(Icons.height,size: 30,color: Colors.pink.shade100,),
                        border: OutlineInputBorder(



                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  child: TextFormField(
                    controller: height,

                    decoration: InputDecoration(
                      hintText: "Enter the height in cm",
                      //fillColor: Colors.lightBlueAccent,
                      filled: true,
                      icon: Icon(Icons.girl_rounded,size: 30,color: Colors.pink.shade100,),
                      border: OutlineInputBorder(
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: (){
                  res = double.parse(weight.text)/((double.parse(height.text)/100)*(double.parse(height.text)/100).round().toInt());
                  if(res<18.5){
                   bmi ="underweight";
                   color=Colors.lightBlueAccent;
                  }
                  else if(res>=18.5 && res<24.9){
                    bmi="Normal Weight"; color = Colors.green;
                  }
                  else if(res>=24.9 && res<29.9){
                    bmi="Over Weight";color = Colors.amber;
                  }
                  else
                  { bmi="Obesity";color = Colors.red;}
                  showModalBottomSheet(context: context, builder:(BuildContext context){
                    return Container(
                      height: 200,
                      width: 500,
                      color: color,
                      child: Column(
                        children: [
                          Text("bmi:$res"),
                          Text("Weight Status:$bmi"),

                        ],
                      ),

                    );

                  } );

                  },
                    child: Text("calculate")),
              ],
            ),

          ),


        ],
      ),
    );
  }
}
