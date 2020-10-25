
/**
 * Write a description of Part1 here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */

import edu.duke.*;

public class Part1 {
    
    public int findStopCodon(String dna, int startIdx, String stopCodon){
        //found index CAREFUL: startIdx<dna.length()
        int index = 0;
        int currIdx = startIdx;
        while(index != -1){
            index = dna.indexOf(stopCodon, currIdx);
            if((index-startIdx) % 3 == 0) {
                return index;}
            currIdx = index+1;
        }
        
        return -1;
    }
    
    public String findGene(String dna, int currIdx){
        int startIdx = dna.indexOf("ATG", currIdx);
        int TAAindex = findStopCodon(dna, startIdx, "TAA");
        int TAGindex = findStopCodon(dna, startIdx, "TAG");
        int TGAindex = findStopCodon(dna, startIdx, "TGA");
        int[] indexes = {TAAindex, TAGindex, TGAindex};
        int min = dna.length();
        for (int i : indexes){
            if (i != -1 && i < min){
                min = i;}
        }
        if (startIdx == -1 || min == dna.length()) {
            return "";}
        return dna.substring(startIdx, min+3);
    }
    
    public StorageResource getAllGenes(String dna){
        StorageResource rs = new StorageResource();
        int currIdx = 0;
        while(true){
            String gen = findGene(dna, currIdx);
            if (gen.isEmpty()){
                break;}
            rs.add(gen);
            currIdx = dna.indexOf(gen, currIdx)+gen.length();
        }
        return rs;
    }
    
    public void printAllGenes(StorageResource rs){
        for (String gen : rs.data()){
            System.out.println(gen);
        }
    }
    
    public int countGenes(String dna){
        int count = 0;
        int currIdx = 0;
        while(true){
            String gen = findGene(dna, currIdx);
            if (gen.isEmpty()){
                break;}
            count++;
            currIdx = dna.indexOf(gen, currIdx)+gen.length();
        }
        return count;
    }
    
    public double cgRatio(String dna){
        int count = 0; 
        for (int i=0; i<dna.length(); i++){
            char ch = dna.charAt(i);
            if(ch == 'C' || ch == 'G') {count++;}
        }
        return (double) count/dna.length();
    }
    
    public int countCTG(String dna){
        int count = 0;
        int currIdx = 0;
        while(true){
            currIdx = dna.indexOf("CTG", currIdx);
            if(currIdx == -1) {break;}
            count++;
            currIdx++;
        }
        return count;
    }
    
    public void processGenes(StorageResource sr){
        int count = 0;
        for (String gen : sr.data()){
            if(gen.length() > 60) {
                //System.out.println(gen);
                count++;
            }
        }
        System.out.println("Longer than 9: " + count);
        count = 0;
        int longest = 0;
        for (String gen : sr.data()){
            if(cgRatio(gen) > 0.35) {
                //System.out.println(gen);
                count++;
            }
            if(gen.length() > longest) {
                longest = gen.length();}
        }
        System.out.println("C-G-ratio is higher than 0.35: " + count);
        System.out.println("Longest: " + longest);
    }
    
    public void testFindStopCodon(){
        String dna1 = "ACCACCACCTAA";
            if (findStopCodon(dna1, 0, "TAA") != 9){
                System.out.println("1 error");}
            if (findStopCodon(dna1, 1, "TAA") != -1){
                System.out.println("2 error");}
            if (findStopCodon(dna1, 0, "ATG") != -1){
                System.out.println("3 error");}
        String dna2 = "ACCCTAGACTAG";
            if (findStopCodon(dna2, 0, "TAG") != 9){
                System.out.println("4 error");}
            if (findStopCodon(dna2, 1, "TAG") != 4){
                System.out.println("5 error");} 
            if (findStopCodon(dna2, 2, "TAG") != -1){
                System.out.println("6 error");} 
        System.out.println("Test findStopCodon compleated!");
    }
    
    public void testFindGene(){
        String dna1 = "ACCACCACCACC";
            if (!findGene(dna1, 0).isEmpty()){
                System.out.println("1 error");}
        String dna2 = "ATGACCACCACC";
            if (!findGene(dna2, 0).isEmpty()){
                System.out.println("2 error");}
        String dna3 = "ATGTAGTAA";
            if (!findGene(dna3, 0).equals("ATGTAG")){
                System.out.println("3 error");}
            if (!findGene(dna3, 1).isEmpty()){
                System.out.println("4 error");}
        String dna4 = "ATGATATAATAA";
            if (!findGene(dna4, 0).equals("ATGATATAA")){
                System.out.println("5 error");}
        System.out.println("Test findGene compleated!");
    }
    
    public void testPrintAllGenes(){
        String dna1 = "ACCATGTAAATGTAGACCACCATGTAGTAAACC";
        printAllGenes(getAllGenes(dna1));
        System.out.println("");
        String dna2 = "ATGACATGTAGTAACACCTAA";
        printAllGenes(getAllGenes(dna2));
        System.out.println("Test printAllGenes compleated!");
    }
    
    public void testCountGenes(){
        String dna1 = "ACCATGTAAATGTAGACCACCATGTAGTAAACC";
        if (countGenes(dna1) != 3){
                System.out.println("1 error");}
        System.out.println("");
        String dna2 = "ATGACATGTAGTAACACCTAA";
        if (countGenes(dna2) != 1){
                System.out.println("2 error");}
        System.out.println("Test countGenes compleated!");
    }
    
    public void testCgRatio(){
        String dna1 = "ATGCCATAG";
        if (cgRatio(dna1) != 4.0/9){
                System.out.println("1 error");
            }
        System.out.println("Test cgRatio compleated!");
    }
    
    public void testCountCTG(){
        if (countCTG("CTGCTG") != 2){
                System.out.println("1 error");
        }
        if (countCTG("CTGAGCCTG") != 2){
                System.out.println("2 error");
        }
        if (countCTG("CTSFGCTGAS") != 1){
                System.out.println("3 error");
        }
        System.out.println("Test countCTG compleated!");
    }
    
    public void testProcessGenes(){
        FileResource fr = new FileResource("brca1line.fa");
        String dna = fr.asString();
        dna = dna.toUpperCase();
        processGenes(getAllGenes(dna));
        System.out.println("Test processGenes compleated!");
    }
    
    public void testAAA(){
        String dna = "AACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTAACCCTCACCCTTCTAACTGGACTCTGACCCTGATTGTTGAGGGCTGCAAAGAGGAAGAATTTTATTTACCGTCGCTGTGGCCCCGAGTTGTCCCAAAGCGAGGTAATGCCCGCAAGGTCTGTGCTGATCAGGACGCAGCTCTGCCTTCGGGGTGCCCCTGGACTGCCCGCCCGCCCGGGTCTGTGCTGAGGAGAACGCTGCTCCGCCTCCGCGGTACTCCGGACATATGTGCAGAGAAGAACGCAGCTGCGCCCTCGCCATGCTCTGCGAGTCTCTGCTGATGAGAACACAGCTTCACTTTCGCAAAGGCGCAGCGCCGGCGCAGGCGCGGAGGGGCGCGCAGCGCCGGCGCAGGCGCGGAGGGGCGCGCCCGAACCCGAACCCTAATGCCGTCATAAGAGCCCTAGGGAGACCTTAGGGAACAAGCATTAAACTGACACTCGATTCTGTAGCCGGCTCTGCCAAGAGACATGGCGTTGCGGTGATATGAGGGCAGGGGTCATGGAAGAAAGCCTTCTGGTTTTAGACCCACAGGAAGATCTGTGACGCGCTCTTGGGTAGAGCACACGTTGCTGGGCGTGCGCTTGAAAAGAGCCTAAGAAGAGGGGGCGTCTGGAAGGAACCGCAACGCCAAGGGAGGGTGTCCAGCCTTCCCGCTTCAACACCTGGACACATTCTGGAAAGTTTCCTAAGAAAGCCAGAAAAATAATTTAAAAAAAAATCCAGAGGCCAGACGGGCTAATGGGGCTTTACTGCGACTATCTGGCTTAATCCTCCAAACAACCTTGCCATACCAGCCCATCAGTCCTCTGAGACAGGTGAAGAACCTGAGGTCGCAGGAGGACACCCAGAAGGTCCAGAGAGAGCCTCCTAGGCCCCCCACCTCCCCCCGTGGCAGCTCCAACCCCAGCTTTTTCACTAGTAAGGCAGTCGGGCCCCTGGGCCACGCCCACTCCCCCAAGCGGGGAAGGAGCTTCGCGCTGCCGCTTGGCTGGGGACTGGGCACCGCCCTCCCGCGGCTCCTGAGCCGGCTGCCACCAGGGGGCGCGCCAGCGGTGTCCGGGAGCCTAGCGGCGCGTGTGCAGCGGCCAGTGCACCTGCTCTGGCCCTCGCCGCGGTCTCTGCCAGGACCCCGACGCCCAGCCTGACCCTGCCATTCAGCGGGGCTGCGGCTCCACGGCCTGCGACAGCAGCCCCACCTGGCATTCAGCGCGCTCCCGGGGGCAGAGGTCGCGGTGTCCTCACGCTGTGGTGCCGGCCTACAACCCCCACGCCGGGCTCGGGCCCGGCGGAGGAGGGCGATGCTCCCCGGGTAGGACAAACCGGTCACCTGGGCTGCGACGGCGGCTTAGGGGCAGAAGCGGCGGTCCAGGGCCGCCTGGCGCAGCAGCCTGTCCCAGCCGCGGTCCCTGCAGTCCCTCCCTGGCGGCTGCGCAGCCGTCCCACGACAGGGGCCATAAACTCTCCAGAGCGGAAAGCCGCACCCTGGTGGCCCGGCCCCGCGCCCAGACCTGGCGGCCGCTGGCACCTGACCCGCTGCATGGGTCTCCAGGGAGCTCGCTGCCCACCCGGCGCTGCAGGCTCGGCTCCCTCGTACACTCTCTGGTAGGTGCTAGGGACGACCCTATGGGCCAGCTTGCCATGCCCAGTCCCCAGGCCGCACCCACCCTGGCTCCCTGGGCTAGGGGACTGGCTCCTCCTGTGAGTCGTGGGTCTGGGAGGCAGGGGCGTTAGGGGAGAGTGAGGGACCGAGGGCAGCCCCTGCTGTGTGCACAGCGAGGTCGTGCACAGGCGTCTGTTGCAGAGCGTGCAGCTTCAGATGAGACTGGATTGCAGGTGGAGATGACTGTGGGTGCGCACACCTGGAGGTGAAGGGGAGGCAGCCTGTCTACCTGACCCATGAAATACAGGAGACTGTACCCCAGAAGCAGCGGGTTCACTGCTCCATTGATTAAGCAAGTCTGGGACACACATGTAGCTAAGCTGTGAGTTCTGTACCAGCGATCCCAACACCCACGCCCTCAGAAAGACACTGGTGTGGGGCCTGGGTGCTTGTCAGGCCTGAAAGTGGAGAGCACGGGCCAGAGACACTGAGTAGGGGGAACCCACCCTAGGGCTCTGAGGGACGACGATGTGGGGAGCTGGTGACAGAGCCTGAGCTGGCCCAATGTTGCACGGTGGGGACAGATTCGAGGTACAGTGGGGACTGGTGACCTCAGTTCCCAGTGTCCCAGCCTGGCCTCCCAGTCCACCCAGCAATTAGTGGGTGCTGCCCTGCAAAGACTCTGGGGGTGCCTCAGCCCTCCTCATCACACGTGACTGGTGACTTCTGTGTCCACCCGCACAATAAGAGGGATCTTCTCTCACTTTCAGGCAAGCCCAAGAAAGTCAGGGGCCTATGTGAGCCAAAGAGGAGAGAAGGTGATGCCTCAGCCCAGTGTTTCTGCCCCACCTCGCTTGTGGCCTTCGGAACTTGATTTGCACCGCAGGAAAATGGGCAATGAAAACCCCTCCCTAACTGGCTTCTCAGTCCACTCTGACCAGCCCACTGCACAGCGCCCACCCTGCAGCTCCAGGTACAGAGGCTGGGATGGCTCTGGGCTGACCTAAGGGCCTTCTGATGGCTCCAACCCTCGGGATGCCTCATGCTCACCCTTTGGCACCCACCTGACAGCTCAGCATCTCTGCTCTCTGCCATCCTCAATGCCTGCTCTAGACAAGCCCAAGTCCCCCAGGAGTGGCAGAGGGAACTGAGCCGAAAACTAAGTCTCGGCTCACTGAACCCCAAGTGGGCTGTCCAGCCTCGCCCTTCAGTTCACAACCCCAGGCAGGTTCCCTCCAGGGATGTGATCCCAGGGGCCACAGCAGCACATTCTGGCCTAACCTATCCACTATTTAAACAGTTACTGAAAAGGCCAGGATGGCCGTGGGCCCTGACATTAATCCCCTTTCTCTGTGAGGGGGCTGGGTTGGGTTTGCCATCCTGATGTCTTTGTGGAAAGAGCTGGCAGGTGAAGCAAGTCTCAGGGGCCAGCCATGGGACAAGGAACCTAGGACTGGCCTCTGCTGGAACCCTCTGAGGCCCCTGCGGACAGGAGGATCCAATGGAGGTCTAGCCACCCCTCCCAGGTTGGTGCTCACAGCCCCTCCCTGGCCCACTCCCTGCACACCTGCACCTGCTGGTCTCTGGGAGAGGAGCATCCATCCATCTTGTGCGCATAGCTTTCGGCTCCATTTTCATGAGGATGGTCTCCTTGGCAGAAATGCCCATTAGGGGATCCTGAGCCTGTGCTAGCTCTTCTCTAAGTGCCAAAGCCAGTGAGAGGGACTTGAAAACTCAAGACTTATTAACAGTATTTTCTGCATTTTGTGCTTTCAGGGTTGTTTTTTCCTTAAAATGTGTAAAAACAAACATTGAGATTTCTATCTTTTATATAATTTGGATTCTGTTATCACACGGACTTTTCCTGAAATTTATTTTTATGTATGTATATCAAACATTGAATTTCTGTTTTCTTCTTTACTGGAATTGTTAACTGTTTTATAGGCCAAATCTTTTAAAAAAAACACATCTCTCTAATTTCTCTAAACATTTCTAATTACATATATATTTACTATACCTAATACACTACTTTGGAATTCCTTGAGGCCTAAATGCATCGGGGTGCTCTGGTTTTGTTGTTGTTATTTCTGAATGACATTTACTTTGGTGCTCTTTATTTTGCGTATTTAAAACTATTAGATCGTGTGATTATATTTGACAGGTCTTAATTGACGCGCTGTTCAGCCCTTTGAGTTCGGTTGAGTTTTGGGTTGGAGAATTTTCTTCCACAAGGGATTGTCTTGGATTTTTCTGTTTCTCCCTCAATATCCACCTGGAAAACATTTCAATTAATTTATATTTACTTAAATATTTCTGTGCAAAAACTGTGTACAAAAGCCCCAAAGCATAATTTGTGCAGTTGAGCGCATGTTCTGTTGTTCAGCATTTATGGTGGTTGGTAGTGGAAAAGATTTTTAGAATATGTGGATTTTCGGGATATTCCCAGAAGCCCAGATAGCGACACTTTACCTTTGGAGGAATTACTTCTCAGAATATTGCACACAATCAATCGCCTTTGGAAGGAGCATATATCCCCAGCAAAAGCTCTGGTTTTTTGAAGTCTGTATTGTGTGTTACTTCCAGGAGAATATGCAATGATGACAATGTTATTAGATGATTCAAATATGAAGTGCTGTTATGCCAAACAATGAATCTTTGTGTTATACATTATGCCTAACTATAAATCTTTGTGTTATACATTTTAATGTCATTGGAGAGTACTCCTGTCTTCTTGGCATTATTGATAATTAGATTCTAATTGCTAATAAGTCAGAAAAATTAGGAACACCAAATTTCAGTTGTCTCAAAAGCACTCCTCTTATTAAATTTGGATGTTTACCTTTATCACATCAAAAGAAATATTGTTAGAAAGGTGTTTAATGTTTTGCAGATGGATAGATTACTGTTATTAGTTCTCATTTCATTGTTAATTTTTAAAACCATAAGGTTGGAAGTATCAATATGCCTTTCAATATACCTTAGTGGAATTTATTAAATTTTCATGGATGTCCTTTAGGGGGTTCAGGAAGTTATTTCTATTGCTAGATTTCTGGAAGATTTATCAGGAATGAGTGTCAGACATTGTCAGACGTCCATTGAAATCATCATGGTCTTTTCCTTTATTCTATTAATATGATGTATTACACTGATTGATTTTTAAATTTGTATTGGTAGGATAATTCCACTTGGTTATATTGTCTAACTTTTTTCTAATTTTCTTTCATTTTTATTACAGATGAGGCCTCACTCTGTCACCCAGGTTGGGGTGGAGTGGCACAGTCACAGCTCACTATAACCTCAAGCTCCTGGGCTCAAGTGATCCTGCCACCTCAGCCTCCTAAGTAGCTGGAACTACAGATGTGCACTGCCATGCCAGGCTTGTCTAACATTTTTATGTGTTGCTTCATCCAGTTTGCTAGAGTTTTTGGAGATTTCTGTCTTCATTCATGAGGGATAATAGTCTGCACTTTTATTTTCTTGTGATACTTTTGTCTGATTTGTTATCTGGGTAATACTGGCCTTGAAAATGAATTGATGTTTTCCTGCTTCTCTGCTTTGCAAGTGTTTGTGAAGGATTGGTTATTCATTAAGTGTTTAATAGAATTCACTAGTGAAGCTATGTGAGCCAGGGCTAGACTGATGAAGAGTTTTCATTAGTCTAATCTGTTTACTTGCTGTATAAGTACGCATATATTCTCTTTCTTCTTGATTTAATTTTACACTTTGTGTATAGCAGGGAATCTGTGTCTAATTTGTAGTATTTCATGCTTCTAGGTTTTCATGGCAGTTGAGATGTAAGAATAACAATAATGTTGGGAGAAGGAAGTTGTGGACAATCCATGAATATCCCAACATCTGTTGTAGGAAGGTTAAGATTACTTTTTTTTTTTTTGCTGTACTGAACTGAATACTCTTATTTATAATGTCAGACAAATGTAATGTTGTATATAAATAGAACTAGGAAAATGTGCCATTTGTCTTAGTATTTAATCAAGATGGAAGTCTGGGCCTACCTCCTCTCTTTTATTAATATGTAGACAGGACACCAACACAAATTAGAATGAAGACAAACAAAATGTTAGCAAATGAAGAATGGTATCAATTGGTTAAAATGTGATGAAATAGAGTGGTGAATATTTACATAGAATCCATGATGTGTTAGGTGCTATTTCAAGCTATTTGCACATATAGTTTTAATACCAATGACGTTAAAATGTATAACACAAAGATTCATATAAATAAAAATTACAACATTGTAAATAATATTAGGTGACACTAAAACTGTCATAGAAATACACATTTATATAAAACATAAAGTAACATGAAGTATTAAATTTTAGAAACTTTGATTACTAATCAGATGAACAACTGATTAGCCTTTTTATCCAGTAAAAAAGGCATACATATTATTTTCAAATTCCAGAGACAAATATTTTAAATATTGAAGTTGAAGACCTAAAAATGTGTCACTGACCTCATGGAAGTAGATATTCACTAGGTGATATTTTCTAGGCTCTCTGAAATTATATCAGAAAAATGTGAATTAGAATATAACCCATAAATAATATCTGGCCACATACAAAGTAATTGAAGATCAATTTAAATGGCTATTGGATTAAGAAATAGGGACTGAGGTAAATTTGCAGTGTCAGGGAGGATCTAAGGAGGAAGCATTGACACTGGAGCCCAAGGACCTGGGATCACAGAACAGATTCTACCAGTGCTAACTTACTGCTCCACAGAAAACATCAATTCTGCTCATGCGCAGGTACAATTCATCAAGAAAGGAATTACAACTTCAGAAATGTGTTCAAAATATATCCATACTTTGACATATTAATGAAGTAATCACATTCTACACATAACTACTCCATATGGAATACTGGGGAGGAGGTGTTCCAAATAAAGAGACTGAGGATTTCTCATGAGAACTCAGTGTCTGCTAGAAAATATCTAAGTAAAATATTTTACTTATGTGGAAAGTGTGGATGTTTGTGCATCAAAAGTTTCAAGAATCCCTAAAATTTACAATGGAGATGAGGAGAAAATATCAGAATTTCCCAGCACCAGAAATAAGGCAAGAAAAAATTCAGAGGGGTTGTAAATGTGAAAAGCCAATGGCTGGTCACACAGCAACATTGATAACCTTGTGCCTGGACAACTAGAATAAATACATAAACATACACATTGAAAATATTTCCAATATTAGATCTCCCTCATGTGAGAACTAAATTATAAAGATTGAAGCATAGAAGAAAATAAGCTACCAGAATAAATTTGATTACACATAAATTTCTGATATTGAAACTGTCACAAATGTTTAAGTTGGTAGTGGAAGACAAAGGACATATAATCTTGGGAGTCCTAAGGCCCTGCCCACTGCCAGTCCCTCCACACTACTACAGCTGATGCTTTCTGGAAATCACCACCTCCTGGCAGGAGCCCAACCAGCACAAATATAGAGCATTAAACCACCAAAGCTAAGGAGGCTCACAGAGTCTATTGCACCCTTCACCACCTCCACTGGAACAGGCGCTGGTATCCATGGCTCAGAGACCCAAAGATGGTTCACATCACAGGGCTCTATGCAGACAACCCCCAGTACCAGCCCAAAGCCACGTAGACCTGCTGGGTGGCTAGACCCAGAAGAGAGACAACAATCAATGCACTTTGGCTTACAGGAAGCCATGCCCATAGGAAAAAGGGGAGAGTACTACGTCAAGGGAACACCCCGTGGGATGAAAGAGTCTGAACAACAGTCTTCAGCCCTAGACCTTTCCTCTGACAGAGTCTACCAAAATGAGAAGGAACCAGAAAACCAACCCTGGTAATCTGACAAAACAAGAATCTTCAACACCCCCCAAAAAATCACACCAGTTCATCACCAATGGATCCAAACAAAGAAGAAATCACTGATTCATCTAAAAAAAAATTCAGGTTAGTTATTAAGCTAATCAGGGAGGGGCCAGAGAAAGATGAAGCCCAATGCAAGAAAATCCAAAAAATGATACAATACGTGAAGGGAGAATTATTCAAGGAAATAGATAGCTTAAATAAAAAAATAAAAAATCAGGAAACTTTGGACGTACTTTTAGAAATGTGAAATGCTCTGGAAAGTCTCAGCAATAGAATTGAACAAGTAGAAGAAAGAAATTCAGAATTCGAAGACAAGGTCTTTGATTTAACCCAATCCAATAAAGACAAAGAAAAAAGAATAAGAAAATATGAGCAAAGTCTCCAAGGAGTCTGGCATTCTGTTAAATGATGAAACCTAACACTAATTGGTGTACCTGAGGAAGAAGTGAATTCTAAAAGCCAGGAAAACATATTTGGGAGAATAATCTAGGAAAACTTCCATGGCCTTGTGAGAGACCTAGACATCCAAATACAAGAACCACAAATAACACCTGGGAAATTCATCACAAAAAGATCTTAGCCTAGGCACATTGTCATTAGGTTATCCAAAGTTAAGACAAAGGAAAGAATCTTAAGAGCTGTGAGACAGAAGCACTAGGTAACCTATAAAGGAAAACCTGTCAAATTAACAGCAGATTTCACAGCAGGAACCTTACAAGCTAGATGGGATTGGGGCCCTTTCTTCAGCCTCCTCAAACAAAACAATTATCAGCCAAGAATTTTGTATCCAGCAAAACTAAACATCATATATGAAGGAAAGATACAGTCATTTTCAGACAAACAAATGCTGACAGAATTTGCCATTACCAAGCCAGGACTCTAAGAACTGCTAAAAGGAGCTCTAAATCATGAAACAAATCCTGGAAACACATCAAAACAGAACTTCATTAACGCATAAATCACACAGGACCTATAAAACAAAAATACAAGTTAAAAAACAAAAACAAAGTACAGAGGCAACAAAGAGCATGATGAAAGCAATGGTACCTCACTTTTTAATACTAATGTTGGTTGTAAATGGCTTAAATGCTCCACTTACAAGATACAGAACCACAGAATGGATAACAACTCACCAACTAACTATCTGCTGCCTTCAGGAGACTCACCTAACACATAACGACTTACATAAACTTAAGGAAAGTGGTAGAAAAAGGCATTTCATGCAAATGGACACCAAAAGCAAGCAGCAGTAACTATTCTCATATGAGACAAAACAAACTTTAAAGCAACAGTAGCTAAAAGAGACAAAGAGAGACAGTATATCATCTGTCACCTGACAGTCTCATCCAACAGAAAAATATGACAATCCTAAACATATGTGAACCTAACACTGGAGCTCCCAAATTTATAAAACAATTACTAGTAGACATAAGAAATAAGATAGACAGCAACACAATAATAGTGGGGGACTTCAATACTCCACTGACAGCACTAGACAGGTCATCAAGACAGAAAGTCAACAAAGAAACAATGGATTTAAACTATACTTTGGAACAAATGGACTTAACAGATATATATAGAACATTTCATCCAACAACCACAGAATACACATTCTATTCAACAGCACATGGAATTTTCTCCAAGATAGACCATATGATAGGCCATAAAATGAGTCTCAATAAATTTAAGAAAATTGAAATTGTATCACGCACTCTCTCACATCACAATGGAATAAAACTGAAAATCAACTCCAAAAGGAATCTTCGAAACCATGCAAATACATGGAAATTAAATAACCTGCTCCTGAATGAGCATTGGGTGAAAAACGAAATCAAGATGGAAATGTAAAAAATTTCTTCGAACTGGATGACACAACCTATCAAGACCTCTGGGATACAGCAAAGGCAGTGCTAAGAGGAAAGTTTATAGCACTAAACACCTACGTCGAAAAGTCTGAAAGAGCACAGACAATCTAAGTTCACATCTCAGGGAACTAGAGAAGGAGGAACAAGCCAAACCCAATCCCAGCAAACAAAGGAAATAACCAAGATCAGAGCAGAACTAAATGAAATTGACACAACAACAACAACAACAAAAATACAAAACATAAATAAAACAAAAATTTGGTTATTTGAAAAGATA";   
        System.out.println("How many genes: " + countGenes(dna));
        processGenes(getAllGenes(dna));
        System.out.println("How many CTG: " + countCTG(dna));
    }
}