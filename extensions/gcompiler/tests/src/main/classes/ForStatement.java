package main.classes;

public class ForStatement {

	public void method() {
		int i, k;
		for (i = 0, k = i; i < 10 && k < i; i+=k, k=0) {
			int j = i;
		}
	}
	
}
