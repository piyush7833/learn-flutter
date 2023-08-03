import 'dart:io';
void main() {
  /*
  //read and write
  print('Welcome to Dart');
  stdout.write('Enter your name ');
  var name=stdin.readLineSync();
  stdout.write("Welcome $name");
   */

  /* lec 18-21
  //declaration of variable
  //int //big int //double //boolean  //string
  int a;
  a=5;//assign
  print(a);
  a=7;
  print(a);
  String nam="ps"; //inline declaration
  print(nam);

  //BigInt
  BigInt longvalue;
  longvalue=BigInt.parse('1234567890123567676798787897893');
  print(longvalue);

  //double for decimal values //num for both integer and decimal value
  num n=3.7;
  n=3;

  //boolean
  bool isActive=false;
  //creating object of class
  var ps=new Human();  //having new key word is not necessary  //it is for prev version of  dart

*/


 /* //lec 22
   //var and dynamic
  //var
  var subject ="maths"; //not need to assign data type initially //the first value which we assign is its data type
  //dynamic //at initialisation not assign a value later on assign a value so that any data type can be assigned to that var
  var rollno;
  dynamic roll; //rollno and roll act in similar way
  rollno=35;
  rollno="35";
  rollno=false;
  */

  /*
  //lec 23 //Functions //simialr to c++
  void myfunc(){ //we can define function outside or inside main both
    print("function without class");
  }
  myfunc();
  var n=Human();
  n.printName("Function with class");
  var s=Human();
  print(s.add(7,8));
   */
  /*
  // lec 24 //list/array  //we can store same or multiple type of data in list //similar to python  //its size is dynamic like vector in c++
  var listName=[10,20,"30"];  //we can specify the data type of list tooo
  listName.add(true);
  listName.insert(2, "me");  //to add at particular index
  var list2=["1","2","3"];
  listName.insertAll(3, list2); //to insert an iterable at particular index
  listName.addAll(list2);
  listName[0]=7833; //updation as per index
  listName.replaceRange(8, 11, [8,9,10]);  //replacing a range
  print("$listName");
  listName.removeRange(0, 3);//removing a range
  listName.removeLast();//removes last index
  listName.remove(true); //remove an object by searching
  listName.removeAt(2);//remove at index
  print("$listName");
  print("Length : ${listName.length}");
  print("Reversed list ${listName.reversed}");
  print("First :${listName.first}");
  print("Last : ${listName.last}");
  print("isEmpty :${listName.isEmpty}");
  print("Element at index :${listName.elementAt(2)}");
   */

  /* lec 25 //maps and hashmaps //similar to c++
    //key should be unique
   var map_name={
     'key1':'value1',
     'key2':'value10',
     'key3':2,
     'key4':true,
     'key6':2,
   };
   map_name['key5']=10;//over riding //updating //inserting new value in map
   print(map_name);
   print(map_name['key2']); //fetching specific key  //if that value is not present then it will return null

  //another way of creating map
  var map2=Map();
  map2['key1']="hello";
  print(map2);
  //map functions
   print('map functions');
  print(map_name.isEmpty);
  print(map_name.length);
  print(map_name.isNotEmpty);
  print(map_name.keys);
  print(map_name.values);
  print(map_name.containsKey('key3'));
  print(map_name.containsValue(10));
  print(map_name.remove('key2'));
   */


  /*
  // lec 26 //final and const
  //final //we can not re assign any value to final once its value is assigned
  final first=10; //we can initialise final without using data type and with data type both
  final String n="ps";
  final third;
  third=3;

  //const //with declaration we have to assign values //we can not assign value after declaration while in final we can do it  //we can not re assign a value in const similar to final
  const fourth=4;

  //final in list
  final fifth=[1,2,3,4];
  // fifth=[6,7,8,9]; //we can not re assign values to final or const list
  fifth.add(7);//but we can use list functions like add remove and other updation function with final but nor with const
  print(fifth);
  const six=[1,2,3,4,5];
  print(six);
  // six.add(6); //it will give error at run time
   */



  // /* lec 27 // conditional programming
  // print('Everything from syntax to logic is same as c++');
   // */

  // /*  //lec 28 //loops //everything from syntax to logic is similar to c++
  for(int i=0;i<5;i++){
    print('$i for');
  }
  int a=10;
while(a<12) {
  print('$a while');
  a++;
}
  do{
    print('$a dowhile');
    a++;
  }while(a<10);

   // */
}

//class and objects  //similar to c++
class Human{

  void printName(String name){
    print(name);
  }
  int add(int a,int b){
    return a+b;
  }
  //constructor  //we can create all type of constructor and also do constructor/function overloading like c++
  Human();
}