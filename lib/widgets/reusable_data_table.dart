import 'package:flutter/material.dart';
import 'package:dataterrain/core/utili/theme/app_spacing.dart';

import '../core/utili/theme/app_color.dart';

class ReusableDataTable extends StatefulWidget {
  final List<Map<String, dynamic>> data;
  final List<String> columnNames;
  final ScrollController scrollController;

  const ReusableDataTable({
    Key? key,
    required this.data,
    required this.columnNames,
    required this.scrollController,
  }) : super(key: key);

  @override
  _ReusableDataTableState createState() => _ReusableDataTableState();
}

class _ReusableDataTableState extends State<ReusableDataTable> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: widget.scrollController,
      scrollDirection: Axis.horizontal,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.tablecolor),
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: const EdgeInsets.symmetric(vertical: AppSpacing.spacing10x),
        child: DataTable(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          headingRowHeight: 50,
          dataRowMinHeight: 48,
          columnSpacing: 100,
          headingRowColor:
              WidgetStateColor.resolveWith((states) => AppColor.tablecolor),
          columns: widget.columnNames
              .map(
                (col) => DataColumn(
                  label: Text(
                    col,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
              .toList(),
          rows: widget.data
              .map(
                (row) => DataRow(
                  cells: widget.columnNames
                      .map(
                        (col) => DataCell(Text(row[col]?.toString() ?? '')),
                      )
                      .toList(),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
