import 'package:engine_news/pages/registro.dart';
import 'package:flutter/material.dart';


//Create missing override
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: cuerpo(),        
        );
  }
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Engine News',
      //home: Home(),
    );
  }


Widget cuerpo() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(
              "https://images.unsplash.com/photo-1507581332893-aefc5acf08e0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fG5ld3N8ZW58MHwxfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
          fit: BoxFit.cover),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20.0),
          title(),
          logo(),
          subtitle(),
          SizedBox(height: 30.0),
          nombre(),
          SizedBox(height: 20.0),
          Text("Correo", style: TextStyle(color: Colors.white, fontSize: 15.0),),
          usuario(),
          SizedBox(height: 5.0),
          Text("Contraseña", style: TextStyle(color: Colors.white, fontSize: 15.0), textAlign: TextAlign.right,),
          contrasena(),
          SizedBox(height: 20.0),
          boton_enviar(),
          SizedBox(height: 10.0),
          //registrar(),
          //SizedBox(height: 10.0),
          //botonesSM(),
          SizedBox(height: 15.0),
          Text("¿Olvidaste tu contraseña?", style: TextStyle(color: Colors.white, fontSize: 15.0), textAlign: TextAlign.left,),
        ],
      ),
    ),
  );  
}

Widget title() {
  return Text(
    "Engine News",
    style: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget subtitle() {
  return Text(
    "La red social para redactores de noticias.",
    style: TextStyle(color: Colors.white, fontSize: 15.0),
  );
}

Widget logo() {
  return Container(
    child: Image.network(
        'https://image.flaticon.com/icons/png/512/1253/1253826.png',
        height: 70),
  );
}

Widget nombre() {
  return Text(
    "Iniciar Sesión",
    style: TextStyle(
        color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold), textAlign: TextAlign.start,
  );
}

Widget usuario() {
  return Container( 
    padding: EdgeInsets.symmetric(horizontal: 65.0, vertical: 3.0),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Digite el usuario",
        fillColor: Colors.white,
        filled: true,
        //border: BorderRadius.circular(50.0),
      ),
    ),
    
  );
}

Widget contrasena() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 65.0, vertical: 3.0),
    child: TextField(
      obscureText: true, //Cambiar el texto a modo pass
      decoration: InputDecoration(
        hintText: "Digite el password",
        fillColor: Colors.white,
        filled: true,
        //border: BorderRadius.circular(50.0),
      ),
    ),
  );
}

Widget boton_enviar() {
  return MaterialButton(
    padding: EdgeInsets.symmetric(horizontal: 65.0, vertical: 3.0),
    minWidth: 380.0, 
    height: 55.0,
    onPressed: () => print('Iniciar sesión'),
    color: Colors.indigoAccent, shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(5.0),
    ),
    child: Text(
      "Iniciar sesión",
      style: TextStyle(color: Colors.white), 
    ),
  );
}

Widget registrar() {
  return Container(
    child: Text(
      "O",
      style: TextStyle(
          color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold),
    ),
  );
}

Widget botonesSM() {
  return 
  Row( 
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Align(
        alignment: Alignment.centerLeft,
        child: 
      MaterialButton(
    padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 3.0), 
    minWidth: 100.0, 
    height: 55.0,
    onPressed: () => print('Gmail'),
    color: Colors.red[400], shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(5.0),
    ),
    child: Text(
      "Gmail",
      style: TextStyle(color: Colors.white), 
    ),
    ),
    ),
    Spacer(),
    Align(
      alignment: Alignment.centerRight,
      child:
    MaterialButton(
        padding: EdgeInsets.symmetric(horizontal: 110.0, vertical: 3.0),
    minWidth: 100.0, 
    height: 55.0,
    onPressed: () => print('Facebook'),
    color: Colors.indigo[900], shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(5.0),
    ),
    child: Text(
      "Facebook",
      style: TextStyle(color: Colors.white), 
    ),
    ),
    )
    ],
    );
}

