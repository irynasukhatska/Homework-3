import 'dart:io';
import 'package:collection/collection.dart';

void main() {
//Task 1 List
 print("--------TASK 1:--------");
 print("Список покупок в супермаркеті:");
 List<String> food = [
 'Яблука', 'Банани', 'Апельсини', 'Хліб', 'Mасло', 'Mолоко', 'Сир', 'Огірки', 'Салат', 'Сіль'
 ];
 print(food);

 food.add('Гриби');
 print('Обовлений список:');
 print(food);

 food.remove('Сіль');
 print('Обовлений список:');
 print(food); 

 print (food.contains('Банани'));
 bool containsBananas = food.contains('Банани');
 if (containsBananas) {
    print('Список містить "Банани":');
  } else {
    print('Список НЕ містить "Банани":');
  }

  food.sort();
  print('Список за алфавітом:');
  print(food);

  var foodStartsWithM = food.where((food) => food.startsWith('M')).toList();
  print('Покупки, які починаються на "M":');
  print(foodStartsWithM);

  List<String> beveridges = [
  'Чай', 'Кава', 'Кола'
  ];
  food.addAll(beveridges);
  print('Оновлений список покупок:');
  print(food); 

  print('Список покупок в стовпчик:');
  food.forEach((element) {
  print(element);
  });

  //Task 2 Set
  print("--------TASK 2:--------");
  Set <int> set1 = {1,3,5,7,9,0};
  Set <int> set2 = {0,2,4,6,8};
  
  print('Списки чисел:');
  print("Список 1: $set1");
  print("Список 2: $set2");
  
  print('Обʼєдані списки:');
  Set <int> unionSet = set1.union(set2);
  print(unionSet);

  print('Список від меншого до більшого:');
  List<int> sortedUnionSetAsc = unionSet.toList()..sort();
  print(sortedUnionSetAsc);  

  print('Список від більшого до меншого:');
  List<int> sortedUnionSetDesc = unionSet.toList()..sort((a, b) => b.compareTo(a));
  print(sortedUnionSetDesc);  

  print('Повторення:');
  Set<int> intersectionSet = set1.intersection(set2);
  print(intersectionSet);

  sortedUnionSetDesc.remove(8);
  print('Видалення елементу:');
  print(sortedUnionSetDesc); 

  if (sortedUnionSetDesc.contains(0)) {
  print('Список містить "0"');
  } else {
  print('Список НЕ містить "0"');
  }
  
  List<int> listFromSet = sortedUnionSetDesc;
  print('Остаточний список: $listFromSet');

 // Task 3 Map
  print("--------TASK 3:--------");
  print('Столиці:');
  Map<String,String> capitals ={
  'France': 'Paris',
  'Ukraine': 'Kiev',
  'Poland': 'Warsaw'
  };
  capitals['Germany'] = 'Berlin';
  print(capitals);

  print('Видалення елемента:');
  capitals.remove('France');
  print(capitals);

  print('Додавання елемента:');
  capitals.putIfAbsent('Italy', () => 'Rome');
  print(capitals);

  print('Оновлений елемент:');
  capitals.update('Ukraine', (value) => 'Kyiv');
  capitals.update ('USA', (value)=> 'Washington DC', ifAbsent: () => 'Washington DC');
  print(capitals);

  Map<String,String> capitals2 ={
  'Albania': 'Tirana',
  'Austria': 'Vienna',
  'Bulgaria': 'Sofia',
  'Bosnia and Herzegovina': 'Sarajevo',
  'Croatia': 'Zagreb',
  'Czech Republic': 'Prague',
  };
  
  print('Обʼєднані мапи:');
  Map<String, String> combinedMap = {
    ...capitals,
    ...capitals2,
  };
  print(combinedMap);

  print('Список:');
  combinedMap.forEach((key, value) {
  print('Країна: $key, Столиця: $value');
  });

  // Task 4 Використання Dart-пакетів для роботи з колекціями  
  print("--------TASK 4:--------");
  int sum = sortedUnionSetDesc.sum;
  print('Сума всіх чисел із Task 2: $sum');

  int? maxNumber = sortedUnionSetDesc.max;
  print('Максимальне число: $maxNumber');
}