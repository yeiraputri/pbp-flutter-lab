import 'package:flutter/material.dart';
import 'form_budget.dart';
import 'main.dart';
import 'drawer.dart';

class ShowBudget extends StatelessWidget {
  const ShowBudget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Budget',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyBudgetPage(),
    );
  }
}

class MyBudgetPage extends StatefulWidget {
  const MyBudgetPage({super.key});

  @override
  State<MyBudgetPage> createState() => _MyBudgetPageState();
}

class _MyBudgetPageState extends State<MyBudgetPage> {
  List<Budget> budgetData = Budget.budgetData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      // Menambahkan drawer menu
      drawer: const MyDrawer(),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: budgetData.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 2,
            child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      budgetData[index].judul,
                      style: TextStyle(fontSize: 18),
                    ),
                    (budgetData[index].dateTime != null
                        ? Text(
                            " ${budgetData[index].dateTime?.day}-${budgetData[index].dateTime?.month}-${budgetData[index].dateTime?.year} ",
                            style: TextStyle(fontSize: 12),
                          )
                        : SizedBox())
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      budgetData[index].nominal.toString(),
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    Text(budgetData[index].pemasukan,
                        style: TextStyle(color: Colors.black, fontSize: 12)),
                  ],
                )),
          );
        },
      ),
    );
  }
}