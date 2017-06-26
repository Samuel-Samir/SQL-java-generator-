import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Row;

public class BranchPharmacy {

	private int startId;
	private String fileNameRead = "files//branchdata.xls";
	private String fileNameOut = "generatedScript//pharmacyBranchInsertion.sql";
	private ArrayList<String> resultArrayList;
	private ArrayList<String> basedArrayList;
	private ArrayList<String> arabicArrayList;
	private ArrayList<String> englishArrayList;
	int baseCount = 7;
	int englishCount = 4;
	int arabicCount = 4;

	public BranchPharmacy(int stardId) {
		this.startId = stardId;
		resultArrayList = new ArrayList<>();
		basedArrayList = new ArrayList<>();
		arabicArrayList = new ArrayList<>();
		englishArrayList = new ArrayList<>();
	}

	public void generateScript() throws IOException {

		int foreignKeyId = 1;
		int countstep=1;
		String placeTybe = "'pharmacy'";
		String query = "  insert into branch(branch.language,branchId ,branchType , doctorId , clinicId , hospitalId ,labId ,pharmacyId , branchGovernment,branchDistrict,branchBuildingNum,branchFloorNum,branchApartmentNum,branchPhoneNum,branchLatitude,branchLongitude,branchRate,branchStreetName,branchAddressNotes,appointments,keywords)";

		String paramtersEnglish = "";
		String paramtersArabic = "";

		FileInputStream fileInputStream = new FileInputStream(fileNameRead);
		HSSFWorkbook wb = new HSSFWorkbook(fileInputStream);
		HSSFSheet sheet = wb.getSheetAt(0);
		FormulaEvaluator formulaEvaluator = wb.getCreationHelper().createFormulaEvaluator();

		for (Row row : sheet) {
			
			paramtersEnglish += "values ( 0 ," + startId +","+ placeTybe + " , null ,  null , null ,null , "+foreignKeyId+" ,'Giza' ,'Dokki', ";
			startId++;
			paramtersArabic += "values ( 1 ," + startId +","+ placeTybe + " , null ,  null , null ,null , "+foreignKeyId+" ,N'الجيزة' ,N'الدقي' ,  ";
			startId++;

			
			for (Cell cell : row) {

				switch (formulaEvaluator.evaluateInCell(cell).getCellType()) {
				case Cell.CELL_TYPE_NUMERIC:
					String value = String.valueOf(cell.getNumericCellValue()) ;
					if (countstep <= baseCount)
					{
						basedArrayList.add(value);
						//System.out.println("base "+countstep+ " " + value);
					}
					else if (countstep > baseCount && countstep <= (baseCount + englishCount))
					{
						englishArrayList.add(value);
						//System.out.println("en "+countstep+ " " + value);
					}
					else
					{
						arabicArrayList.add(value);
						//System.out.println("ar "+countstep+ " " + value);
					}

					break;
				case Cell.CELL_TYPE_STRING:

					String value2 = "N'" + cell.getStringCellValue() + "' , ";
					if (countstep <= baseCount)
					{
						basedArrayList.add(value2);
						//System.out.println("base "+countstep+ " " + value2);
					}
					else if (countstep > baseCount && countstep <= (baseCount + englishCount))
					{
						englishArrayList.add(value2);
						//System.out.println("en "+countstep+ " " + value2);
					}
					else
					{
						arabicArrayList.add(value2);
						//System.out.println("ar "+countstep+ " " + value2);
					}

					break;
				}
				countstep++;
			}
			String englishFullQuary =query+System.lineSeparator()+paramtersEnglish ;
			String arabicFullQuary =query+System.lineSeparator()+paramtersArabic ;

			for(int i = 0 ;i< baseCount ;i++)
			{  
				String val="" ;
				if (i<6)
				{
					 val += "'"+basedArrayList.get(i) +" ' ,";	
				}
				else 
					val+=basedArrayList.get(i)+" , ";
				
				englishFullQuary+=val;
				arabicFullQuary+=val;
			}
			for(int i = 0 ;i< englishCount ;i++)
			{
				englishFullQuary+=englishArrayList.get(i);
				arabicFullQuary+=arabicArrayList.get(i);
			}
			
			basedArrayList.clear();
			arabicArrayList.clear();
			englishArrayList.clear();
			englishFullQuary +=  ")";
			englishFullQuary = Main.deleteQouma(englishFullQuary);
			arabicFullQuary += ")";
			arabicFullQuary=Main.deleteQouma(arabicFullQuary);
            resultArrayList.add(englishFullQuary);
            resultArrayList.add(arabicFullQuary);
            paramtersArabic="";
            paramtersEnglish="";
			foreignKeyId++;
			countstep=1;

			
		}

		Main.writeOutpoutToFile(resultArrayList, fileNameOut);

	}

}
