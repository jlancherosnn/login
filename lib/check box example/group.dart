import 'package:flutter/material.dart';
import 'package:loginfive/check box example/CheckboxModel.dart';
class CheckboxGroupView extends StatefulWidget {
   CheckboxGroupView({Key? key}) : super(key: key);

  @override
  _CheckboxGroupViewState createState() => _CheckboxGroupViewState();
}

class _CheckboxGroupViewState extends State<CheckboxGroupView> {
  List<CheckboxModel> _dropdownAvailability = <CheckboxModel>[];
  @override
  void initState(){
    _dropdownAvailability.addAll({
      CheckboxModel(id:1, name: "Chocolate", selected: false),
      CheckboxModel(id:2, name: "Cafe", selected: false),
      CheckboxModel(id:3, name: "Jugo de naranja", selected: false),
      CheckboxModel(id:4, name: "Pan", selected: false),
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grupo marcable"),
      ),
      backgroundColor: Colors.blue,
      body: Container(
        margin: EdgeInsets.all(10), //separacion
        decoration: BoxDecoration(      //decoracio dentro de las imagenes color y borde
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Container(
          child: Column(
            children: [
              Image.asset('assets/login2.gif',width: 500,), //agregar imagen
              ListView.builder(
                shrinkWrap: true,
                itemCount: _dropdownAvailability.length,
                itemBuilder: (context, index){
                  return CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text(_dropdownAvailability[index].name),
                    Icon(Icons.plus_one),
                    ],
                  ),
                  value: _dropdownAvailability[index].selected,
                  onChanged: (value){
                    setState(() {
                      _dropdownAvailability[index].selected= value!;
                      if (_dropdownAvailability[index].id==1 && value == true){
                        print("Añadio "+_dropdownAvailability[index].name);
                      }
                      if(_dropdownAvailability[index].id==1 && value == false){
                        print("Reteriro "+_dropdownAvailability[index].name);
                      }
                      print (_dropdownAvailability[index].name);
                    });
                  }
                  );
    }
            ),
          ]
          ),
        ),
      )
    );
  }
}
