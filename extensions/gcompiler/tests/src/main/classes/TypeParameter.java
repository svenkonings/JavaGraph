package main.classes;

public class TypeParameter {

	static <T extends Exception & Runnable> void method(int i) {
		T e1 = null;
		T e2 = e1;
	}
	
}
