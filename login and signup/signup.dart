import 'package:flutter/material.dart';

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
  State<StatefulWidget> createState(){
    return _SignUpState();
  }
}

class _SignUpState extends State<SignUp> {

  String _email;
  String _password;
  String _firstName;
  String _lastName;
  String _phoneNo;
  String _address;
  String _city;
  String _pinCode;
  String _height;
  String _weight;
  String _medicalCondition;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
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
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  Widget _buildFirstName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'First Name'),
      maxLength: 10,
      validator: (String value) {
        if(value.isEmpty){
          return 'First Name is Required';
        }
        return null;
      },
      onSaved: (String value){
        _firstName = value;
      },
    );
  }

  Widget _buildLastName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Last Name'),
      maxLength: 10,
      validator: (String value) {
        if(value.isEmpty){
          return 'Last Name is Required';
        }
        return null;
      },
      onSaved: (String value){
        _lastName = value;
      },
    );
  }

  Widget _buildPhoneNo() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Phone number'),
      keyboardType: TextInputType.phone,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Phone number is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _phoneNo = value;
      },
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Address'),
      validator: (String value) {
        if(value.isEmpty){
          return 'Address is Required';
        }
        return null;
      },
      onSaved: (String value){
        _address = value;
      },
    );
  }

  Widget _buildCity() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'City'),
      validator: (String value) {
        if(value.isEmpty){
          return 'City is Required';
        }
        return null;
      },
      onSaved: (String value){
        _city = value;
      },
    );
  }

  Widget _buildPinCode() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Pincode'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int pinCode = int.tryParse(value);

        if (pinCode == null ) {
          return 'Pincode is required';
        }

        return null;
      },
      onSaved: (String value) {
        _pinCode = value;
      },
    );
  }

  Widget _buildHeight() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Height'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int height = int.tryParse(value);

        if (height == null || height <= 0) {
          return 'Height must be greater than 0';
        }

        return null;
      },
      onSaved: (String value) {
        _height = value;
      },
    );
  }

  Widget _buildWeight() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Weight'),
      keyboardType: TextInputType.number,
      validator: (String value) {
        int weight = int.tryParse(value);

        if (weight == null || weight <= 0) {
          return 'Height must be greater than 0';
        }

        return null;
      },
      onSaved: (String value) {
        _weight = value;
      },
    );
  }

  Widget _buildMedicalCondition() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Medical Condition'),
      validator: (String value) {
        if(value.isEmpty){
          return 'Medical Condition is Required';
        }
        return null;
      },
      onSaved: (String value){
        _medicalCondition = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('SignUp')
      ),
      body: Container(
        margin: EdgeInsets.all(24.0),
        child: Form( key: _formKey,child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _buildEmail(),
              _buildPassword(),
              _buildFirstName(),
              _buildLastName(),
              _buildPhoneNo(),
              _buildAddress(),
              _buildCity(),
              _buildPinCode(),
              _buildHeight(),
              _buildWeight(),
              _buildMedicalCondition(),
              SizedBox(height: 100.0),
              RaisedButton(
                child: Text(
                  'Signup',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16.0
                  ),
                ),
                onPressed: () {
                  if(!_formKey.currentState.validate()) {
                    return;
                  }

                  _formKey.currentState.save();
                  print(_email);
                  print(_password);
                  print(_firstName);
                  print(_lastName);
                  print(_phoneNo);
                  print(_address);
                  print(_city);
                  print(_pinCode);
                  print(_height);
                  print(_weight);
                  print(_medicalCondition);
                },
              )
            ],
          ),
        ),
        ),
      ),
    );
  }
}
