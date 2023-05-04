import 'dart:math';

void main() {
  List<dynamic> startPoint = [
    {'x': 0.383248, 'y': 1.23227, 'z': 0.0}
  ];

  List<dynamic> endPoint = [
    {'x': 0.383248, 'y': 0.232273, 'z': 0.0}
  ];

  // lista com nos
  List<dynamic> graphPoints = [
    {
      {'x': 0.383248, 'y': 0.232273, 'z': 0.0},
      {'x': 0.383248, 'y': 1.23227, 'z': 0.0}
    },
    {
      {'x': 0.383248, 'y': 0.232273, 'z': 0.0},
      {'x': 1.38325, 'y': 0.232273, 'z': 0.0}
    },
    {
      {'x': 1.38325, 'y': 0.232273, 'z': 0.0},
      {'x': 1.41474, 'y': 1.62136, 'z': 0.0}
    },
    {
      {'x': 1.41474, 'y': 1.23227, 'z': 0.0},
      {'x': 0.383248, 'y': 1.23227, 'z': 0.0}
    },
    {
      {'x': 0.383248, 'y': 1.62136, 'z': 0.0},
      {'x': 0.744272, 'y': 0.795737, 'z': 0.0}
    },
    {
      {'x': 0.744272, 'y': 0.795737, 'z': 0.0},
      {'x': 1.41474, 'y': 1.62136, 'z': 0.0}
    },
    {
      {'x': 0.744272, 'y': 0.795737, 'z': 0.0},
      {'x': 0.383248, 'y': 0.232273, 'z': 0.0}
    },
  ];

  var item1 = graphPoints.length;
  print(item1);
  var distancia = calculateDistance(
    x2: endPoint[0]['x'],
    x1: startPoint[0]['x'],
    y2: endPoint[0]['y'],
    y1: startPoint[0]['y'],
  );
  print('a distancia entre os pontos é: ${distancia.toStringAsFixed(4)}');

  // for (var i = 0; i < graphPoints.length; i++) {
  //   var distancias = calculateDistance(
  //     x2: pathPoints[i]['x'],
  //     x1: pathPoints[i + 1]['x'],
  //     y2: pathPoints[i]['y'],
  //     y1: pathPoints[i + 1]['y'],
  //   );
  //   pathPoints.add(distancias);
  //   i++;
  //   print(pontosDistancia);
  //   // print(pathPoints[i]);
  // }
}

List dijkstra({
  required List? pontoinicial,
  required List? pontofinal,
  required List? pontostotais,
  required List? pontosedistancia,
}) {
  return pontostotais!;
}

//Calcular distancia entre pontos
double calculateDistance({required x2, required x1, required y2, required y1}) {
  final d = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
  return d;
}

// var points = dijkstra(
  //     pontoinicial: startPoint,
  //     pontofinal: endPoint,
  //     pontostotais: pathPoints,
  //     pontosedistancia: null);
  // ------------------------------ //
  // print('Os pontos são: ${distancia.toStringAsFixed(4)}');
