import 'package:flutter/material.dart';
import '../../model/watchlist.dart';
import 'drawer.dart';

class DetailPage extends StatelessWidget {
  final watchList;
  const DetailPage({Key? key, required this.watchList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Detail"),
        ),
        drawer: const Drawer(),
        body: Container(
          margin: EdgeInsets.only(top: 20, left: 5, right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text(
                watchList.title,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Text(
                    "Release Date: ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(watchList.releaseDate.toString(),
                      style: TextStyle(fontSize: 20))
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    "Rating: ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(watchList.rating.toString() + "/5",
                      style: TextStyle(fontSize: 20))
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    "Status: ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text((watchList.watched == true ? "Watched" : "Not Yet"),
                      style: TextStyle(fontSize: 20))
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  Text(
                    "Review: ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Expanded(
                  child:
                      Text(watchList.review, style: TextStyle(fontSize: 20))),
              Spacer(),
              Container(
                margin: EdgeInsets.all(5),
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Back")),
              )
            ],
          ),
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
