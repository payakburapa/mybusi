//หน้าตั้งค่า
import 'package:flutter/material.dart';
import 'package:mybusi/module/main_page.dart';
import 'package:mybusi/module/listmenu.dart';
import 'package:mybusi/setting/delete_setting.dart';

class Setting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.yellow.shade50,
      drawer: Listmenu(), // List menu left page
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.green),
        backgroundColor: Colors.yellow.shade500,
        title: Text("ตั้งค่า",style: TextStyle(color:Colors.green,fontWeight:FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_sharp,
              color: Colors.green,
            ),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => MainPage()), (route) => false);
            },
          )
        ],
      ),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child:Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlue.shade700,
                      border: Border.all(color: Colors.black,width: 0)
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.only(left: 20.0,top: 0.0,right: 20.0,bottom: 0.0),
                    //primary: Colors.white,
                    //textStyle: const TextStyle(fontSize: 10),
                    alignment: Alignment(MediaQuery.of(context).size.width * 0.023, 0)
                ),
                onPressed: (){

                },
                child: Text('ลบข้อมูลทั้งหมด',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20)),
              ),
            ],
          ),
        ),
      ),
    );
  }

}