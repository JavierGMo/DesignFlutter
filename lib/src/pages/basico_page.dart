import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  

  final styleTitle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final styleSubTitle = TextStyle(fontSize: 20.0, color: Colors.grey);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
            _crearImagen(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
          ),
        )
      ),
    );
  }


  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://larepublica.pe/resizer/AE4Cl6n8InP7xuQeJXm0WZarunM=/1200x660/top/arc-anglerfish-arc2-prod-gruporepublica.s3.amazonaws.com/public/NWL5VBI4A5FKHDK7ML3QYDCH7U.jpg'),
        // height: 180.0,
        fit: BoxFit.cover,
      ),
    );
  }


  Widget _crearTitulo(){
    return SafeArea(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
          child: Row(
          children: <Widget>[
            Expanded(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Kimetsu no yaiba', style: styleTitle,),
                  SizedBox(height: 7.0,),
                  Text('Kimetsu no yaiba tanjiro', style: styleSubTitle,),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0,),
            Text('41', style: TextStyle(fontSize: 20.0),)
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'Call'),
        _accion(Icons.near_me, 'Route'),
        _accion(Icons.share, 'Share'),
      ],
    );
  }

Widget _crearTexto(){
  return SafeArea(
      child: Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'lorem daskjdkasljda aksjdkla sdkajsdklajs dkajs kdjalksjd klajs dkjaslkjdlka sjdkjas kdjaks jdkaljsdkjas kjdalks jdklajsdkjaskd jaksjd kajskldjlkasjd lkajskd jaks jdlkjsalk jdlkasj kasjdkal sjdka jslkd jaslk jdlkas jdlkajs lkjdkas jdka sj',
        textAlign: TextAlign.justify,
      ),
    ),
  );
}

  Widget _accion(IconData icon, String texto){
    return Column(
          children: <Widget>[
            Icon(icon, color: Colors.blue, size: 40.0,),
            SizedBox(height: 5.0,),
            Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),)
          ],
    );
  }

}