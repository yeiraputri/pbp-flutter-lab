import 'package:counter_7/drawer.dart';

import 'my_budget.dart';

import 'package:flutter/material.dart';
import 'main.dart';

class Budget {
  String judul;
  int nominal;
  String pemasukan;
  DateTime? dateTime;
  Budget(this.judul, this.nominal, this.pemasukan, this.dateTime);
  static List<Budget> budgetData = [];
}

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _nominal = 0;
  List<String> jenisBudget = ['Pengeluaran', 'Pemasukan'];
  String _pemasukan = "Pengeluaran";
  DateTime? _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Budget'),
      ),
      // Menambahkan drawer menu
      drawer: const MyDrawer(),
      body: Form(
        key: _formKey,
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Contoh: Judul",
                    labelText: "Judul",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _judul = value!;
                    });
                  },
                  onSaved: (String? value) {
                    setState(() {
                      _judul = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Judul tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Nominal",
                    labelText: "Nominal",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _nominal = int.parse(value!);
                    });
                  },
                  onSaved: (String? value) {
                    setState(() {
                      _nominal = int.parse(value!);
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Nominal tidak boleh kosong!';
                    }
                    if (int.tryParse(value!) == null)
                      return 'Nominal harus berupa angka!';

                    return null;
                  },
                ),
              ),
              Container(
                child: IconButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2099),
                      ).then(
                        (date) => setState(
                          () => _dateTime = date,
                        ),
                      );
                    },
                    icon: Icon(Icons.calendar_month)),
              ),
              DropdownButton(
                value: _pemasukan,
                icon: const Icon(Icons.keyboard_arrow_down),
                items: jenisBudget.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _pemasukan = newValue!;
                  });
                },
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Budget.budgetData.add(
                          new Budget(_judul, _nominal, _pemasukan, _dateTime));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}