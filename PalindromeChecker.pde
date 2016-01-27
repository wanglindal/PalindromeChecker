public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
   word = removeNonLetters(word);
  for(int i=0; i<word.length() ; i++)
  {
   if(word.charAt(i) != word.charAt(word.length()-(i+1)))
    {

    return false;
    }
  }//your code here
  return true;
}
public String removeNonLetters(String word)
{
  word = word.toLowerCase();
  String none = new String();
  for ( int x=0; x< word.length (); x++)
  {
    if(Character.isLetter(word.charAt(x))== true)
    {
      none = none + word.charAt(x);
    }
  }

  return none;
}
