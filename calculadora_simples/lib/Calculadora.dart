import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget{
  @override
  State createState()=>new CalculadoraState();
}
class CalculadoraState extends State<Calculadora> {
  //Métodos de cálculos
  //Metodo build (que constrói a estrutura do app)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new AppBar(title:new Text("Calculadora - simples")),
      body:new Container(
        color:Colors.lightBlue,
        padding:const EdgeInsets.all(40.0), 
        child:new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //Resultado do calculo
            new Text(
              "Resultado:$resultado",
              style:new TextStyle(
                fontSize:24,
                fontWeight:FontWeight.bold,
                color:Colors.purple) ,
            ),
            //Campo de texto (input 1)
            new TextField(
              keyboardType:TextInputType.number,
              decoration:new InputDecoration(hintText:"Informe o valor 1"),
              controller:camporValor1,
              //Controller:campoValor1,
            ),
            //Campo de texto(Input do valor 2)
            new TextField(
              keyboardType:TextInputType.number,
              decoration:new InputDecoration(hintText:"Informe o valor 2"),
              controller:camporValor2,
            //Controller:CampoValor2
            ),
            //Espaçamento depois dos Inputs
            new Padding(padding:const EdgeInsets.only(top:20)),
            //Nova Linha(row)
            new Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                new MaterialButton(
                  //child:new Text("+"),
                  child:new Text(
                    "+",
                    style:new TextStyle(
                      fontSize:32,
                      fontWeight:FontWeight.bold,
                      color:Colors.white),
                  ),
                  color:Colors.blueAccent,
                  onPressed:somar,
                )
              ]
            )
          ],
        ),
      ),
    );
  }//Fecha o método build
  //Atributos
  var valor1;
  var valor2;
  var resultado;
  TextEditingController camporValor1=new TextEditingController(text:"");
  TextEditingController camporValor2=new TextEditingController(text:"");
  void somar(){
    setState(() {
      valor1=num.parse(camporValor1.text);
      valor2=num.parse(camporValor2.text);
      resultado=valor1+valor2;
    });
  }
}//Fecha classe
 