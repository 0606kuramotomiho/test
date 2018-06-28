
public class Test {

	public static void main(String[] args) {
		Robot robot1 = new Robot();
		robot1.name="aibo";
		System.out.println(robot1.name);
		robot1.talk();
		robot1.walk();
		robot1.run();

		Robot robot2 = new Robot();
		robot2.name="asimo";
		System.out.println(robot2.name);
		robot2.talk();
		robot2.walk();
		robot2.run();

		Robot robot3 = new Robot();
		robot3.name="pepper";
		System.out.println(robot3.name);
		robot3.talk();
		robot3.walk();
		robot3.run();


}
}