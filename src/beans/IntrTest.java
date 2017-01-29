package beans;

public interface IntrTest {
	default void m() {
		System.out.println("aa");
	}
	
	void a();
}
