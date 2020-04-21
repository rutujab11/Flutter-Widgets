import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new SignUp()
    );
  }
}

class SignUp extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<SignUp> {

  TextEditingController  cfirstName=new TextEditingController();
  TextEditingController  clastName=new TextEditingController();
  TextEditingController  cemail=new TextEditingController();
  TextEditingController  cpassword=new TextEditingController();
  TextEditingController  cphoneNo=new TextEditingController();
  TextEditingController  caddress=new TextEditingController();
  TextEditingController  ccity=new TextEditingController();
  TextEditingController  cpincode=new TextEditingController();
  TextEditingController  cheight=new TextEditingController();
  TextEditingController  cweight=new TextEditingController();
  TextEditingController  cmedicalCondition=new TextEditingController();


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void addData(){

    var url="http://ec2-13-234-38-160.ap-south-1.compute.amazonaws.com/Rutuja/signup_conn.php";
    http.post(url,body: {
      "firstName":cfirstName.text,
      "lastName":clastName.text,
      "email":cemail.text,
      "password":cpassword.text,
      "phoneNo":cphoneNo.text,
      "address":caddress.text,
      "city":ccity.text,
      "pincode":cpincode.text,
      "height":cheight.text,
      "weight":cweight.text,
      "medicalCondition":cmedicalCondition.text
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Signup"),
        ),
        body: Padding(
          padding:const EdgeInsets.all(10.0),
          child: Form(key: _formKey,
            child:ListView(
              children: <Widget>[
                new Column(
                  children: <Widget>[
                    TextFormField(
                      controller: cfirstName,
                      decoration: InputDecoration(labelText: 'First Name'),
                      validator: (String value) {
                        if(value.isEmpty){
                          return 'First Name is Required';
                        }
                        return null;
                      },
                    ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Last Name'),
                    validator: (String value) {
                      if(value.isEmpty){
                        return 'Last Name is Required';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: cemail,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail_outline),
                        labelText: 'Email'
                    ),
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Email is Required';
                      }

                      if (!RegExp(
                          r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                          .hasMatch(value)) {
                        return 'Please enter a valid email Address';
                      }

                      return null;
                    },
                  ),
                  TextFormField(
                    controller: cpassword,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password'
                    ),
                    maxLength: 8,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Password is Required';
                      }

                      return null;
                    },
                  ),

                  TextFormField(
                    controller: cphoneNo,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        labelText: 'Phone number'
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (String value) {
                      if (value.isEmpty) {
                        return 'Phone number is Required';
                      }

                      return null;
                    },
                  ),
                  TextFormField(
                    controller: caddress,
                    decoration: InputDecoration(labelText: 'Address'),
                    validator: (String value) {
                      if(value.isEmpty){
                        return 'Address is Required';
                      }
                      return null;
                    },
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                      child:TextFormField(
                        controller: ccity,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.location_city),
                            labelText: 'City'
                        ),
                        validator: (String value) {
                          if(value.isEmpty){
                            return 'City is Required';
                          }
                          return null;
                        },
                      ),
                      ),
                      SizedBox(width: 10.0),
                      Flexible(
                      child:TextFormField(
                        controller: cpincode,
                        decoration: InputDecoration(labelText: 'Pincode'),
                        keyboardType: TextInputType.number,
                        validator: (String value) {
                          int pinCode = int.tryParse(value);

                          if (pinCode == null ) {
                            return 'Pincode is required';
                          }

                          return null;
                        },
                      ),
                      ),
                    ],
                  ),

                    Row(
                      children: <Widget>[
                        Flexible(
                          child:TextFormField(
                            controller: cheight,
                            decoration: InputDecoration(labelText: 'Height'),
                            keyboardType: TextInputType.number,
                            validator: (String value) {
                              int height = int.tryParse(value);

                              if (height == null || height <= 0) {
                                return 'Height must be greater than 0';
                              }

                              return null;
                            },
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Flexible(
                          child:TextFormField(
                            controller: cweight,
                            decoration: InputDecoration(labelText: 'Weight'),
                            keyboardType: TextInputType.number,
                            validator: (String value) {
                              int weight = int.tryParse(value);

                              if (weight == null || weight <= 0) {
                                return 'Height must be greater than 0';
                              }

                              return null;
                            },
                          ),
                        ),
                      ],
                    ),

                  TextFormField(
                    controller: cmedicalCondition,
                    decoration: InputDecoration(labelText: 'Medical Condition'),
                    validator: (String value) {
                      if(value.isEmpty){
                        return 'Medical Condition is Required';
                      }
                      return null;
                    },
                  ),
                    new Padding(padding: EdgeInsets.all(10.0)),
                    new RaisedButton(
                      onPressed: (){
                        if(!_formKey.currentState.validate()) {
                          return;
                        }
                        addData();

                    },
                      child: new Text("Signup"),
                      color: Colors.blueAccent,
                    )

                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}