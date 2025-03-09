import 'dart:io';

void main() {
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
}