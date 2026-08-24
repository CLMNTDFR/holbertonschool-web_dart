int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int score(Map<String, int> team) {
    return (team['Free throws'] ?? 0) * 1 +
        (team['2 pointers'] ?? 0) * 2 +
        (team['3 pointers'] ?? 0) * 3;
  }

  var pointsA = score(teamA);
  var pointsB = score(teamB);

  if (pointsA > pointsB) return 1;
  if (pointsA < pointsB) return 2;
  return 0;
}
