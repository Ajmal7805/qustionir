import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Widget> scorekeeper=[];
  List<String> questionlist=[
    'my name is ajmal',
     'my name is fidha',
      'my name is rasha',
       "my  fathe's name is rasheed",
        'my frind name is shibil',
         'my frnd name is rini',
          'my teacher name is ajmal',
           'my teacher name is monisha',
            'my teacher name is nancy',
             'i have a car',
  ];
  List<String> answer=[
    'yes','no','no','yes','yes','no','no','yes','yes','no'
  ];
  int questionno=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.all(25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Center(child: Text(questionlist[questionno],style: TextStyle(color: Colors.white,fontSize: 20),),)),
              MaterialButton(onPressed: (){
                if(answer[questionno]=='yes'){
                  scorekeeper.add(Icon(Icons.star,color: Colors.green,));

                }else{
                   scorekeeper.add(Icon(Icons.circle,color: Colors.red,));
                }
                if(questionlist.length>questionno+1){
                  questionno=questionno+1;

                }else{
                  questionno=0;
                }
                
                setState(() {
                  
                });
              },
              height: 40,
              minWidth: double.infinity,
              color: Colors.green,
              child: Center(child: Text("TRUE",style: TextStyle(fontSize: 25,color: Colors.white),)),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),),
              SizedBox(
                height: 15,
              ),
              MaterialButton(onPressed: (){
                if(answer[questionno]=='no'){
                  scorekeeper.add(Icon(Icons.star,color: Colors.green,));
                 
                }else{
                  scorekeeper.add(Icon(Icons.circle,color: Colors.red,));
                  

                }
                if(questionlist.length>questionno+1){
                  questionno=questionno+1;

                }else{
                  questionno=0;

                }
                
                setState(() {
                  
                });
              },
              height: 40,
              minWidth: double.infinity,
              color: Colors.red,
              child: Center(child: Text("FALSE",style: TextStyle(fontSize: 25,color: Colors.white),)),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                scorekeeper,
              )
              
            ],
          ),
        ),
      ),
    );
  }
}