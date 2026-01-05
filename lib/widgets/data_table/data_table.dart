import 'package:flutter/material.dart';

class DataTableScreen extends StatelessWidget {
  const DataTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("D a t a T a b l e  W i d g e t"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Employee Record:"),
              SizedBox(
                height: 10,
              ),
              DataTable(
                  // headingRowHeight: 100,
                  // showBottomBorder: true,
                  // columnSpacing: 200,
                  // horizontalMargin: 300,
                  // headingRowHeight: 1000, Ye property height di gi column proprty ko.
                  headingTextStyle: TextStyle(
                      color: Colors
                          .white), // Ye property column k text ko height digi.
                  headingRowColor: WidgetStatePropertyAll(Colors
                      .blue), // Ye property colum property ko color assign kry ga.

                  // dividerThickness: 100,
                  decoration: BoxDecoration(
                    color: Colors
                        .deepOrangeAccent, // Ye puri table me apply hoga color.
                    // Shape aur border Radius in dono me sy koi property ka use kr sakhty dono khaty aik sath nhi kr sakkhty error aiga.
                    // shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  dataTextStyle: TextStyle(
                      color: Colors
                          .white), // DataCell me jo text hain unhain color assign kryga
                  // dataRowHeight: 1000,// It will give the height to the row property.
                  // dataRowColor: WidgetStatePropertyAll(
                  //     Colors.amber), // It will give the color to the row proprty.
                  dataRowMaxHeight:
                      50, // Max height assign to the row property.
                  dataRowMinHeight:
                      20, // Min  height assign to the row property.
                  showCheckboxColumn: true,
                  sortAscending: true,
                  border: TableBorder.all(
                      color: Colors.black,
                      width: 1.5,
                      borderRadius: BorderRadius.circular(10),
                      style: BorderStyle.solid // Default value
                      // style: BorderStyle.values.first,
                      // style: BorderStyle.values.last
                      // style: BorderStyle.none,
                      ),

                  /// column property ki data type hai List<DataColumn>
                  columns: [
                    DataColumn(label: Text("Name")),
                    DataColumn(label: Text("Age")),
                    DataColumn(label: Text("Occupation")),
                    DataColumn(label: Text("Salary"))
                  ],

                  /// row property ki data type hai List<DataRow>
                  rows: [
                    DataRow(
                      /// cell property ki data type hai List<DataCell>
                      cells: [
                        DataCell(Text('Ali')),
                        DataCell(Text('20')),
                        DataCell(Text("Graphic Designer")),
                        DataCell(Text("\$200")),
                      ],
                    ),
                    DataRow(
                      /// cell property ki data type hai List<DataCell>
                      cells: [
                        DataCell(Text('Ahmed')),
                        DataCell(Text('20')),
                        DataCell(Text("Digital Marketer")),
                        DataCell(Text("\$400")),
                      ],
                    ),
                    DataRow(
                      /// cell property ki data type hai List<DataCell>
                      cells: [
                        DataCell(Text('Subhan')),
                        DataCell(Text('25')),
                        DataCell(Text("AI/ML Engeer")),
                        DataCell(Text("\$800")),
                      ],
                    ),
                    DataRow(
                      /// cell property ki data type hai List<DataCell>
                      cells: [
                        DataCell(Text('Hamza')),
                        DataCell(Text('30')),
                        DataCell(Text("Senior Software Engineer")),
                        DataCell(Text("\$1000")),
                      ],
                    ),
                    DataRow(
                      /// cell property ki data type hai List<DataCell>
                      cells: [
                        DataCell(Text('Atif')),
                        DataCell(Text('23')),
                        DataCell(Text("Web Developer")),
                        DataCell(Text("\$600")),
                      ],
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
// /// ===== Case Study of Data Table Widget =====
// /// Agr hum ny DataTable ki property column me 4 DataColumn add kiye hain aur row property me 3 DataCell add kiye hai to yahan humain error mily ga.
// /// Aur isi trhan agr row property me for example 10 DataCell hain aur column me 4 DataColumn hain tb bhe error aiga.
// /// So here we understand that we should assign to both of the properties same quantity of widget.
// /// dataRowHeight, dataRowMaxHeight property in DataTable widget: Ye dono property apas me inter-relation rakhti hain. Phely to ye dono property double value ko accept krti hai. Humny in dono me sy kisi aik ko value assign krnia hia dono ko at the same time nhi kr sakhty error aiga. Ye dono property row property ko height assign krti hain.
