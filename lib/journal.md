I created the classes to store heroes and track the party. The notifyListeners() method tells the app when the party chnages so the UI can update.

ive added the provider package and wrapped my app with ChangeNotifierProvider. this makes the party data available to different widgets. placing it near the top lets the guild hall and party summery share the same data.