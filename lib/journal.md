I created the classes to store heroes and track the party. The notifyListeners() method tells the app when the party chnages so the UI can update.

ive added the provider package and wrapped my app with ChangeNotifierProvider. this makes the party data available to different widgets. placing it near the top lets the guild hall and party summery share the same data.

I cresated the guild hall roster to display availbale adventures. the recruit buttons adds an adventure to the party using provider.

having the quest party summery to show recruited adventuerers, the party count, and total gold cost. I used provider to update the summery when adventurers are added or removed.