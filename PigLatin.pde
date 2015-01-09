import java.util.*;

	
	//String[] word = new String[50];

public void setup() {
String lines[] = loadStrings("words.txt");

	for (int i = 0 ; i < lines.length; i++) 
	{
		//ArrayList <Integer> spaces = new ArrayList <Integer>();
		/*for(int temp : findSpaces(lines[i]))
		{
			spaces.add(temp);
		}
		for(int j = 0; j < ; j++)
		{
			
			word[j] = lines[i].substring(spaces[j],spaces[j+1]);
			println(word[j]);
		}*/
System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
}

public int findFirstVowel(String sWord)
{
		for(int i = 0; i < sWord.length(); i++)
		{
			if(sWord.substring(i,i+1).equals("a") ||
				sWord.substring(i,i+1).equals("e") ||
				sWord.substring(i,i+1).equals("i") ||
				sWord.substring(i,i+1).equals("o") ||
				sWord.substring(i,i+1).equals("u"))
			{
				return i;
			}
		}

	return -1;
}
/*
public int[] findSpaces(String phrase)
{
	int a = 1;
	int[] pos = new int[7];
	pos[0] = 0;
for(int i = 0; i < phrase.length(); i++)
{
	if(phrase.substring(i,i+1).equals(" "))
	{
		pos[a] = i+1;
		a++;
	}
}
pos[a] = phrase.length();
return pos;
}
*/
public String pigLatin(String sWord)
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else
	{
		if(findFirstVowel(sWord) == 0)
		{
			return sWord + "way";
		}
		else if(sWord.substring(0,2).equals("qu"))
		{
			return sWord.substring(2,sWord.length()) + "quay";
		}
		else
		{
			return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
		}
	}
}
