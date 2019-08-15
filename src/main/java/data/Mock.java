package data;

import app.Alphabet;
import app.Numbers;

import java.util.ArrayList;

public class Mock {

    private ArrayList<Alphabet> alphabetList = new ArrayList<>();
    private ArrayList<Numbers> numbersList = new ArrayList<>();


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
}
