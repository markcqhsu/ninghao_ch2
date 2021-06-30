import 'package:flutter/material.dart';
import '../model/post.dart';

class DataTableDemo extends StatefulWidget {
  @override
  _DataTableDemoState createState() => _DataTableDemoState();
}

class _DataTableDemoState extends State<DataTableDemo> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DataTableDemo"),
          elevation: 0.0,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: ListView(
            children: [
              DataTable(
                sortColumnIndex: _sortColumnIndex,
                sortAscending: _sortAscending,
                //定義全選動作
                // onSelectAll: (bool value){
                //
                // },
                columns: [
                  DataColumn(
                    label: Text("Text"),
                    onSort: (int index, bool ascending){
                      setState(() {
                        _sortColumnIndex = index;
                        _sortAscending = ascending;

                        //排序功能

                        posts.sort((a, b){
                          if (!ascending){
                            final c = a;
                            a = b;
                            b = c;
                          }
                          return a.title.length.compareTo(b.title.length);

                        });
                      });
                    }

                    //自己定義欄位寬度
                    // label: Container(
                    //   width: 150.0,
                    //   child: Text("Title"),
                    // ),
                  ),
                  DataColumn(
                    label: Text("Author"),
                  ),
                  DataColumn(
                    label: Text("Image"),
                  ),
                ],

                //透過post建立

                rows: posts.map((post){
                  return DataRow(
                    selected: post.selected,
                      onSelectChanged: (bool? value){
                        setState(() {
                          if(post.selected != value){
                            post.selected = value!;
                          }
                        });
                      },
                      cells: [
                    DataCell(Text(post.title)),
                    DataCell(Text(post.author)),
                    DataCell(Image.network(post.imageUrl)),
                  ]);
                }).toList(),




                //------手工建立rows------
                // rows: [
                //   DataRow(cells: [
                //     DataCell(Text("Hello!")),
                //     DataCell(Text("THC")),
                //   ]),
                //   DataRow(cells: [
                //     DataCell(Text("你好!")),
                //     DataCell(Text("THC")),
                //   ]),
                //   DataRow(cells: [
                //     DataCell(Text("長度")),
                //     DataCell(Text("20mm")),
                //   ]),
                // ],
              ),
            ],
          ),
        )
    );
  }
}
