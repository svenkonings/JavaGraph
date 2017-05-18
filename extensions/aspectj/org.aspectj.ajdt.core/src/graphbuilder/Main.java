package graphbuilder;
import org.aspectj.org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;

public class Main {

	private static boolean createSystemUnit = false;
	private static boolean useTypes = true;
	private static String inputFileName = "@config.lst";
	private static String outputFileName = "aj.gps/start.gst";
	
	public void runMain(CompilationUnitDeclaration[] units) {
		
		GraphBuilder gb = GraphBuilder.instance(useTypes);
		
		for (CompilationUnitDeclaration unit : units) {
			unit.traverse(gb, unit.scope);
		}
		
		if (createSystemUnit) {
			gb.constructSystemCompilationUnit();
		}
		System.out.println("Saving result in file: " + outputFileName);
		gb.writeGraph(outputFileName);
	}
	
	public void printUsage() {
		String msg =
		"Usage: <source file | @argfile> <output file> [options]\n\n" +
		"Options:\n" +
		"  -f\tflatten the class hierarchy (default is to use types)\n" +
		"  -s\tcreate additional system unit with primitive types (default" +
		" is to not create)\n\n";
		System.out.println(msg);
	}
	
	public void parseArgs(String[] args) throws IllegalArgumentException {
		if (args.length < 2 || args.length > 4) {
			throw new IllegalArgumentException();
		}
		inputFileName = args[0];
		outputFileName = args[1];
		for (int i = 2; i < args.length; i++) {
			if ("-f".equals(args[i])) {
				useTypes = false;
			}
			if ("-s".equals(args[i])) {
				createSystemUnit = true;
			}
		}
	}
	
	public String[] getCompilerArgs() {
		String[] result = new String[2];
		result[0] = inputFileName;
		result[1] = "-1.6";
		return result;
	}
}
