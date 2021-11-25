/// Flutter code sample for Form

// This example shows a [Form] with one [TextFormField] to enter an email
// address and an [ElevatedButton] to submit the form. A [GlobalKey] is used here
// to identify the [Form] and validate input.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/widgets/form.png)

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'TextFormField Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isVisibility = false;
  bool _isObscureText = true;
  bool _isSubmit = false;

  void _activateSubmit(String? value) {
    setState(() {
      _isSubmit = !_isSubmit;
    });
  }

  void _pdVisibility() {
    setState(() {
      _isVisibility = !_isVisibility;
      _isObscureText = !_isObscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 200,
          ),
          TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              obscureText: _isObscureText,
              decoration: InputDecoration(
                icon: const Icon(Icons.lock),
                suffixIcon: IconButton(
                    icon: _isVisibility
                        ? const Icon(Icons.visibility_off)
                        : const Icon(Icons.visibility),
                    onPressed: _pdVisibility),
                hintText: 'Enter your email',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onChanged: (String? value) {
                print(value);
                setState(() {
                  if (value != null && _isSubmit==false) {
                    print('========');
                    _isSubmit = true;
                  } else if (value == null || value.isEmpty) {
                    _isSubmit = false;
                    print('--------');
                  }
                });
                print('$_isSubmit');
              }),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: _isSubmit
                  ? () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState!.validate()) {
                        // Process data.
                      }
                    }
                  : null,
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
