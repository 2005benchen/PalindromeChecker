public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word){
  String One = new String();
  for(int i = 0; i < word.length(); i = i + 1){
    if(Character.isLetter(word.charAt(i)) == true)
      One = One + word.charAt(i);
  }
  One = One.toLowerCase();
  
  String Two = new String();
  for(int i = word.length() - 1; i >= 0; i = i - 1){
    if(Character.isLetter(word.charAt(i)) == true)
      Two = Two + word.charAt(i);
  }
  Two = Two.toLowerCase();
  
  if(One.equals(Two)){
    return true;
  }
  else{
    return false;
  }
}
  
public String reverse(String str){
  String output = new String();
  for(int i = str.length() - 1; i >= 0; i--){
    output = output + str.charAt(i);
  }
  return output;
}

