import 'package:flutter/material.dart';
import 'package:loginfive/modelos/detalle.dart';
class PantallaDetalle extends StatefulWidget {

  @override
  _PantallaDetalleState createState() => _PantallaDetalleState();
}

class _PantallaDetalleState extends State<PantallaDetalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text("DETALLES"), backgroundColor: Colors.orange,),
      backgroundColor: Colors.cyanAccent,
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration (//caja de decoration dentro del texto
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)
        ),
        child: ListView.builder(
            itemCount: datos.length,
            itemBuilder: (context,index){
              return(index % 2 == 0)//intercalado para que este en sig sag con operador ternario
              //ocurra deteerminada accion
                  ? _item_left(datos[index].nombre, datos[index].foto)
                  :  _item_right(datos[index].nombre, datos[index].foto);
            }
        ),
      ),
    );
  }
}
//lado izquierdo
Widget _item_left(String texto, String imagen){     //interacion con texto de detalle y imagenes
  return Row(
    children: [
      Expanded(flex: 1,child: Text(texto)),   //flex : para division
      Expanded(flex: 1,child:  Image.asset("assets/"+imagen,width: 200,))
    ],
  );
}
//lado dereecho
Widget _item_right(String texto, String imagen){     //interacion con texto de detalle y imagenes
  return Row(
    children: [
      Expanded(flex: 1,child:  Image.asset("assets/"+imagen,width: 200,)),
      Expanded(flex: 1,child: Text(texto)),   //flex : para division
    ],
  );
}