import 'package:flutter/material.dart';
import 'package:fyp/otp_page.dart';
import 'package:fyp/screen.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl/intl.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  void screeen() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => screen())));
  }

  void otp() {
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => otp_page())));
  }

  TextEditingController dateinput = TextEditingController();
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBiglDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  Widget build(BuildContext context) {
    return Scaffold(
        // resizeToAvoidBottomInset: false, // nechy waly circle upr nhi aayen gy..
        backgroundColor: Color.fromARGB(255, 199, 190, 190),
        body: Stack(children: <Widget>[
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment(0.9, 0.0),
                  // 10% of the width, so there are ten blinds.

                  colors: <Color>[
                    Color.fromARGB(255, 1, 29, 24),
                    Color.fromARGB(255, 38, 95, 84),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: -getBiglDiameter(context) / 4,
            top: -getBiglDiameter(context) / 4,
            child: Container(
              child: const Center(
                child: Text(
                  "CRT",
                  style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 40,
                      color: Colors.white),
                ),
              ),
              width: getBiglDiameter(context),
              height: getBiglDiameter(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment(0.9, 0.0),
                  // 10% of the width, so there are ten blinds.

                  colors: <Color>[
                    Color.fromARGB(255, 1, 29, 24),
                    Color.fromARGB(255, 38, 95, 84),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: -getBiglDiameter(context) / 2,
            bottom: -getBiglDiameter(context) / 1.1,
            child: Container(
              width: getBiglDiameter(context),
              height: getBiglDiameter(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 1, 29, 24),
              ),
            ),
          ),
          Positioned(
            left: -getBiglDiameter(context) / 2,
            bottom: -getBiglDiameter(context) / 1.1,
            child: Container(
              width: getBiglDiameter(context),
              height: getBiglDiameter(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 1, 29, 24),
              ),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: ListView(children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      color: const Color(0xFFEEEEEE),
                      //color: Color.fromARGB(255, 199, 190, 190),
                      //border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.fromLTRB(20, 210, 20, 10),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.person,
                              color: Color.fromARGB(255, 8, 73, 11),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 20, 20, 20))),
                            labelText: "First Name",
                            enabledBorder: InputBorder.none,
                            labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0))),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.person,
                              color: Color.fromARGB(255, 8, 73, 11),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 20, 20, 20))),
                            labelText: "Last Name",
                            enabledBorder: InputBorder.none,
                            labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0))),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.email,
                              color: Color.fromARGB(255, 8, 73, 11),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 20, 20, 20))),
                            labelText: "Email",
                            enabledBorder: InputBorder.none,
                            labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0))),
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
                          labelText: "Date Of Birth",
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
                      IntlPhoneField(
                        decoration: InputDecoration(
                          icon: const Icon(
                            Icons.phone_android,
                            color: Color.fromARGB(255, 8, 73, 11),
                          ),
                          contentPadding: EdgeInsets.all(0),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 20, 20, 20))),
                          labelText: "Contact Number ",
                          enabledBorder: InputBorder.none,
                          labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                        onCountryChanged: (country) {
                          print('Country changed to: ' + country.name);
                        },
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.vpn_key,
                              color: Color.fromARGB(255, 8, 73, 11),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 20, 20, 20))),
                            labelText: "Password",
                            enabledBorder: InputBorder.none,
                            labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 27, 27, 27))),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.vpn_key,
                              color: Color.fromARGB(255, 8, 73, 11),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 20, 20, 20))),
                            labelText: "Confirm Password",
                            enabledBorder: InputBorder.none,
                            labelStyle: const TextStyle(
                                color: Color.fromARGB(255, 27, 27, 27))),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(100, 0, 50, 30),
                  child: Row(
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
                              onPressed: otp,
                              child: const Center(
                                child: Text(
                                  "Register",
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
                      )
                    ],
                  ),
                )
              ]))
        ]));
  }
}
