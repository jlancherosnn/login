import 'package:flutter/material.dart';
class Inicio extends StatefulWidget{
  @override
  InicioApp createState() => InicioApp();
}


class InicioApp extends State<Inicio>{
  bool checkBoxValue=false;
  //late String chocolate;
  @override
  Widget build(BuildContext context){
    return Scaffold(
         appBar: AppBar(
          title: Text("Inicio"),
        ),
      body: Container(
        child: Row(
          children: <Widget>[
            Checkbox(
              value: checkBoxValue,
              onChanged: (bool? value){
                setState(() {
                  checkBoxValue = value!;
                });
                print(value);
             /*  if (value = true){    //condicional para verificar estado
                  print ("lo logramos puto");
                  chocolate = value as String;
                }*/
              },
            ),
            Text("Chocolate")
          ],
        )
      ),
    );
  }
}
/*import 'package:flutter/material.dart';
class Inicio extends StatefulWidget{
  @override
  InicioApp createState() => InicioApp();
}


class InicioApp extends State<Inicio>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Inicio"),
        )
    );
  }
}*/

//codigo 2
/*
import 'package:flutter/material.dart';

class tamal extends StatefulWidget {
  const tamal({Key? key}) : super(key: key);


  @override
  _tamalState createState() => _tamalState();
}

class _tamalState extends State<tamal> {
  bool value = false;
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("hola"),
    ),
    body:ListView(
      children: [
        buildCheckbox(),
      ],
    ),
  );

  Widget buildCheckbox() => ListTile(
    onTap: (){
      setState((){
        this.value = !value;
      });
    },
    leading: Checkbox(
      value: value,
      onChanged: (value){
        this.value = value!;
      },
    ),
    title: Text(
      'Click Me',
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}*/
//codigo d eflutter
/*
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyStatefulWidget(),
        ),
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
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}*/

