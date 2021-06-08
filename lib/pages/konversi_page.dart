import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KonversiPage extends StatefulWidget{

  
  @override
  _KonversiState createState() => _KonversiState();
}

class _KonversiState extends State<KonversiPage> {
  double _inputRupiah =0;
  double _outputKonversi = 0;
  
  var inputJumlah = new TextEditingController();

  var listMenu =["Ringgit","Dollar Singapura","Bath","Won","Yen","Yuan","Peso","Kyat"];
  final inputController = TextEditingController();
  String _newValue = "Ringgit";

  _hitungMataUang(){
    setState((){
      _inputRupiah = double.parse(inputJumlah.text);
      if(_newValue == "Ringgit")
      _outputKonversi = _inputRupiah * 1/3452;
      else if(_newValue == "Dolar Singapura")
      _outputKonversi = _inputRupiah * 1/10776;
      else if(_newValue == "Bath")
      _outputKonversi = _inputRupiah* 1/457;
      else if(_newValue == "Won")
      _outputKonversi = _inputRupiah * 1/12.8;
      else if(_newValue == "Yen")
      _outputKonversi = _inputRupiah * 1/130;
      else if(_newValue == "Yuan")
      _outputKonversi = _inputRupiah * 1/2229;
      else if(_newValue == "Peso")
      _outputKonversi = _inputRupiah * 1/723;
      else 
      _outputKonversi = _inputRupiah * 1/8.64;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Text("Konversi Mata Uang"),
          ),
          body: SingleChildScrollView(
           child: Container(
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network("https://cdn.moneysmart.id/wp-content/uploads/2018/07/29020013/WP-35.jpeg"),
                TextFormField(
                  decoration: 
                    InputDecoration(hintText: "Masukkan nominal (dalam Rupiah)"),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.numberWithOptions(decimal:true),
                    controller: inputJumlah,
                ),
                DropdownButton<String>(
                  items:
                    listMenu.map((String value){
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value)
                      );
                    }).toList(),
                    value: _newValue,
                    onChanged: (changeValue){
                      setState((){
                        _newValue = changeValue!;
                        _hitungMataUang();
                      });
                    },
                ),    
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: _hitungMataUang,
                    child: Text("Cek nilai konversi!"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("Hasil konversi adalah ", style: TextStyle(fontSize: 20),),
                    Text(_outputKonversi.toStringAsFixed(1), style: TextStyle(fontSize: 20),)
                  ],
                ),
              ],
            ),
          )
        )
      )
    );
  }   
}