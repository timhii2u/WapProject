package data;

import app.Alphabet;
import app.Numbers;
import app.Numerals;

import java.util.ArrayList;
import java.util.List;

public class Mock {

    private ArrayList<Alphabet> alphabetList = new ArrayList<>();
    private ArrayList<Numbers> numbersList = new ArrayList<>();
    private ArrayList<Numerals> numbers = new ArrayList<>();


    public ArrayList<Alphabet> retrieveAlphabetList() {

        alphabetList.add(new Alphabet("a"));
        alphabetList.add(new Alphabet("b"));
        alphabetList.add(new Alphabet("c"));
        alphabetList.add(new Alphabet("d"));
        alphabetList.add(new Alphabet("e"));
        alphabetList.add(new Alphabet("f"));
        alphabetList.add(new Alphabet("g"));
        alphabetList.add(new Alphabet("h"));
        alphabetList.add(new Alphabet("i"));
        alphabetList.add(new Alphabet("j"));
        alphabetList.add(new Alphabet("k"));
        alphabetList.add(new Alphabet("l"));
        alphabetList.add(new Alphabet("m"));
        alphabetList.add(new Alphabet("n"));
        alphabetList.add(new Alphabet("o"));
        alphabetList.add(new Alphabet("p"));
        alphabetList.add(new Alphabet("q"));
        alphabetList.add(new Alphabet("r"));
        alphabetList.add(new Alphabet("s"));
        alphabetList.add(new Alphabet("t"));
        alphabetList.add(new Alphabet("u"));
        alphabetList.add(new Alphabet("v"));
        alphabetList.add(new Alphabet("w"));
        alphabetList.add(new Alphabet("x"));
        alphabetList.add(new Alphabet("y"));
        alphabetList.add(new Alphabet("z"));

        return alphabetList;
    }
    
    
    public ArrayList<Numbers> retrieveNumbersList() {

        numbersList.add(new Numbers("0"));
        numbersList.add(new Numbers("1"));
        numbersList.add(new Numbers("2"));
        numbersList.add(new Numbers("3"));
        numbersList.add(new Numbers("4"));
        numbersList.add(new Numbers("5"));
        numbersList.add(new Numbers("6"));
        numbersList.add(new Numbers("7"));
        numbersList.add(new Numbers("8"));
        numbersList.add(new Numbers("9"));

        return numbersList;
    }
    
    public List<Numerals> numberList(){
    	numbers.add(new Numerals(1,"One"));
    	numbers.add(new Numerals(2,"Two"));
    	numbers.add(new Numerals(3,"Three"));
    	numbers.add(new Numerals(4,"Four"));
    	numbers.add(new Numerals(5,"Five"));
    	numbers.add(new Numerals(6,"SIx"));
    	numbers.add(new Numerals(7,"Seven"));
    	numbers.add(new Numerals(8,"Eight"));
    	numbers.add(new Numerals(9,"Nine"));
    	numbers.add(new Numerals(10,"Ten"));
    	numbers.add(new Numerals(20,"Twenty"));
    	numbers.add(new Numerals(30,"Thirty"));
    	numbers.add(new Numerals(40,"Fourty"));
    	numbers.add(new Numerals(50,"Fifty"));
    	numbers.add(new Numerals(60,"Sixty"));
    	numbers.add(new Numerals(70,"Seventy"));
    	numbers.add(new Numerals(80,"Eighty"));
    	numbers.add(new Numerals(90,"Ninety"));
    	numbers.add(new Numerals(100,"One Hundred"));
    	numbers.add(new Numerals(1000,"One Thousand"));
    	
    	return numbers;
    }
    
}
