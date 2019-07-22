class ListModel {
  bool success;
  Body body;

  ListModel({this.success, this.body});

  ListModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    body = json['body'] != null ? new Body.fromJson(json['body']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.body != null) {
      data['body'] = this.body.toJson();
    }
    return data;
  }
}

class Body {
  List<DataArray> dataArray;

  Body({this.dataArray});

  Body.fromJson(Map<String, dynamic> json) {
    if (json['dataArray'] != null) {
      dataArray = new List<DataArray>();
      json['dataArray'].forEach((v) {
        dataArray.add(new DataArray.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dataArray != null) {
      data['dataArray'] = this.dataArray.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataArray {
  String title;
  List<List> list;

  DataArray({this.title, this.list});

  DataArray.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['list'] != null) {
      list = new List<List>();
      json['list'].forEach((v) {
        list.add(new List.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.list != null) {
      data['list'] = this.list.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class List {
  String img;
  String title;
  String grade;
  String num;
  String money;

  List({this.img, this.title, this.grade, this.num, this.money});

  List.fromJson(Map<String, dynamic> json) {
    img = json['img'];
    title = json['title'];
    grade = json['grade'];
    num = json['num'];
    money = json['money'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img'] = this.img;
    data['title'] = this.title;
    data['grade'] = this.grade;
    data['num'] = this.num;
    data['money'] = this.money;
    return data;
  }
}
