import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    TextEditingController pname=TextEditingController();
    TextEditingController pid=TextEditingController();
    TextEditingController pquan=TextEditingController();
    TextEditingController pprice=TextEditingController();
    var pnames=[];
    var pids=[];
    var pquans=[];
    var pprices=[];
    @override
    Widget build(BuildContext context) {
      return  SingleChildScrollView(


        child: Container(


          margin: EdgeInsets.all(20.0),
          child: Column(


            children: <Widget>[

              SizedBox(height: 20.0,),
              TextField(

                controller: pname,
                decoration: InputDecoration(
                  hintText: "Enter Product Name",
                  border: OutlineInputBorder(),
                ),


              ),
              SizedBox(height: 10.0,),
              TextField(
                controller: pid,
                decoration: InputDecoration(
                  hintText: "Enter Product ID",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10.0,),
              TextField(
                controller: pquan,
                decoration: InputDecoration(
                  hintText: "Enter Product quanity,
                  border: OutlineInputBorder(),
                ),

              ),
              SizedBox(height: 10.0,),
              TextField(
                controller: pprice,
                decoration: InputDecoration(
                  hintText: "Enter the price",
                  border: OutlineInputBorder(),
                ),),
              SizedBox(height: 10.0,),
              RaisedButton(
                child: Text("Add Details",style: TextStyle(color: Colors.white),),
                color: Colors.pinkAccent,
                onPressed: ()
                {
                  var dname=name.text;
                  var droll=rollno.text;
                  var dadno=adno.text;
                  var dcollege=college.text;
                  //var details=[{"name":dname,"adno":dadno,"college":dcollege,"rollno":droll}];


                  setState(() {

                    names.add(dname);
                    rolls.add(droll);
                    adnos.add(dadno);
                    coll.add(dcollege);

                  });
                },

              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount:names.length==null?0:names.length ,
                itemBuilder: (context,index)
                {
                  return Card(
                    elevation: 19.0,
                    child: ListTile(
                      leading: Icon(Icons.face,size: 40.0,color: Colors.pinkAccent,),
                      trailing: GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              names.removeAt(index);
                              rolls.removeAt(index);
                              adnos.removeAt(index);
                              coll.removeAt(index);
                            });
                          },
                          child: Icon(Icons.clear,size: 40.0,color: Colors.pinkAccent,)),
                      title: Text(names[index].toString()),
                      subtitle: Text("Roll No:"+rolls[index].toString()+"\nAdno:"+adnos[index].toString()+"\nCollege:"+coll[index].toString()),

                    ),
                  );
                },
              ),
            ],
          ),
        ),
      );
  }
}
