import "dart:developer";
import "package:flutter/cupertino.dart";
import "package:flutter/widgets.dart";
import "package:flutter/material.dart";
 
void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
 
class MyApp extends StatefulWidget {
  const MyApp({super.key});
 
  @override
  State<MyApp> createState() => _MyAppState();
}
 
class _MyAppState extends State<MyApp> {
  double zkah=0;
 
  double amount=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
 
        backgroundColor: Color.fromARGB(255, 9, 59, 41),
        centerTitle: true,
        title: const Text("زكّي"),titleTextStyle: TextStyle(fontSize: 29,fontWeight: FontWeight.bold,color: const Color.fromARGB(255, 255, 255, 255)),
     
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
 
            Column(children: [
 
              Text(
                "حاسبة الزكّاة",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
           
            ],
 
 
            ),
 
 
 
SizedBox(height: 24,),
 
            Container(child:Column(
        children: [
        Container(
          decoration: BoxDecoration( borderRadius: BorderRadius.circular(15),),
           child: Row (
            children: [ SizedBox(width: 30,) ,SizedBox(
            height: 100,
            width: 300,
             child: TextField(
                  decoration: InputDecoration( hintText: "1000 SR" ,labelText: "مبلغ النقد",),
                  onSubmitted: (value) { setState(() {
                     amount = double.parse(value);
                  });
                 
                  },
                ),
           )],
        )
        ),
 
        SizedBox(height: 24,),
 
    ElevatedButton(
     
 
                onPressed: () {
                  setState(() {
                    zkah = amount/ 40 ;
                  });
                 
                },
               
                child: const Row(
 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.calculate_rounded, color:Color.fromARGB(255, 9, 59, 41)), SizedBox(width: 20) , Text("احسب", style: TextStyle( fontSize: 30 , fontWeight: FontWeight.bold,color: Color.fromARGB(255, 9, 59, 41)),)],
                ),
              ),
              SizedBox(height: 30,),
 
 
  Container( decoration: BoxDecoration(color: Color.fromARGB(255, 227, 227, 227)),
    child:  Row (  
    mainAxisAlignment: MainAxisAlignment.center,
    children: [ Text( "  ر.س   ${zkah.toString()}" , style: TextStyle( fontSize: 20) ,) , SizedBox(width: 10,) , Text( " الزكاة المستحقة " ,  style: TextStyle( fontSize: 20)) ],))
 
  ]) ,
 
 
 
            ),
 
 
        SizedBox(height: 35,),
 
 
           
 
 
 
 
 
 
 
 
 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
              Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromARGB(255, 227, 227, 227),),
                     height: 30,
               
                  child: Row(
                    children: [
                      Text("الحاسبة تحسب زكاة النقود فقط",style: new TextStyle(
                        color: Colors.black,
                        fontFamily: 'GreatVibes',
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                     
                     
                      ),),
 
                        SizedBox(
                  width: 10,
                ),
 
 
 
                Icon(Icons.warning_amber_rounded,color: Color.fromARGB(255, 9, 59, 41),),
                    ],
                  ),
 
               
               
                ),
               
 
 
 
           
            ],
           
             
 
            ),
 
        SizedBox(height:35 ,),
 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
               Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color.fromARGB(255, 9, 59, 41),),
                     height: 60,
                     width: 300
                     ,
             
 
                     child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,

                      children: [
                        Text("ادفع من هنا",style: new TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'GreatVibes',
                        fontSize: 29,
                        fontWeight: FontWeight.bold
                     
                     
                      ),)
                      ],
 
 
                     ),
               
 
 
               )
 
            ],
 
 
            ),
           
 
 
             
        SizedBox(height: 100,),
           
 
 
          Text(
              "﴾وَالَّذينَ هُم لِلزَّكاةِ فاعِلونَ﴿",
              style: TextStyle(fontSize: 25),
            )],
        ),
      ),
    );
  }
}
