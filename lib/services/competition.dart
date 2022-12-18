import 'package:offside/services/networking.dart';

class getTable {
  List _table = [];

  Future<dynamic> getComp(String id) async {
    NetworkHelper networkHelper = NetworkHelper(
      url: 'http://api.football-data.org/v2/competitions/${id}/standings',
    );
    var compData = await networkHelper.getData();
    return compData;
  }
}
