import 'package:flutter/material.dart';
import 'package:levelup_id/models/leaderboard_model.dart';

class LeaderboardPage extends StatelessWidget {
  final DataLeaderboard leaderboard;

  const LeaderboardPage({Key? key, required this.leaderboard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 50, right: 15, left: 15),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Leaderboard Best Mentee',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                      'All information related to the summary score\nperformance of the Mentee',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300))
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Ranking',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Name',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Position',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Location',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    DataColumn(
                      label: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Value',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      numeric: true,
                    ),
                  ],
                  rows: dataLeaderboardList.map((leaderboard) {
                    return DataRow(cells: <DataCell>[
                      DataCell(Text(leaderboard.rank)),
                      DataCell(Text(leaderboard.name)),
                      DataCell(Text(leaderboard.position)),
                      DataCell(Text(leaderboard.location)),
                      DataCell(Text(leaderboard.value.toString())),
                    ]);
                  }).toList(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
