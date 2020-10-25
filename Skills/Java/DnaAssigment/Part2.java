
/**
 * Write a description of Part2 here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Part2 {
    public int howMany(String stringa, String stringb){
        int count = 0;
        int currIdx = 0;
        while(currIdx!=-1){
            currIdx = stringb.indexOf(stringa, currIdx);
            if(currIdx == -1){
                return count;}
            currIdx += stringa.length();
            if(stringb.length() < currIdx){
                return count;}
            count++;
        }
        return count;
    }
    
    public void testHowMany(){
        if (howMany("GAA", "ATGAACGAATTGAATC") != 3){
            System.out.println("1 error"+howMany("GAA", "ATGAACTTGAATC"));}
        if (howMany("AA", "ATAAAA") != 2){
            System.out.println("2 error");}
        if (howMany("A", "ATAAAA") != 5){
            System.out.println("3 error");}
        System.out.println("Test howMany compleated!");
    }
    
    public String mystery(String dna) {
        int pos = dna.indexOf("T");
        int count = 0;
        int startPos = 0;
        String newDna = "";
        if (pos == -1) {
            return dna;
        }
        while (count < 3) {
            count += 1;
            newDna = newDna + dna.substring(startPos,pos);
            startPos = pos+1;
            pos = dna.indexOf("T", startPos);
            if (pos == -1) {
                break;
            }
        }
        newDna = newDna + dna.substring(startPos);
        return newDna;
    }
}
