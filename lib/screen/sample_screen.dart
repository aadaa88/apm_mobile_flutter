import 'package:flutter/material.dart';
import 'package:apm_mobile_flutter/widget/db_handler.dart';
import 'package:apm_mobile_flutter/model/sample_list.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({Key? key}) : super(key: key);

  @override
  _SampleScreen createState() => _SampleScreen();
}

class _SampleScreen extends State<SampleScreen> {
  List<Sample>? samples;
  bool? loading;

  @override
  void initState() {
    super.initState();
    loading = true;
    fetchSample().then((data) {
      setState(() {
        samples = data;
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 100, bottom: 50),
          child: const Text(
            '샘플 데이터',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.green),
          ),
        ),
        FutureBuilder(
            future: _fetch(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData == false) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '오류: ${snapshot.error}',
                    style: const TextStyle(fontSize: 15),
                  ),
                );
              }
            }),
      ],
    );
  }

  Future<String> _fetch() async {
    await Future.delayed(const Duration(seconds: 2));
    return 'Call Data';
  }
}
/*
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columns: [
                  DataColumn(label: Text('Name')),
                  DataColumn(label: Text('Subject')),
                  DataColumn(label: Text('Score')),
                  DataColumn(label: Text('Gender')),
                  DataColumn(label: Text('Address')),
                  DataColumn(label: Text('Phone')),
                ],
                rows: _samples
                    .map((samples) => DataRow(cells: [
                          DataCell(Text(samples.name)),
                          DataCell(Text(samples.subject)),
                          DataCell(Text(samples.score.toString())),
                          DataCell(Text(samples.gender)),
                          DataCell(Text(samples.address)),
                          DataCell(Text(samples.phone)),
                        ]))
                    .toList(), // samples.map(),
              ),
            ),
          ),
        ),

*/