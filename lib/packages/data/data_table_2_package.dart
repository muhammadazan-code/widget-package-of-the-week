import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class DataTableTwoExample extends StatelessWidget {
  const DataTableTwoExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("D a t a T a b l e 2  P a c k a g e"),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: DataTable2(
            border: TableBorder.all(
              color: Colors.black,
              width: 2,
            ),
            headingCheckboxTheme: CheckboxThemeData(
                checkColor: WidgetStatePropertyAll(Colors.white)),
            showHeadingCheckBox: true,
            dataTextStyle: TextStyle(color: Colors.white),
            headingTextStyle: TextStyle(color: Colors.white),
            headingRowColor: WidgetStatePropertyAll(Colors.yellow),
            dataRowColor: WidgetStatePropertyAll(Colors.blueAccent),
            // dataRowColor: WidgetStatePropertyAll(Colors.yellow),
            columns: [
              DataColumn(label: Text("Name")),
              DataColumn(label: Text('Class')),
              DataColumn(label: Text('Age')),
              DataColumn(label: Text('Percentage'))
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text("Aliyan")),
                DataCell(Text("3")),
                DataCell(Text("9")),
                DataCell(Text("70%")),
              ]),
              DataRow(cells: [
                DataCell(Text("Hadi")),
                DataCell(Text("5")),
                DataCell(Text("12")),
                DataCell(Text("50%")),
              ]),
              DataRow(cells: [
                DataCell(Text("Zaid")),
                DataCell(Text("7")),
                DataCell(Text("14")),
                DataCell(Text("65%")),
              ]),
              DataRow(cells: [
                DataCell(Text("Huraira")),
                DataCell(Text("1")),
                DataCell(Text("6")),
                DataCell(Text("90%")),
              ]),
              DataRow(cells: [
                DataCell(Text("Anwar")),
                DataCell(Text("10")),
                DataCell(Text("16")),
                DataCell(Text("75%")),
              ]),
              DataRow(cells: [
                DataCell(Text("Mehmood")),
                DataCell(Text("8")),
                DataCell(Text("14")),
                DataCell(Text("65%")),
              ]),
              DataRow(cells: [
                DataCell(Text("Subhan")),
                DataCell(Text("4")),
                DataCell(Text("10")),
                DataCell(Text("83%")),
              ]),
            ]),
      ),
    );
  }
}
