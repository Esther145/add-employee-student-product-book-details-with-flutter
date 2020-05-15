import 'package:flutter/material.dart';

class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  TextEditingController bname=TextEditingController();
  TextEditingController bauthor=TextEditingController();
  TextEditingController bgenre=TextEditingController();
  var bnames=[];
  var bauthors=[];
  var bgenres=[];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0,),
            TextField(
              controller: bname,
              decoration: InputDecoration(
                hintText: "Enter the book name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0,),
            TextField(
              controller: bauthor,
              decoration: InputDecoration(
                hintText: "Enter the book author",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0,),
            TextField(
              controller: bgenre,
              decoration: InputDecoration(
                hintText: "Enter the book genre",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0,),
            RaisedButton(
              child: Text("ADD BOOK",style: TextStyle(color: Colors.white),),
              onPressed: ()
            {
              var name=bname.text;
              var author=bauthor.text;
              var genre=bgenre.text;
              setState(() {
                bnames.add(name);
                bauthors.add(author);
                bgenres.add(genre);
              });
            },
              color: Colors.blueAccent,
            ),
            ListView.builder(
              shrinkWrap: true,
                itemCount: bnames.length==null?0:bnames.length,

                itemBuilder: (context,index)
                {
                  return Card(
                    elevation: 19.0,
                    child: ListTile(
                      leading: Icon(Icons.library_books,size: 30.0,color: Colors.blueAccent,),
                      trailing: GestureDetector(
                        
                        onTap: ()
                        {
                          setState(() {
                            bnames.removeAt(index);
                            bauthors.removeAt(index);
                            bgenres.removeAt(index);
                          });
                        },
                        child: Icon(Icons.clear,size: 30.0,color: Colors.blueAccent,),

                      ),
                      title: Text(bnames[index].toString()),
                      subtitle: Text("\nAuthor:"+bauthors[index].toString()+"\nGenre:"+bgenres[index]),
                    ),

                  );
                }

            ),


          ],
        ),

      ),
    );
  }
}
