

void main(){
  print(reverseString('car'));

}
reverseString(String word){
  return helper1(word);


}

helper1(String word) {
  if(word.length -1 <1){
    return word;
  }
  else{
    return helper1(word.substring(1)) + word[0];
  }
}