import 'package:dart_assignment/dart_assignment.dart' as dart_assignment;

void main(List<String> arguments) {
  // q1,
  print(swapNumber(2));
  //q2
  print(checkLetters(" toosmallword"));
  print(checkLetters("abcdefghijklmNOPQRSTUVWXYZ"));
  print(checkLetters("The quick brown fox jumps over three meter and better than a lazy dog"));
  //q3 
  print(checkCase("DARt"));

  //q4 
  //countLetters(" mississippi");
  countLetters(" successful");
  countLetters(" irresistibility");
  countLettersList("mississippi");


}
int swapNumber(int number){

  if(number==0||number ==1){
    int swapnum1 = number;
    if(swapnum1==1){
      int swapnum1 =0;
      return swapnum1;
    }else{
      int swapnum1 =1;
      return swapnum1;
    }
  } return 0;

}

bool checkLetters(String str) {
  
  // String newstr = str.toLowerCase().replaceAll(' ', '');
  
  // for (int i = 0; i < 26; i++) {
    
  //   String letter_str = String.fromCharCode(97 + i);
  //   if (!newstr.contains(letter_str)) {
  //     return false; 
  //   }
  // }
  // return true;
  String toLowerCase= str.toLowerCase();
  List list = str.split("");
  Set set = list.toSet(); // تحذف المتكرر
  set.removeAll({" "});
  return set.length ==26;
}

String checkCase (String s){
  int sum_upper = 0;
  int sum_lower = 0;

  for (int i = 0; i < s.length; i++) {
    int ascii = s.codeUnitAt(i); 
    if (ascii >= 65 && ascii <= 90) {
      sum_upper++; 
    } else {
      sum_lower++; 
    }
  }
  if(sum_lower>=sum_upper){
    s=s.toLowerCase();
  }else{
    s=s.toUpperCase();
  }
  return s;
}



void countLetters(String str) {
  Map<String, int> map ={};
  str=str.replaceAll(' ', '');
  for (int i = 0; i < str.length; i++) {
    String letter = str[i];
      if (map.containsKey(letter)) {
        map[letter] = map[letter]!+ 1;
      } else {
        map[letter] = 1;
      }
    }

  print(map);
}
void countLettersList(String str){
  List list = List.generate(26, (item)=> item =0); // item is the name , and its an int 
  for( int i =0 ; i < str.length; i++){
    String letter = str[i];
    int index = letter.codeUnitAt(0)-97;
    list [index] ++;
  }

  for(int i =0 ; i <list.length ; i++){
    int index = list[i];
    String letter = String.fromCharCode(i+97);
  // }if(){
  //     print(list);

   }
}





