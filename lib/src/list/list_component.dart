import 'package:angular/angular.dart';
import 'package:angular_app/src/list/list_service.dart';

@Component(
  selector: 'list',
  styleUrls: ['list_component.css'],
  templateUrl: 'list_component.html',
  directives: [NgFor],
  providers: [ClassProvider(ListService)],
)

class ListComponent implements OnInit {

  //Injeção de dependência
  final ListService listService;

  List languages = [];

  ListComponent(this.listService);

  @override
  void ngOnInit() {
    languages = listService.getLanguages();
  }

}