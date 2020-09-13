class Note {
  int _id;
  String _description;
  String _date;
  int _priority;

  Note(this._id, this._description, this._date, this._priority);

  Note.withoutId(this._description, this._date, this._priority);

  Note.fromMapToObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];
  }

  int get id => _id;

  String get description => _description;

  String get date => _date;

  int get priority => _priority;

  set description(String description) {
    this._description = description;
  }

  set date(String date) {
    this._date = date;
  }

  set priority(int priority) {
    this._priority = priority;
  }

  set id(int id) {
    this._id = id;
  }

  //converting note object to map

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) map['id'] = _id;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;

    return map;
  }
}
