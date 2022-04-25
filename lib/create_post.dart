import 'package:flutter/material.dart';
import 'package:fyp/widget.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:flutter_launcher_icons/android.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';

class create_post extends StatefulWidget {
  const create_post({Key? key}) : super(key: key);

  @override
  State<create_post> createState() => _create_postState();
}

class _create_postState extends State<create_post> {
  String dropdownValue = 'ChooseCrimeType';
  late String imagePath;

  void pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery);
    print(image?.path);
    print(image.runtimeType);
    setState(() {
      imagePath = image!.path;
    });
  }

  TextEditingController dateinput = TextEditingController();
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  // void post() {
  //   Navigator.push(context, MaterialPageRoute(builder: ((context) => posts())));
  // }

  ///time picker
  String? _selectedTime;

  TextEditingController timeinput = TextEditingController();
  void initState1() {
    timeinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // nechy waly circle upr nhi aayen gy..
      backgroundColor: Color.fromARGB(255, 199, 190, 190),
      body: Stack(children: <Widget>[
        Align(
          alignment: Alignment.topCenter,
          child: ListView(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(10)),
              //     margin: const EdgeInsets.fromLTRB(20, 300, 20, 10),
              margin: const EdgeInsets.fromLTRB(20, 120, 20, 10),
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
              child: Column(
                children: <Widget>[
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      icon: const Icon(
                        Icons.abc,
                        color: Color.fromARGB(255, 8, 73, 11),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 20, 20, 20),
                        ),
                      ),
                    ),
                    value: dropdownValue,
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
                  TextField(
                    controller: dateinput,
                    decoration: InputDecoration(
                      icon: const Icon(
                        Icons.date_range,
                        color: Color.fromARGB(255, 8, 73, 11),
                      ),
                      contentPadding: EdgeInsets.all(0),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 20, 20, 20))),
                      labelText: "Date Of Crime",
                      enabledBorder: InputBorder.none,
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
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
                      color: Colors.black,
                    ),
                  ),
                  TextField(
                    controller: timeinput,
                    decoration: InputDecoration(
                      icon: const Icon(
                        Icons.punch_clock,
                        color: Color.fromARGB(255, 8, 73, 11),
                      ),
                      contentPadding: EdgeInsets.all(0),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 20, 20, 20))),
                      labelText: "Time Of Crime",
                      enabledBorder: InputBorder.none,
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    readOnly:
                        true, //set it true, so that user will not able to edit text
                    onTap: () async {
                      final TimeOfDay? pickedTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          builder: (context, child) {
                            return MediaQuery(
                                data: MediaQuery.of(context).copyWith(
                                    // Using 12-Hour format
                                    alwaysUse24HourFormat: false),
                                // If you want 24-Hour format, just change alwaysUse24HourFormat to true
                                child: child!);
                          });
                      if (pickedTime != null) {
                        print(pickedTime.format(context)); //output 10:51 PM
                        DateTime parsedTime = DateFormat.jm()
                            .parse(pickedTime.format(context).toString());
                        //converting to DateTime so that we can further format on different pattern.
                        print(parsedTime); //output 1970-01-01 22:53:00.000
                        String formattedTime =
                            DateFormat('HH:mm:ss').format(parsedTime);
                        print(formattedTime); //output 14:59:00
                        //DateFormat() is from intl package, you can format the time on any pattern you need.
                      } else {
                        print("Time is not selected");
                      }

                      if (pickedTime != null) {
                        setState(() {
                          _selectedTime = pickedTime.format(context);
                        });
                      }
                    },
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        icon: const Icon(
                          Icons.maps_home_work,
                          color: Color.fromARGB(255, 8, 73, 11),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 20, 20, 20))),
                        labelText: "Location",
                        enabledBorder: InputBorder.none,
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        icon: const Icon(
                          Icons.details_rounded,
                          color: Color.fromARGB(255, 8, 73, 11),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 20, 20, 20))),
                        labelText: "Details",
                        enabledBorder: InputBorder.none,
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                //     margin: const EdgeInsets.fromLTRB(100, 0, 50, 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 40,
                      child: Container(
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                primary: Color.fromARGB(255, 1, 34, 3),
                                onPrimary: Colors.white,
                                elevation: 20,
                                shadowColor: Colors.black),
                            onPressed: pickImage,
                            child: const Center(
                              child: Text(
                                "Pick Image",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0.9, 0.0),
                            colors: <Color>[
                              Color.fromARGB(255, 1, 29, 24),
                              Color.fromARGB(255, 38, 95, 84),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 40,
                      child: Container(
                        child: Material(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.transparent,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                primary: Color.fromARGB(255, 1, 34, 3),
                                onPrimary: Colors.white,
                                elevation: 20,
                                shadowColor: Colors.black),
                            onPressed: () {},
                            child: const Center(
                              child: Text(
                                "Submit Post",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment(0.9, 0.0),
                            colors: <Color>[
                              Color.fromARGB(255, 1, 29, 24),
                              Color.fromARGB(255, 38, 95, 84),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
