import 'package:flutter/material.dart';

class MaterialCurrencyConverter extends StatefulWidget {
  const MaterialCurrencyConverter({Key? key}) : super(key: key);

  @override
  State<MaterialCurrencyConverter> createState() => _MaterialCurrencyConverterState();
}

class _MaterialCurrencyConverterState extends State<MaterialCurrencyConverter> {

  double result = 0 ;
  @override
  Widget build(BuildContext context) {


    final TextEditingController myEditingController = TextEditingController();
    final border = OutlineInputBorder(borderRadius:
    BorderRadius.circular(5),borderSide: BorderSide(
        color: Colors.black,width: 4,strokeAlign: BorderSide.strokeAlignOutside
    )
    ) ;
    int currency=0;
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueGrey,elevation: 10,
      title: Center(child: Text('Currency Converter'))),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text(result.toString(),style: TextStyle(
            fontSize: 50,
            backgroundColor: Colors.black,
            letterSpacing: 5,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: myEditingController,
                  decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.blueGrey,),
                     hintText: ('Please Enter The Amount In US Dollar'),
                focusedBorder: border,
                enabledBorder: border,
                prefixIcon: Icon(Icons.arrow_forward,color: Colors.black,)),
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                child: ElevatedButton(onPressed: () {

                  setState(() {
                    result = double.parse(myEditingController.text.toString())*82;
                  });

                },style: ButtonStyle(
                  elevation: MaterialStateProperty.all(15),
                     minimumSize: MaterialStateProperty.all(Size(double.infinity, 45)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder
                      (borderRadius: BorderRadius.all(Radius.circular(10)))),
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                  child: Text('Convert',style:TextStyle(
                    color: Colors.white,
                fontSize: 20,)),),
              )
        ]),
      ),
    );
  }
}
