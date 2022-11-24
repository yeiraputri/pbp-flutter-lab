import 'package:counter_7/main.dart';
import 'detailpage.dart';
import 'package:counter_7/drawer.dart';
import 'form_budget.dart';
import 'my_budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/util/fetch.dart';

class WatchListPage extends StatefulWidget {
  const WatchListPage({super.key});

  @override
  State<WatchListPage> createState() => _WatchListPageState();
}

class _WatchListPageState extends State<WatchListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: MyDrawer(),
      body: FutureBuilder(
          future: fetchToDo(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(child: CircularProgressIndicator());
            } else {
              if (!snapshot.hasData) {
                return Column(
                  children: const [
                    Text(
                      "Tidak ada watchlist :(",
                      style: TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                    ),
                    SizedBox(height: 8),
                  ],
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage(
                                      watchList: snapshot.data![index])),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 6),
                            padding: const EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: (snapshot.data![index].watched
                                      ? Colors.blue
                                      : Colors.red),
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 180, 167, 167),
                                      blurRadius: 1.0)
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${snapshot.data![index].title}",
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                                Checkbox(
                                  value: snapshot.data![index].watched,
                                  onChanged: (value) {
                                    setState(() {
                                      snapshot.data![index].watched = value!;
                                    });
                                  },
                                )
                              ],
                            ),
                          ),
                        ));
              }
            }
          }),
    );
  }
}
