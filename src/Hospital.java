import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Row;

public class Hospital {

	private int startId;
	private String fileNameRead = "files//hospitaldata.xls";
	private String fileNameOut = "generatedScript//HospitalInsertion.sql";
	private ArrayList<String> resultArrayList;

	public Hospital(int stardId) {
		this.startId = stardId;
		resultArrayList = new ArrayList<>();
	}

	public void generateScript() throws IOException {

		String setIdentityOn = "SET IDENTITY_INSERT hospital ON";
		String setIdentityOff = "SET IDENTITY_INSERT hospital OFF";
		String query = "insert into hospital (hospitalId , hospitalNameEN , hospitalNameAR ,isGovernment ,hospitalEmergency )";
		String paramters = "";

		resultArrayList.add(setIdentityOn);
		FileInputStream fileInputStream = new FileInputStream(fileNameRead);
		HSSFWorkbook wb = new HSSFWorkbook(fileInputStream);
		HSSFSheet sheet = wb.getSheetAt(0);
		FormulaEvaluator formulaEvaluator = wb.getCreationHelper().createFormulaEvaluator();
		
		for (Row row : sheet) {
			paramters += "values ( ";
			paramters += String.valueOf(startId) + " , ";
			startId++;
			for (Cell cell : row) {

				switch (formulaEvaluator.evaluateInCell(cell).getCellType()) {
				case Cell.CELL_TYPE_NUMERIC:

					paramters += String.valueOf(cell.getNumericCellValue());

					break;
				case Cell.CELL_TYPE_STRING:

					paramters += "N'" + cell.getStringCellValue() + "'";

					break;
				}
				paramters += " , ";
			}

			String fullQuary = query + System.lineSeparator() + paramters + ")";
			fullQuary = Main.deleteQouma(fullQuary);
			resultArrayList.add(fullQuary);
			fullQuary ="";
			paramters="";
		}
		
		resultArrayList.add(setIdentityOff);
		
		Main.writeOutpoutToFile(resultArrayList, fileNameOut);
		
		
	}

}

