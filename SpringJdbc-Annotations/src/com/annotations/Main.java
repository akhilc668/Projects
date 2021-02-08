package com.annotations;

import java.util.Scanner;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
ApplicationContext cont=new AnnotationConfigApplicationContext(JdbcConfig.class);
Operations op=(Operations) cont.getBean("operations");
Scanner sc=new Scanner(System.in);
System.out.println("1.Insert 2.Update 3.Delete 4.Display 5.Exit");
int option=sc.nextInt();
if(option==1)
{
System.out.println("enter id");
int id=sc.nextInt();
System.out.println("Enter name");
String name=sc.next();
System.out.println("enter last name");
String lastname=sc.next();
op.insert(id,name,lastname);
	}
else if(option==2)
{
	System.out.println("Enter name");
	String name=sc.next();
	System.out.println("Enter lastname");
	String lastname=sc.next();
	System.out.println("Enter id");
	int id=sc.nextInt();
	op.update(id, name, lastname);
}
else if(option==3)
{
	System.out.println("Enter id");
	int id=sc.nextInt();
	op.delet(id);
}
else if(option==4)
{
	System.out.println("enter id");
	int id=sc.nextInt();
	op.display(id);
}


}
}