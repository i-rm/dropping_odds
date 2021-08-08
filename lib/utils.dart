String subsBetween(String str, start, end){
  final startIndex = str.indexOf(start);
  final endIndex = str.indexOf(end);
  if((startIndex < 0) || (endIndex < 0)){
    return "";
  }
  final int l = start.length;
  final result = str.substring(startIndex + l, endIndex).trim();
  return result;
}

String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

String capitalizeWords(String text) {
  if (text == "") {
    return "";
  }

  if (text.length <= 1) {
    return text.toUpperCase();
  }

  // Split string into multiple words
  final List<String> words = text.split(' ');

  // Capitalize first letter of each words
  final capitalizedWords = words.map((word) {
    if (word.trim().isNotEmpty) {
      final String res = capitalize(word);
      return res;
    }
    return '';
  });

  // Join/Merge all words back to one String
  return capitalizedWords.join(' ');
}
