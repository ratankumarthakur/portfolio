import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:portfolio_website/glass.dart';
import 'package:portfolio_website/tex.dart';
import 'package:portfolio_website/tex2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:s1(),
    );
  }
}

class s1 extends StatefulWidget {
  const s1({super.key});

  @override
  State<s1> createState() => _s1State();
}

class _s1State extends State<s1> {

  var color1=Colors.white;
  var color2=Colors.white;
  var color3=Colors.white;
  var x= fun();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions:  [
          Row(
            children: [
              tex(child: FaIcon(FontAwesomeIcons.github)),SizedBox(width: 50,),
              tex2(child: FaIcon(FontAwesomeIcons.linkedin,color: Colors.red,)),
              SizedBox(width: 40,),
            ],
          )
        ],
      ),

      backgroundColor: Colors.black,

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(height: MediaQuery.of(context).size.height,width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [

              //background image
              Image.asset("assets/img_5.png",fit: BoxFit.fill,),

              //my image
              Align(alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(height: MediaQuery.of(context).size.height,width: 3*MediaQuery.of(context).size.width/4,
                  child: Image.asset("assets/img4.png",fit: BoxFit.cover,),),
                ),
              ),

              //content
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height:MediaQuery.of(context).size.height/2 ,),
                      glass(
                          width: double.infinity,
                          height: 300,
                          child:const Center(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Hi, I'm ",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.w600),),
                                    Text("Ratan",style: TextStyle(color: Colors.red,fontSize: 35,fontWeight: FontWeight.w600),),

                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("From Bhilai, ",style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.w600),),

                                  ],
                                ),SizedBox(height: 10,),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Chhattisgarh",style: TextStyle(color: Colors.red,fontSize: 35,fontWeight: FontWeight.w600),),
                                  ],
                                ),SizedBox(height: 30,),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Adept  in  ",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
                                    Text("cross-platform ",style: TextStyle(color: Colors.red,fontSize: 25,fontWeight: FontWeight.w600),),

                                  ],
                                ),SizedBox(height: 10,),
                                Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                  Text(" mobile  app  development",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),),
                                ],),
                              ],
                            ),
                          ) ),
                      SizedBox(height: 150,),

                      //About me section
                      glass(
                          width: double.infinity,
                          height: 750,

                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Container(
                              child: Column(mainAxisAlignment: MainAxisAlignment.start,children: [
                                Text("About Me",style: TextStyle(color: Colors.red,fontSize: 35,fontWeight: FontWeight.w600),),
                                SizedBox(height: 10,),

                                Text("As a second-year IT student at NIT Raipur pursuing a B.Tech degree, I stand out as a highly skilled and motivated individual in the field of technology. With a strong foundation in programming languages such as C++, Java, and Python, I have demonstrated proficiency not only in theory but also in practical application. Adept in mobile app development, I specialize in creating cross-platform applications for both Android and iOS using Flutter, showcasing a versatile and cutting-edge approach to software development. This proficiency in multiple platforms positions me as a valuable asset with the ability to contribute to diverse projects. Beyond programming, I possess a keen interest and some knowledge in design, rounding out a skill set that extends beyond coding. This combination of technical prowess and a creative flair distinguishes me as a well-rounded IT professional with the potential to make significant contributions to the industry.",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w100),),
                                SizedBox(height: 20,),
                                Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                                  TextButton(onPressed: (){
                                    setState(() {
                                      color1=Colors.red;
                                      color2=Colors.white;
                                      color3=Colors.white;
                                      x=fun();
                                    });
                                  }, child: Text("Tech Stack",style: TextStyle(color: color1,fontSize: 12,fontWeight: FontWeight.w200))),
                                  SizedBox(width: 7,),
                                  TextButton(onPressed: (){
                                    setState(() {
                                      color1=Colors.white;
                                      color2=Colors.red;
                                      color3=Colors.white;
                                      x=run();
                                    });
                                  }, child: Text("Pos of Respon..",style: TextStyle(color: color2,fontSize: 12,fontWeight: FontWeight.w200))),
                                  SizedBox(width: 7,),
                                  TextButton(onPressed: (){
                                    setState(() {
                                      color1=Colors.white;
                                      color2=Colors.white;
                                      color3=Colors.red;
                                      x=ran();
                                    });
                                  }, child: Text("Education",style: TextStyle(color: color3,fontSize: 12,fontWeight: FontWeight.w200))),
                                ],),
                                Container(
                                  child: x,
                                )

                              ],),),
                          ),
                      ),

                      SizedBox(height: 100,),

                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
fun(){
  return Container(child: Column(
    children: [
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 50,width: 50,child: ClipRRect(borderRadius: BorderRadius.circular(11),child: Image.asset("assets/img.png"),)),SizedBox(width: 20,),
          Container(height: 50,width: 50,child: ClipRRect(borderRadius: BorderRadius.circular(11),child: Image.asset("assets/img_1.png"),)),SizedBox(width: 20,),
          Container(height: 70,width: 70,child: ClipRRect(borderRadius: BorderRadius.circular(11),child: Image.asset("assets/img_2.png"),)),SizedBox(width: 20,),
        ],
      ),SizedBox(height: 20,),
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 50,width: 50,child: ClipRRect(borderRadius: BorderRadius.circular(11),child: Image.asset("assets/img_3.png"),)),SizedBox(width: 20,),
          Container(height: 50,width: 50,child: ClipRRect(borderRadius: BorderRadius.circular(11),child: Image.asset("assets/img_4.png"),)),SizedBox(width: 20,),
          Container(height: 50,width: 50,child: ClipRRect(borderRadius: BorderRadius.circular(11),child: Image.asset("assets/img_8.png"),)),SizedBox(width: 20,),
        ],
      ),

    ],
  ),);
}

run(){
  return Padding(
    padding: const EdgeInsets.all(28.0),
    child: Text("Technical Executive at Innovation Cell NIT Raipur",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w200)),
  );
}

ran(){
  return Column(
    children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Class 10th",style: TextStyle(color: Colors.white,fontSize: 15,),),
          Text("96.2%",style: TextStyle(color: Colors.white,fontSize: 15,),),
          Text("CBSE",style: TextStyle(color: Colors.white,fontSize: 15,),)
        ],
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Class 12th",style: TextStyle(color: Colors.white,fontSize: 15,),),
          Text("96.6%",style: TextStyle(color: Colors.white,fontSize: 15,),),
          Text("CBSE",style: TextStyle(color: Colors.white,fontSize: 15,),)
        ],
      ),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("B.Tech",style: TextStyle(color: Colors.white,fontSize: 15,),),
          Text("8.58 CGPA",style: TextStyle(color: Colors.white,fontSize: 15,),),
          Text("NIT",style: TextStyle(color: Colors.white,fontSize: 15,),)
        ],
      )
    ],
  );
}
