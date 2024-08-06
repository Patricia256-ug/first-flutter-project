import 'package:flutter/material.dart';
import 'dart:io';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'pixel',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                visualDensity: VisualDensity.adaptivePlatformDensity),
      
      home: const MyHomePage(),
       routes: { 
'/second': (context) => SecondPage(),
'/third':(context)=> ThirdPage(),
'/fourth':(context)=> FourthPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EVENT HUB'),),
      backgroundColor: Colors.white,
      body: Padding(padding: const EdgeInsets.only(top:30,left: 50,bottom:30,right:50),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            width: 300,
          child: Image.network('https://media.istockphoto.com/id/1244391397/de/vektor/abstraktes-zeichenkonzept.jpg?s=612x612&w=is&k=20&c=__iF666VHwIkXT4leYnihLnavm9bSgBXdo5qmwqXv_E='),
          ),
          
          const Column(
            children: [
              Text('Events at your fingertips',style:TextStyle(fontWeight:FontWeight.bold,fontSize:20),),
              SizedBox(
                height: 50,
                width: 500,
              ),
              Text('Explore EventHub,your all in one platform for',style: TextStyle(fontSize: 10),),
              Text('discovering,planning,and attending the best',style: TextStyle(fontSize: 10),),
              Text('events in your area',style:TextStyle(fontSize: 10),),
            ],), const SizedBox(
            height: 100,
            width: 100,
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ThirdPage())
                  );
                },
              child: const Text('skip',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),),
              const SizedBox(
                height: 50,
                width: 50,
              ),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: 15,
                    decoration: const BoxDecoration(color: Colors.greenAccent,shape: BoxShape.rectangle),
                    
                      
                    ),
                    Padding(padding:const EdgeInsets.only(left:1),
                    child:Container(
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(color: Colors.blueGrey,shape: BoxShape.circle),
                    
                    ),
               ), ],
                  ),
                  const SizedBox(
height: 100,
width: 100,
                  ),
                  IconButton(
              icon: const Icon(Icons.arrow_forward),
              iconSize: 50.0,
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),  
                ],
              ),
            ],

          )
        
      )
     ); 
  }
}
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('local events'),),
      backgroundColor: Colors.white,
      body: Padding(padding: const EdgeInsets.only(top:30,left: 50,right: 50,bottom: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: Image.network('https://media.istockphoto.com/id/1373895765/vector/funfair-rides-at-night-background.webp?s=612x612&w=is&k=20&c=Yvf3a-JScl6tELtnkPOJHyKfrecspaaNpXSpnIWc-WY='),
          ),
          const SizedBox(
            height: 100,
            width: 100,
          ),
          const Text('Dive into local events',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          const SizedBox(
            height: 20,
            width: 20,
          ),
          const Text('Embark on a journey of discovery with',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
          const Text('Eventtogo,your ultimate companion for',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
          const Text('Exploring the best events in town',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15),),
          const SizedBox(
            height: 100,
            width: 100,
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ThirdPage()));
                },
             child:  const Text('skip',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 10),),),
              const SizedBox(
                height: 50,
                width: 50,
              ),
              Row(
                children: [
                  Container(
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(color: Colors.blueGrey,shape: BoxShape.circle),
                    
                      
                    ),
                    Padding(padding:const EdgeInsets.only(left: 1),
                    child:Container(
                    height: 8,
                    width: 15,
                    decoration: const BoxDecoration(color: Colors.greenAccent,shape: BoxShape.rectangle),
                    
                    ),
               ), ],
                  ),
                  const SizedBox(
                  height: 50,
                   width: 50,
                  ),
                IconButton(
              icon: const Icon(Icons.arrow_forward),
              iconSize: 50.0,
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
            ),  
                ],
              ),
            ],
          ),

        
      ),
      );
      
      
  }
}
 class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('sign in'),),
      backgroundColor: Colors.white,
      body: Padding(padding: const EdgeInsets.only(top:30,left: 20,right: 20,bottom: 100
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,  
        children: [
SizedBox(
  height: 400,
  width: 700,
  child: Image.network('https://cdn.pixabay.com/photo/2021/11/07/19/31/business-idea-6777771_960_720.jpg'),
),
Padding(padding: const EdgeInsets.only(left:10),
child:Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    
const Text('Enter Mobile Number',style: TextStyle(fontSize: 15),),
const SizedBox(
  width: 300,
child:TextField( 
  
  decoration: InputDecoration(hintText: 'mobile number', prefixIcon:Icon(Icons.numbers),enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
), focusedBorder: OutlineInputBorder(
  borderSide: BorderSide(color: Colors.black,width: 2),
),),),

),
const SizedBox(
  height: 30,
  width: 50,
),
GestureDetector(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder:(context)=> FourthPage()),);
  },
child:Container(
  height: 30,
  width: 300,
  decoration: const BoxDecoration(shape: BoxShape.rectangle,color: Colors.green),
  padding:const EdgeInsets.only(left:100),
  
 child:  
 
 const Text(' Get OTP',style: TextStyle(fontSize: 20),),
),),
const Padding(padding: EdgeInsets.only(left:10),
child: Text('or',style: TextStyle(fontSize: 20),),
),
Container(
  height: 30,
  width: 300,
  decoration: BoxDecoration(border: Border.all()),
  child: Row(
    children: [
      SizedBox(
        height: 30,
        width: 50,
        child: Image.network('https://cdn.pixabay.com/photo/2016/10/23/06/04/google-1762248_960_720.png'),

      ),
      const Text('  Continue with Google',style: TextStyle(fontSize: 20),)
    ],
  ),
),
const SizedBox(
  height: 10,
),
Container(
  height: 30,
  width: 300,
  decoration: BoxDecoration(border: Border.all()),
  child: Row(
    children: [
      SizedBox(
        height: 30,
        width: 50,
        child: Image.network('https://cdn.pixabay.com/photo/2016/05/15/01/05/icon-1392947_960_720.png'),

      ),
      const Text('  Continue with Facebook',style: TextStyle(fontSize: 20),)
    ],
  ),
),
  ],
),
),
        ],
         ),
      ),
    );
  }
 }
 class FourthPage extends StatefulWidget{
  @override
  FourthPageState createState() => FourthPageState();
 }
 
 class FourthPageState extends State<FourthPage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('verification page'),
      ),
      body: Padding(padding: const EdgeInsets.only(right: 50,bottom: 20,top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            width: 300,
            child: Image.network('https://cdn.pixabay.com/photo/2015/08/29/08/29/balloon-912841_960_720.jpg'),
          ),
          const Text('Verification code',style: TextStyle(fontSize:20,color:  Colors.green),),
          const SizedBox(width: 100,height: 50,),
          const Text('please enter the verification code sent to your',style: TextStyle(fontSize:20,color:  Colors.grey),),
          const Text('mobile number',style: TextStyle(fontSize:20,color:  Colors.grey)),
          
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('8709185622',style: TextStyle(fontSize:20,color:  Colors.green),),
              Icon(Icons.add_link),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(
                height: 20,width: 5,
              ),
             Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(
                height: 20,width: 5,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(
                height: 20,width: 5,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(border: Border.all(color: Colors.grey),borderRadius: BorderRadius.circular(10)),
              ), 
            ],

          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text('Didnot receive the OTP?',style: TextStyle(fontSize:15,color:  Colors.black),),
           Text('Resend OTP',style: TextStyle(fontSize:15,color:  Colors.green),)
            ],
          ),
          const SizedBox(height: 50,width: 100,),
          Container(
          width: 300,
          height: 50,
          decoration: const BoxDecoration(shape: BoxShape.rectangle,color: Colors.green), 
          padding: const EdgeInsets.only(left: 100,top: 10),
          child: const Text('Get Started',style: TextStyle(fontSize:15,color:  Colors.white),), 
          ),
        ],
      ),
      ),
    );
  }
 }