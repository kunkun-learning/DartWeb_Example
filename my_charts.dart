import 'dart:html';
import 'dart:js';

void main(List<String> args) {
  DivElement dartStatus =
      querySelector('#dart-status') as DivElement; // 获取div元素
  dartStatus.text = 'Dart is running! hhh'; // 设置div元素的文本内容

  var myData = JsObject.jsify([
    // JsObject.jsify()是将Dart对象列表转换为js数组
    {'name': 'Flutter', 'value': 10},
    {'name': 'React', 'value': 20},
  ]);

  var chart = context['chart']; // 获取js的全局对象
  // 调用JavaScript的source方法
  chart.callMethod('source', [myData]); // source方法的参数是一个js数组
  // 调用JavaScript的render方法
  chart.callMethod('render', []); // render方法是使用js的完全编程能力来渲染页面，即用js来构建DOM
}
