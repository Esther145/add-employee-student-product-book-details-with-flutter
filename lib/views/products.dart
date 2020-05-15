import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {



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
                  hintText: "Enter Product quantity",
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
                child: Text("ADD PRODUCTS",style: TextStyle(color: Colors.white),),
                color: Colors.deepPurple,
                onPressed: ()
                {
                  var name=pname.text;
                  var quan=pquan.text;
                  var id=pid.text;
                  var price=pprice.text;
                  //var details=[{"name":dname,"adno":dadno,"college":dcollege,"rollno":droll}];


                  setState(() {

                    pnames.add(name);
                    pquans.add(quan);
                    pids.add(id);
                    pprices.add(price);

                  });
                },

              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount:pnames.length==null?0:pnames.length ,
                itemBuilder: (context,index)
                {
                  return Card(
                    elevation: 19.0,
                    child: ListTile(
                      leading: Icon(Icons.shop,size: 40.0,color: Colors.deepPurpleAccent,),
                      trailing: GestureDetector(
                          onTap: ()
                          {
                            setState(() {
                              pnames.removeAt(index);
                              pprices.removeAt(index);
                              pquans.removeAt(index);
                              pids.removeAt(index);
                            });
                          },
                          child: Icon(Icons.clear,size: 40.0,color: Colors.deepPurpleAccent,)),
                      title: Text(pids[index].toString()),
                      subtitle: Text("Name:"+pnames[index].toString()+"\nQuantity"+pquans[index].toString()+"\nPrice:"+pprices[index].toString()),

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
