import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl/intl.dart';
import 'maps.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  String dropdownValue = 'ChooseCrimeType';
  String dropdownValue2 = 'ChooseCrimeDate';

  var crimeList = [
    'ChooseCrimeType',
    'Armed Assault',
    'Assasination',
    'Vehicle Theft',
    'Vehicle Stolen',
    'Drugs',
    'Harassment',
    'Hijacking',
    'Hostage(Kidnapping)',
    'Mobile Snatching',
    'Purse Snatching',
    'Murder',
    'Robery',
  ];

  get textStyle => null;

  TextEditingController dateinput = TextEditingController();
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              AppBar(
                automaticallyImplyLeading: false, //App bar sy arrow htata ha
                title: Text(
                  "Crime Rate Tracking",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 25,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_rounded),
                    iconSize: 25,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    iconSize: 25,
                  )
                ],

                backgroundColor: Color.fromRGBO(84, 83, 97, 100),
                foregroundColor: Colors.white,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.home),
                      iconSize: 50,
                      color: Color.fromARGB(255, 37, 170, 226),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.maps_ugc),
                      iconSize: 50,
                      color: Color.fromARGB(255, 37, 170, 226),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications),
                      iconSize: 50,
                      color: Color.fromARGB(255, 37, 170, 226),
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      iconSize: 50,
                      color: Color.fromARGB(255, 37, 170, 226),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(20)),
              CircleAvatar(
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage('assets/logo.jpeg'),
                radius: 70,
              ),
              Padding(padding: EdgeInsets.all(20)),
              Container(
                height: 50,
                width: 350,
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: SizedBox(
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          fillColor: Color.fromRGBO(35, 59, 108, 100),
                          filled: true,
                          contentPadding: EdgeInsets.all(10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          labelText: "Search By Crime",
                        ),
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_drop_down_circle),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 37, 170, 226),
                        ),
                        items: <String>[
                          'ChooseCrimeType',
                          'Armed Assault',
                          'Assasination',
                          'Vehicle Theft',
                          'Vehicle Stolen',
                          'Drugs',
                          'Harassment',
                          'Hijacking',
                          'Hostage(Kidnapping)',
                          'Mobile Snatching',
                          'Purse Snatching',
                          'Murder',
                          'Robery',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                      ),
                    )),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: Color.fromRGBO(35, 59, 108, 100),
                          onPrimary: Color.fromARGB(255, 37, 170, 226),
                          elevation: 20,
                          shadowColor: Colors.black),
                      onPressed: () {},
                      child: Icon(Icons.navigate_next_rounded),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        width: 300,
                        child: TextField(
                          controller: dateinput,
                          decoration: InputDecoration(
                            fillColor: Color.fromRGBO(35, 59, 108, 100),
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 40, horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)),
                            labelText: "Search By Date",
                          ),
                          readOnly:
                              true, //set it true, so that user will not able to edit text
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(
                                    2000), //DateTime.now() - not to allow to choose before today.
                                lastDate: DateTime(2101));
                            if (pickedDate != null) {
                              print(
                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                              String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                              print(
                                  formattedDate); //formatted date output using intl package =>  2021-03-16
                              //you can implement different kind of Date Format here according to your requirement

                              setState(() {
                                dateinput.text =
                                    formattedDate; //set output date to TextField value.
                              });
                            } else {
                              print("Date is not selected");
                            }
                          },
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Color.fromARGB(255, 37, 170, 226),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: Color.fromRGBO(35, 59, 108, 100),
                          onPrimary: Color.fromARGB(255, 37, 170, 226),
                          elevation: 20,
                          shadowColor: Colors.black),
                      onPressed: () {},
                      child: Icon(Icons.navigate_next_rounded),
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(10)),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: Color.fromRGBO(35, 59, 108, 100),
                            filled: true,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 40, horizontal: 20),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)),
                            labelText: "Search By Area",
                          ),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: new RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: Color.fromRGBO(35, 59, 108, 100),
                          onPrimary: Color.fromARGB(255, 37, 170, 226),
                          elevation: 20,
                          shadowColor: Colors.black),
                      onPressed: () {},
                      child: Icon(Icons.navigate_next_rounded),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(19, 28, 51, 100),
    );
  }
}
