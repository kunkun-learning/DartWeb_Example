import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  final div = querySelector("#hint") as DivElement;
  div.text = "dart connected.";

  var chart = context['chart'];

  var data = JsObject.jsify([
    {'ball': '篮球', 'sales': 60},
    {'ball': '网球', 'sales': 80},
    {'ball': '足球', 'sales': 40},
    {'ball': '排球', 'sales': 20}
  ]);

  chart.callMethod('source', [data]);
  chart.callMethod('render', []);

  print('data updated');
}
