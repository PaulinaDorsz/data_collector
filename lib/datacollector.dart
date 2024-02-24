import 'package:data_collector/bio.dart';
import 'package:flutter/material.dart';

import 'bio.dart';

String q1 = '1. Full Name';
String q2 = '2. Date of Birth (dd-mm-yyyy)';
String q3 = '3. Country';
String q4 = '4. City';

class DataCollector extends StatefulWidget {
  const DataCollector({Key? key}) : super(key: key);

  @override
  DataCollectorState createState() => DataCollectorState();
}

class DataCollectorState extends State<DataCollector> {
  final TextStyle _textStyle =
  TextStyle(color: Colors.lime, fontSize: 24, fontWeight: FontWeight.bold);

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late Bio bio;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        centerTitle: true,
        title: Text(
          'Data Collector App',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.teal,
            image: DecorationImage(
              image: AssetImage('assets/data_image_1.png'),
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.07),
                BlendMode.dstATop,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add new data',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.lime,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Scaffold(
                              appBar: AppBar(
                                backgroundColor: Colors.lime,
                                leading: IconButton(
                                  icon: Icon(Icons.arrow_back_ios),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                title: Text(
                                  'New Data',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                                centerTitle: true,
                              ),
                              body: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.teal,
                                    image: DecorationImage(
                                      image: AssetImage('assets/data_image_1.png'),
                                      colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(0.07),
                                        BlendMode.dstATop,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        SizedBox(height: 20),
                                        Flexible(
                                          flex: 0,
                                          child: Center(
                                            child: Form(
                                              key: formKey,
                                              child: Flex(
                                                direction: Axis.vertical,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text(q1, style: _textStyle),
                                                    ],
                                                  ),
                                                  TextFormField(
                                                    initialValue: '',
                                                    validator: (value) => value?.isEmpty ?? true
                                                        ? 'This field can\'t be empty' : null,
                                                    onSaved: (newValue) => bio.name = newValue!,
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(q2, style: _textStyle),
                                                    ],
                                                  ),
                                                  TextFormField(
                                                    initialValue: '',
                                                    validator: (value) => value?.isEmpty ?? true
                                                        ? 'This field can\'t be empty' : null,
                                                    onSaved: (newValue) => bio.name = newValue!,
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(q3, style: _textStyle),
                                                    ],
                                                  ),
                                                  TextFormField(
                                                    initialValue: '',
                                                    validator: (value) => value?.isEmpty ?? true
                                                        ? 'This field can\'t be empty' : null,
                                                    onSaved: (newValue) => bio.name = newValue!,
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(q4, style: _textStyle),
                                                    ],
                                                  ),
                                                  TextFormField(
                                                    initialValue: '',
                                                    validator: (value) => value?.isEmpty ?? true
                                                        ? 'This field can\'t be empty' : null,
                                                    onSaved: (newValue) => bio.name = newValue!,
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  ),

                                                  ElevatedButton(
                                                      style: ElevatedButton.styleFrom(
                                                        backgroundColor: Colors.lime,
                                                      ),
                                                      onPressed: (){},
                                                      child: Text(
                                                          'Submit',
                                                          style: TextStyle(
                                                            fontSize: 22,
                                                            fontWeight: FontWeight.bold,
                                                          )
                                                      )),
                                                  SizedBox(height: 20),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Recently Added',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.lime),
                  ),
                  IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => DataCollector()));
                    },
                    iconSize: 30,
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  }

