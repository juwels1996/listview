import 'package:flutter/material.dart';
import 'package:list_view/details.dart';
import 'package:list_view/model/model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Model> jewel = [];

  _HomePageState() {
    jewel.add(Model(
        id: 1,
        details: "dfsdfds",
        name: "Masud",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjAAwQyKxGO39mWtUYjD0s_uhMSmEi4wXyPg&usqp=CAU"));
    jewel.add(Model(
        id: 2,
        details: "akjfdshafkjhsd",
        name: "Sadik",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuIbv-7JSgC23hcGq8qDRBpFzdMBEw8urHdQ&usqp=CAU"));
    jewel.add(Model(
        id: 3,
        details: "dfsdfds",
        name: "Salman",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjAAwQyKxGO39mWtUYjD0s_uhMSmEi4wXyPg&usqp=CAU"));
    jewel.add(Model(
        id: 4,
        details: "dfsdfds",
        name: "Masud",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjAAwQyKxGO39mWtUYjD0s_uhMSmEi4wXyPg&usqp=CAU"));
    jewel.add(Model(
        id: 5,
        details: "akjfdshafkjhsd",
        name: "Sadik",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuIbv-7JSgC23hcGq8qDRBpFzdMBEw8urHdQ&usqp=CAU"));
    jewel.add(Model(
        id: 6,
        details: "dfsdfds",
        name: "Salman",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjAAwQyKxGO39mWtUYjD0s_uhMSmEi4wXyPg&usqp=CAU"),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: jewel.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SecondPage(
                              model: jewel[index],
                              name: "pranto",
                            )));
                  },
                  leading: Hero(
                    tag: jewel[index],
                    child: Image.network("${jewel[index].image}"),
                  ),
                  title: Text("${jewel[index].name}"),
                  subtitle: Text("${jewel[index].details}"),
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          jewel.removeAt(index);
                          print("delete");
                        });
                      },
                      icon: Icon(Icons.delete)),
                );
              },
            ),
          ],
        ),
      ),
      
    );
  }
}
