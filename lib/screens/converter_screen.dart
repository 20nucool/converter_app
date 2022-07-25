import 'package:converter_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ConverterScreen extends StatefulWidget {
  var cat;
  var cat2;
  ConverterScreen({
    Key? key,
    required this.cat,
    this.cat2,
  }) : super(key: key);

  @override
  State<ConverterScreen> createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  TextEditingController numValue = TextEditingController();

  double outputValue = 0.00;
  late String dropdownValue1;
  late String dropdownValue2;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dropdownValue1 = widget.cat2[0];
    dropdownValue2 = widget.cat2[1];
  }

  @override
  Widget build(BuildContext context) {
    // var mappedItems = map1[cat];
    // var entry = mappedItems.toList();

    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cat),
      ),
      body: SingleChildScrollView(
        child: Column(
            //whole page in a column
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              // Converted from
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(5)),
                  width: size.width * 2 / 3,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: numValue,
                        style: TextStyle(color: Colors.black, fontSize: 40),
                        mouseCursor: MouseCursor.defer,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        cursorHeight: 40,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 20),
                          hintText: '0.00',
                          hintStyle: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width,
                      child: DropdownButtonFormField<String>(
                        style:
                            const TextStyle(color: Colors.black, fontSize: 19),
                        dropdownColor: Color.fromARGB(255, 185, 162, 162),
                        isExpanded: true,
                        value: dropdownValue1,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue1 = newValue!;
                            print(dropdownValue1);
                          });
                          print(dropdownValue1);
                        },
                        items: map1[widget.cat]
                            .map<DropdownMenuItem<String>>((String items) {
                          return DropdownMenuItem(
                              value: items, child: Center(child: Text(items)));
                        }).toList(),
                      ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: const EdgeInsets.all(10),
                  height: 30,
                  width: size.width,
                  child: const Icon(Icons.density_large)),
              const SizedBox(
                height: 30,
              ),
              // Converted To :
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black45),
                      borderRadius: BorderRadius.circular(5)),
                  width: size.width * 2 / 3,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(25, 20, 25, 10),
                        child: Text(
                          '$outputValue',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const Divider(
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                        color: Color.fromARGB(255, 119, 119, 119)),
                    // dropdownbutton for options
                    SizedBox(
                      width: size.width,
                      child: DropdownButtonFormField<String>(
                        style: TextStyle(color: Colors.black, fontSize: 19),
                        dropdownColor: Colors.grey,
                        decoration: InputDecoration(),
                        isExpanded: true,
                        value: dropdownValue2,
                        items: map1[widget.cat]
                            .map<DropdownMenuItem<String>>((String items) {
                          return DropdownMenuItem(
                              value: items, child: Center(child: Text(items)));
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue2 = newValue!;
                            print(dropdownValue2);
                          });

                          print('$dropdownValue1 out of state');
                        },
                      ),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      print(dropdownValue2 + dropdownValue1);
                      // outputValue = double.parse(numValue.text);
                      outputValue = output(
                          widget.cat,
                          widget.cat2[0],
                          double.parse(numValue.text),
                          dropdownValue1,
                          dropdownValue2);
                      print("run");
                    });
                  },
                  child: const Text(
                    'Convert',
                    style: TextStyle(
                        color: Color.fromARGB(255, 38, 47, 49),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ))
            ]),
      ),
    );
  }

  output(
      String category, String Si, double value, String value1, String value2) {
    print(value);
    if (value1 == value2) {
      return (value * 1);
    }
    if (category == 'Temperature') {
      double outputValue;
      String conversionVal = '${value1}_to_$value2';

      switch (conversionVal) {
        case 'Celsius_to_Kelvin':
          outputValue = value + 273.15;
          return outputValue;
        case 'Celsius_to_Fahrenheit':
          outputValue = (value * (9 / 5)) + 32;
          return outputValue;
        case 'Kelvin_to_Celsius':
          outputValue = value - 273.15;
          return outputValue;
        case 'Kelvin_to_Fahrenheit':
          outputValue = (value - 273.15) * (9 / 5) + 32;
          return outputValue;
        case 'Fahrenheit_to_Celsius':
          outputValue = (value - 32) * (5 / 9);
          return outputValue;
        case 'Fahrenheit_to_Kelvin':
          outputValue = (value - 32) * (5 / 9) + 273.15;
          return outputValue;
        default:
          return 1;
      }
    } else {
      String conversionValue1 = '${value1}_to_$Si';
      String conversionValue2 = '${Si}_to_$value2';

      double outValue =
          value * conversion[conversionValue1] * conversion[conversionValue2];
      return outValue;
    }
  }
}
