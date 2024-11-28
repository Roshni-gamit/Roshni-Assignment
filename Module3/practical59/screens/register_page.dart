import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  String gender = 'Male';
  String? course = null;

  String emailRegx = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
  String passwordRegx =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[/@$#\.][^\s]).{8,16}$';

  List<String> courses = ['Java', 'Flutter', 'Android', 'Python'];
  String? _name, _email, _contact, _password;

  final _formKey = GlobalKey<FormState>();

  void _updateGender(String? selection) {
    setState(() {
      gender = selection!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text('Registration'
        ),
          backgroundColor: Colors.deepPurple.shade400
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Student Name',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.name,
                  validator: (name) {
                    if (name == null || name.isEmpty) {
                      return 'Enter student name';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    _name = value;
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (email) {
                    if (email == null || email.isEmpty) {
                      return 'Email can\'t be blank';
                    } else if (!RegExp(emailRegx).hasMatch(email)) {
                      return 'Enter valid email address';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    _email = value;
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Contact Number',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (contact) {
                    if (contact == null || contact.length != 10) {
                      return 'Contact must be of 10 digits';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    _contact = value;
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text('Gender'),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                              value: 'Male',
                              groupValue: gender,
                              onChanged: (value) {
                                _updateGender(value);
                              },
                            ),
                            Text('Male'),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Radio(
                              value: 'Female',
                              groupValue: gender,
                              onChanged: (value) {
                                _updateGender(value);
                              },
                            ),
                            Text('Female'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                DropdownButtonFormField(
                  value: course,
                  items: List.generate(
                    courses.length,
                        (index) => DropdownMenuItem(
                      child: Text('${courses[index]}'),
                      value: courses[index],
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      course = value;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: 'Select Course',
                    border: OutlineInputBorder(),
                  ),
                  validator: (course) {
                    if (course == null) {
                      return 'Please select course';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    helperText:
                    '(must contains atleast one uppercase, lowercase, digit, special character and length should between 8-16)',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  validator: (password) {
                    if (password == null || password.isEmpty) {
                      return 'Password can\'t be blank';
                    } else if (!RegExp(passwordRegx).hasMatch(password)) {
                      return 'Invalid password';
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    _password = value;
                  },
                ),
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  validator: (password) {
                    if (password == null || password.isEmpty) {
                      return 'Password can\'t be blank';
                    } else if (password != _password) {
                      return 'Password mismatch';
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!
                            .save(); // will call onSave method

                        // showToast('All done');
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('All done'),
                          action: SnackBarAction(
                            label: 'Retry',
                            onPressed: () {},
                          ),
                        ));

                        print('''
                        name : $_name
                        email : $_email
                        course : $course
                        contact : $_contact
                        password : $_password
                        gender : $gender
                        ''');
                      }
                    },
                    child: Text('Register'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

//

}
