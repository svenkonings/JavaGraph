package main.classes;

public class QualifiedAllocationExpression {

	int i;
	
/*	public class C1 {
		QualifiedAllocationExpression x = QualifiedAllocationExpression.this;
		C2 y = x.new C2();
	}
	
	public class C2 {
		
	}*/
	
	Object x = new Object(){void m(){QualifiedAllocationExpression.this.i=1;}};
	
}
