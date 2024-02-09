import 'package:flutter/material.dart';

void main() {
  runApp(FootballScoreApp());
}

class FootballScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Football Score App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FootballScoreHomePage(),
    );
  }
}

class FootballScoreHomePage extends StatelessWidget {
  final List<Match> matches = [
    Match(team1: 'Team A', team2: 'Team B', score1: 3, score2: 2),
    Match(team1: 'Team C', team2: 'Team D', score1: 1, score2: 1),
    Match(team1: 'Team E', team2: 'Team F', score1: 2, score2: 4),
    // Add more matches as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Football Score App'),
      ),
      body: ListView.builder(
        itemCount: matches.length,
        itemBuilder: (context, index) {
          final match = matches[index];
          return ListTile(
            title: Text('${match.team1} vs ${match.team2}'),
            subtitle: Text('${match.score1} - ${match.score2}'),
            onTap: () {
              // Handle tapping on a match to view match details
              // You can navigate to a new screen or show a dialog with match details
              // For simplicity, we'll just print match details to the console
              print('Match Details:\n${match.team1} ${match.score1} - ${match.score2} ${match.team2}');
            },
          );
        },
      ),
    );
  }
}

class Match {
  final String team1;
  final String team2;
  final int score1;
  final int score2;

  Match({required this.team1, required this.team2, required this.score1, required this.score2});
}