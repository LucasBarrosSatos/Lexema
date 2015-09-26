package test;

import java.io.File;

public class GerarFile {
	private String vfinal;
	
	public GerarFile() {
		
	}
	
	public String File(){
		File file = new File("").getAbsoluteFile();
		vfinal = file.toString().replace("\\", "//") + "\\src\\test\\Entrada.txt".replace("\\", "//");
		return vfinal;
	}
}
