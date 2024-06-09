class Absensi {
  int? _id;
  String? _name;
  String? _status_hadir;

  Absensi(this._name, this._status_hadir);

  Absensi.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._name = map['name'];
    this._status_hadir = map['status_hadir'];
  }

  int get id => _id!;
  String get name => _name!;
  String get status_hadir => _status_hadir!;

  set name(String value){
    _name = value;
  }
  set status_hadir(String value){
    _status_hadir = value;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();

    map['id'] = this._id;
    map['name'] = name;
    map['status_hadir'] = status_hadir;
    return map;
  }
}