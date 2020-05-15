import 'package:flutter/material.dart';

class Employees extends StatefulWidget {
  @override
  _EmployeesState createState() => _EmployeesState();
}

class _EmployeesState extends State<Employees> {
  TextEditingController ename =TextEditingController();
  TextEditingController ejob=TextEditingController();
  TextEditingController eid=TextEditingController();
  TextEditingController esal=TextEditingController();
  var enames=[];
  var eids=[];
  var ejobs=[];
  var esals=[];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20.0),
        child:
        Column(
          
          children: <Widget>[
            
            SizedBox(height: 20.0,),
            TextField(
              controller: eid,
              decoration: InputDecoration(
                hintText: "Enter the Employee ID",
                border: OutlineInputBorder(),
              ),
            ),
          SizedBox(height: 20.0,),
          TextField(
            controller: ename,
            decoration: InputDecoration(
              hintText: "Enter the Employee name",
              border: OutlineInputBorder(),
            ),

          ),
          SizedBox(height: 10.0,),
          TextField(
            controller: ejob,
            decoration: InputDecoration(
              hintText: "Enter the Employee Job",
              border: OutlineInputBorder(),
            ),
          ),
            SizedBox(height: 10.0,),
            TextField(
              controller: esal,
              decoration: InputDecoration(
                hintText: "Enter the Employee Salary",
                border: OutlineInputBorder(),
              ),
            ),
            RaisedButton(
              child: Text("ADD EMPLOYEE",style: TextStyle(color: Colors.white),),
              color: Colors.teal,
              onPressed: ()
            {
              var name =ename.text;
              var job=ejob.text;
              var id=eid.text;
              var sal=esal.text;
              setState(() {
                enames.add(name);
                ejobs.add(job);
                eids.add(id);
                esals.add(sal);

              });
            },
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: enames.length==null?0:enames.length,

                itemBuilder: (context,index)
                {
                  return Card(
                    elevation: 19.0,
                    child: ListTile(
                      leading: Icon(Icons.perm_identity,size: 30.0,color: Colors.teal,),
                      trailing: GestureDetector(

                        onTap: ()
                        {
                          setState(() {
                            enames.removeAt(index);
                            ejobs.removeAt(index);
                            eids.removeAt(index);
                            esals.add(index);
                          });
                        },
                        child: Icon(Icons.clear,size: 30.0,color: Colors.teal,),

                      ),
                      title: Text(eids[index].toString()),
                      subtitle: Text("\nName:"+enames[index].toString()+"\nJob:"+ejobs[index].toString()+"\nSalary:"+esals[index].toString()),
                    ),

                  );
                }

            ),

          ],
        )
      ),
    );
  }
}
