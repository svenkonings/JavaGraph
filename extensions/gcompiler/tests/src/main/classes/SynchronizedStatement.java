package main.classes;

public class SynchronizedStatement {

	Object o;
	{
		synchronized (o) {
		o.notify();
		};
	}
	
}
