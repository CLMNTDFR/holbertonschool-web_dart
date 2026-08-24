String longestUniqueSubstring(String str) {
  var longest = '';

  for (var i = 0; i < str.length; i++) {
    var seen = <String>{};
    var current = '';

    for (var j = i; j < str.length; j++) {
      if (seen.contains(str[j])) break;
      seen.add(str[j]);
      current += str[j];
    }

    if (current.length > longest.length) {
      longest = current;
    }
  }

  return longest;
}
