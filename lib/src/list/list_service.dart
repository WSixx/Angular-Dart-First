import 'package:angular/core.dart';


@Injectable()
class ListService {

  List getLanguages(){
    return ['Dart', 'Python', 'Java', 'C#', 'JavaScript', 'Delphi'];
  }

}