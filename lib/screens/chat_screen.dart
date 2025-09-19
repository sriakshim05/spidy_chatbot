import 'package:flutter/material.dart';
import 'package:chat_gpt/services/assets_manager.dart';

class Chartscreen extends StatefulWidget {
  const Chartscreen({super.key});

  @override
  State<Chartscreen> createState() => _ChartscreenState();
}

class _ChartscreenState extends State<Chartscreen> {
  final TextEditingController _controller=TextEditingController();
  final List<String> messages=[];
  void sendMessage(){
    String text= _controller.text.trim();
    if(text.isNotEmpty){
      setState(() {
        messages.add(text);
      });
      _controller.clear();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Spidy Chat',selectionColor: Colors.black,),
          centerTitle:true,
          backgroundColor:Colors.redAccent,
           leading: IconButton(icon:Icon(Icons.menu,color: Colors.black,),onPressed: () {
            print("Menu clicked");
          },),
         actions: [
          IconButton( icon:Icon(Icons.account_circle,color: Colors.black,),onPressed:(){
            print("contact press");
          },
          )
         ],
          
        ),
        body:Column(
          children: [
            Expanded(child: ListView.builder(
              padding: const.EdgeInsets.all(10),
              itemCount:messages.length,
              
            ))
          ],
        )


        
        
      );
    
  }
}