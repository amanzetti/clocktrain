import 'package:flutter/material.dart';

class MinuteSecondPickerField extends StatefulWidget {
  @override
  _MinuteSecondPickerFieldState createState() =>
      _MinuteSecondPickerFieldState();
}

class _MinuteSecondPickerFieldState extends State<MinuteSecondPickerField> {
  // Valori iniziali per i minuti e i secondi
  int selectedMinutes = 0;
  int selectedSeconds = 0;

  // Funzione per aprire il dialogo
  Future<void> _showMinuteSecondPicker() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Select Minutes and Seconds"),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Minutes"),
                  DropdownButton<int>(
                    value: selectedMinutes,
                    items: List.generate(
                      60,
                      (index) => DropdownMenuItem(
                        value: index,
                        child: Text(index.toString().padLeft(2, '0')),
                      ),
                    ),
                    onChanged: (int? value) {
                      setState(() {
                        selectedMinutes = value!;
                      });
                    },
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Seconds"),
                  DropdownButton<int>(
                    value: selectedSeconds,
                    items: List.generate(
                      60,
                      (index) => DropdownMenuItem(
                        value: index,
                        child: Text(index.toString().padLeft(2, '0')),
                      ),
                    ),
                    onChanged: (int? value) {
                      setState(() {
                        selectedSeconds = value!;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text("Cancel"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );

    // Aggiorna il testo del TextField con i valori selezionati
    setState(() {
      _timeController.text =
          "${selectedMinutes.toString().padLeft(2, '0')}:${selectedSeconds.toString().padLeft(2, '0')}";
    });
  }

  // Controller per il TextField
  final TextEditingController _timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _timeController,
      readOnly: true,
      onTap: _showMinuteSecondPicker,
      decoration: InputDecoration(
        labelText: "Minutes:Seconds",
        hintText: "00:00",
        border: OutlineInputBorder(),
      ),
    );
  }
}