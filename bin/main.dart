showOp1(){
  print('??= operator Assign the value only if the variable is null');
  var b;
  b ??= 10;
  print('it\'s hard to show usage of this operator');
  print('b = ' + b.toString());
  print('value of b variable was assigned using ??= operator');
  //var a = 5;
  //a ??= 10;
}

showOp2(){
  print('? expr1 : expr2');
  var a = 5;
  var b = 10;
  print('a = ' + a.toString());
  print('b = ' + b.toString());
  var res = a > b ? 'a is grater than b' : 'b is grater than a';
  print (res);
}

showOp3(){
  print('a ?? b, in this case operator ?? will check if first expression is not null then it returns it, otherwise returns second expr');
  var a = null; 
  var b = 12; 
  print('a = ' + a.toString());
  print('b = ' + b.toString());
  var res = a ?? b; 
  print('result = ' + res.toString()); 
}

showOp4(){
  print('Example of using operator \'is\'');
  var dot = new Dot();

  dot is ThreedimensionalDot ? print('Dot is 3d') : print('Dot is 2d');

}

showFunc1(){
  print('Getting increment function as variable from another function and calling it');
  print(getMyIncrement().call(5));

}

showFunc2(){
  funcWithOptionalParams('main string', 'optional string');
  funcWithOptionalParams('only main string');
}

showFunc3(){
  print('Calling lambda function that sums two int\'s and returns sum');
  print(MyLambdaSumFunction(5, 12).toString());
}

showClass1(){
  var dot = new ThreedimensionalDot();
  dot.printPosition();
}

showClass2(){
  print('Creating dot instance using initializer list');
  var dot = new Dot.usingInitList(1,2);
  dot.printPosition();
}

showClass3(){

  print('Using factory constructor to implement singleton pattern');

  var s1 = Singleton();
  var s2 = Singleton();

  print(identical(s1, s2));  // true
  print(s1 == s2);    

}

showClass4(){
  print('Interfaces and abstract classes example');
  print('Both horse and bike implement ridable');
  var horse = new Horse();
  horse.ride();
  var bike = new Bike();
  bike.ride();
}

showList1(){

  print('Using triple dot operator to merge lists and ? to check for null');
  List<int> l1 = [1, 2, 3];
  List<int> l2 = [4, 5];
  List<int> l3 = [];
  List<int> l4 = [7];
  List<int> result = [...?[0, ...?l1, ...?l2], 6, ...?l3, if(l4.length != 0) ...l4];
  result.add(8);
  result.remove(4);
  print(result);
}

showList2(){

  print('Creating matrix 10*10 and using forEach function for formating output');

   List<List<int>> matrix = new List<List<int>>();
  for (var i = 0; i < 10; i++) {
    List<int> list = new List<int>();

    for (var j = 0; j < 10; j++) {
      list.add(j + i*10);
    }

    matrix.add(list);
  }


  matrix.forEach((element) => print(element.toString()));

}

showSet1(){
  print('Using triple dot operator to merge sets and ? to check for null');
  print('Set acts like list in most situations but you can\'t access fields using id');
  print('But you can use contains() function to check presented elements');
  Set<int> s1 = {1, 2, 3};
  Set<int> s2 = {4};
  Set<int> s3 = null;
  Set<int> s4 = {7, 8, 9};
  Set<int> result = {...?{...?s1, ...?s2}, ...?s3, 5, 6, if(s4.contains(7)) ...?s4};
  //print(result);

  result.add(10);
  result.remove(4);

  result.forEach((element) => print(element));
}

showMap1(){
  print('Using triple dot operator to merge maps and ? to check for null');
  print('Map acts like list in most situations but you can\'t access fields using id');
  print('Instead you shoud use keys');
  Map<String, String> m1 = {'key1': 'value1', 'key2': 'value2'};
  Map<String, String> m2 = {'key3': 'value3', 'key4': 'value4'};
  Map<String, String> m3 = null;
  Map<String, String> result = {...m1, ...m2, ...?m3};
  result['key5'] = 'value5'; 
  result.remove('key4');
  print(result);

  print('forEach() works as well using lambda function');
  result.forEach((key, value) => value = 'none');
  print(result);

}

taskForTrainCall(){
  //https://codeforces.com/problemset/problem/1353/B
  //t - number of test sets

  int n1 = 2;
  int k1 = 1;
  List<int> a1 = [1,2];
  List<int> b1 = [3,4];

  taskForTrainSolver(n1, k1, a1, b1);

  int n2 = 5;
  int k2 = 5;
  List<int> a2 = [5,5,6,6,5];
  List<int> b2 = [1,2,5,4,3];

  taskForTrainSolver(n2, k2, a2, b2);

  int n3 = 5;
  int k3 = 3;
  List<int> a3 = [1,2,3,4,5];
  List<int> b3 = [10,9,10,10,9];

  taskForTrainSolver(n3, k3, a3, b3);

  int n4 = 4;
  int k4 = 0;
  List<int> a4 = [2,2,4,3];
  List<int> b4 = [2,4,2,3];

  taskForTrainSolver(n4, k4, a4, b4);

  int n5 = 4;
  int k5 = 4;
  List<int> a5 = [1,2,2,1];
  List<int> b5 = [4,4,5,4];

  taskForTrainSolver(n5, k5, a5, b5);



}

taskForTrainSolver(int n, int k, List<int> inputArray1, List<int> inputArray2){
  //https://codeforces.com/problemset/problem/1353/B

  // n - number of elements in arrays
  // k - number of swaps allowed to perform

  inputArray1.sort();
  //print('');
  //print('');
  //print(inputArray2);
  inputArray2.sort();
  //print(inputArray2);

  for(var i=0;i<inputArray2.length/2;i++){
        var temp = inputArray2[i];
        inputArray2[i] = inputArray2[inputArray2.length-1-i];
        inputArray2[inputArray2.length-1-i] = temp;
    }
  //print(inputArray2);
  //print('');
  //print('');

  int ans = 0;

  for(int i = 0; i < n; i++){
    if(i < k){
      ans += inputArray1[i] >= inputArray2[i] ? inputArray1[i] : inputArray2[i];
    }else{
      ans += inputArray1[i];
    }
  }

  print('Answer: ' + ans.toString());

}

Function getMyIncrement(){

  var f =(int val)=>print(val+1) ;
  return f;

}

void funcWithOptionalParams(String str,[String optStr = 'none']){
  print('Main string: ' + str);
  print('Optional string: ' + optStr);
}

int MyLambdaSumFunction(int numOne, int numTwo) => numOne + numTwo;

class ThreedimensionalDot extends Dot{
  int z;

  TreedimensionalDot(){
    print('default constructor of 3d dot class was used'); 
    z = 0;
  }


  @override
  void printPosition(){
    print('X = ' + x.toString() + '; Y = ' + y.toString() + '; Z = ' + z.toString());
  }
}

class Dot{
  int x;
  int y;

  Dot(){
    print('default constructor of dot class was used');
    x = 0;
    y = 0;
  }
  
  Dot.usingInitList(int x, int y):
  this.x = x, this.y = y;

  Dot.singleNum(int arg){
    print('single number constructor of dot class was used');
    x = arg;
    y = arg;
  }
  Dot.squareRelation(int arg){
    print('square relation constructor of dot class was used');
    x = arg;
    y = arg*arg;
  }

  int get xValue{
    return x;
  }
  int get yValue{
    return y;
  }
  void set xValue(int num){
    this.x = num;
  }
  void set yValue(int num){
    this.y = num;
  }

  void printPosition(){
    print('X = ' + x.toString() + '; Y = ' + y.toString());
  }


}

class Singleton {
  static final Singleton _singleton = Singleton._internal();

  factory Singleton() => _singleton;

  Singleton._internal();// private constructor
}

class Horse implements Ridable{

  ride(){
    print('Riding a horse');
  }

}

class Bike implements Ridable{

  ride(){
    print('Riding a bike');
  }

}

abstract class Ridable{
  ride();
}


void main(){

  showOp1();

  showOp2();

  showOp3();

  showOp4();

  showFunc1();

  showFunc2();

  showFunc3();

  showClass1();

  showClass2();

  showClass3();

  showClass4();

  showList1();

  showList2();

  showSet1();

  showMap1();

  taskForTrainCall();

}