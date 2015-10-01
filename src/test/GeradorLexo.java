package test;

import java.io.File;

public class GeradorLexo {
    
    public static void main(String[] args) {
        String file = new File("").getAbsolutePath().replace("\\", "//");        
        
        String patch = file + "//src//test//lexo";        
        
        File f = new File(patch);
        
        jflex.Main.generate(f);
    }
}
