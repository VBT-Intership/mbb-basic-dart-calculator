import 'dart:io';
void main() {
  print('\t\tDART CALCULATOR');

  while (true) {
    calc();
    print('EXIT? y / n');
    var quit = stdin.readLineSync();
    
    if (quit == 'y') {
      break;
    }
  } 
}

void calc() {
  print('CHOOSE FIRST NUMBER');
  var num1 = double.parse(stdin.readLineSync());
  
  print('CHOOSE SECOND NUMBER');
  var num2 = double.parse(stdin.readLineSync());
  
  print('ADD : + \nSUBTRACT : - \nDIVIDE : / \nMULTIPYL : x');
  print('CHOOSE OPERATION');
  var operator = stdin.readLineSync();

  switch(operator){
    case '+':
      add(num1, num2);
      break;

    case '-' :
     subtract(num1, num2);
      break;

    case 'x':
     multiply(num1, num2);
      break;

    case '/' :
      divide(num1, num2);
      break;

    default:
      print('INVALID  OPERATOR');
      break;
  }
  
}

void add(double number1, double number2) {
  print(number1 + number2); 
}

void subtract(double number1, double number2) {
  print(number1 - number2);
}

void divide(double number1, double number2) {
  print(number1 / number2);
}

void multiply(double number1, double number2) {
  print(number1 * number2);
}
