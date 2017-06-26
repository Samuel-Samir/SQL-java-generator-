import java.io.BufferedWriter;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

import java.util.ArrayList;




public class Main {
	
	public static String deleteQouma (String str )
	{
		int qomaIdex = str.length()-3 ;
		String result = str.substring(0, qomaIdex) + str.substring(qomaIdex+1)+System.lineSeparator();

		return result;
	}

	public static void writeOutpoutToFile(ArrayList <String> myList ,String fileName) throws IOException {
		FileOutputStream outFile = null;
		BufferedWriter bufferWriter = null;
		try {

			bufferWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileName), "UTF-8"));
			
			for(int i =0 ;i<myList.size() ;i++)
			{
				bufferWriter.write(myList.get(i));
				bufferWriter.newLine();

			}
		} finally {
			bufferWriter.close();
			bufferWriter.close();
		}

		System.out.println("Done " + fileName);
	}

	public static void main(String[] args) throws IOException {
		
		/*
		  Clinic clinic = new Clinic(1);
		  clinic.generateScript();
		*/
		
		Branch branch = new Branch(1);
		branch.generateScript();
		
		/*
		BranchHospital branch = new  BranchHospital(21);
		branch.generateScript();
		Hospital hospital = new Hospital(1);
		hospital.generateScript();
		*/
	/*
		BranchLab branchL = new BranchLab(41) ;
		branchL.generateScript();
		
		Lab lab = new Lab(1);
		lab.generateScript();*/
		/*
		BranchPharmacy branchL = new BranchPharmacy(61) ;
		branchL.generateScript();*/
		/*Pharmacy pharmacy = new Pharmacy(1);
		pharmacy.generateScript();*/
 


	}

}
