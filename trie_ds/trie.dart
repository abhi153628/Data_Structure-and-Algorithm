

class Trinode{
  Map<String,Trinode>character={};
  bool isendofwords=false;


}
class Trio{Trinode ?root=Trinode();
  
  insert(String word){
   Trinode? temp=root;
    
    for (var i = 0; i < word.length; i++) {
      String char=word[i];
      temp?.character.putIfAbsent(char, () => Trinode());
      temp=temp?.character[char];
      
    }
    temp?.isendofwords=true;

  }
   ssearch(String word){
    Trinode? temp=root;
    for (var char in word.split('')) {
      if(!temp!.character.containsKey(char)){
        return false;


      }
      temp=temp.character[char];
      
    }
    return temp?.isendofwords;
    
  }
}
void main(){
  Trio kilo=Trio();
  kilo.insert('a');
  print(kilo.ssearch('b'));

}