import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;
// ignore: import_of_legacy_library_into_null_safe, depend_on_referenced_packages
import 'package:fluttertoast/fluttertoast.dart';

class Job {
  final int id;
  final String position;
  final String company;
  final String location;

  Job(
      {required this.id,
      required this.position,
      required this.company,
      required this.location});

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      id: json['id'],
      position: json['position'],
      company: json['company'],
      location: json['location'],
    );
  }
}

class JobPage extends StatelessWidget {
  const JobPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Job>>(
      future: _fetchJobs(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Job>? data = snapshot.data;
          return _jobsListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const CircularProgressIndicator();
      },
    );
  }

  Future<List<Job>> _fetchJobs() async {
    final response =
        await http.get(Uri.parse('https://joblist.free.beeceptor.com/'));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => Job.fromJson(job)).toList();
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }

  ListView _jobsListView(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _tile(data[index].position, data[index].company,
              data[index].location, Icons.work);
        });
  }

  ListTile _tile(
          String title, String subtitle, String location, IconData icon) =>
      ListTile(
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: Text(location),
          leading: Icon(
            icon,
            color: Colors.teal[600],
          ),
          onTap: () {
            Fluttertoast.showToast(
                msg: title.toString(),
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.green,
                textColor: Colors.black);
          });
}
