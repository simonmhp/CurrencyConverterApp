import 'package:flutter/cupertino.dart';

class Currencyconvertercupertinopage extends StatefulWidget {
  const Currencyconvertercupertinopage({super.key});

  @override
  State<Currencyconvertercupertinopage> createState() =>
      _CurrencyconvertercupertinopageState();
}

class _CurrencyconvertercupertinopageState
    extends State<Currencyconvertercupertinopage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    result = double.parse(textEditingController.text) * 81;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 222, 220, 220),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: const Color.fromARGB(255, 212, 203, 203),
        middle: Text(
          "Currency Converter App",
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoTextField(
                controller: textEditingController,
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Enter Amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                color: CupertinoColors.black,
                onPressed: convert,
                child: const Text("Convert"),
              ),
            ),
            const Text("Convertion: Dollar * 81"),
          ],
        ),
      ),
    );
  }
}
