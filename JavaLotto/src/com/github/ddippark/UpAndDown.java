package com.github.ddippark;

import java.util.Scanner;
import java.util.*;



public class UpAndDown {
    public static void main(String[] args) {

        Scanner s = new Scanner(System.in); // �������߱⸦ �õ��ϴ� ����
        Scanner m = new Scanner(System.in); // ������ ����
        Scanner c = new Scanner(System.in); // �ٽ�
        
        System.out.println("                 | | | | | | | | | | |");
        System.out.println("              | |                       | | ");
        System.out.println("            |                               |");
        System.out.println("          |                                   | ");                             
        System.out.println("        |              UP & DOWN                |");
        System.out.println("        | |                                   | |   ");
        System.out.println("        |   |                               |   |");
        System.out.println("        |     | |                       | |     |");
        System.out.println("        |         | | | | | | | | | | |         |   ");                             
        System.out.println("        |                                       |");
        System.out.println("        |                                       |");
        System.out.println("         |              ��������                     | ");
        System.out.println("          |                                   |   ");
        System.out.println("            |                               |");
        System.out.println("              | |                       | |");
        System.out.println("                  | | | | | | | | | | | ");
  
    while(true)
    {
        System.out.println("ȭ�鿡 ������ �� ���ڸ� �Է��ϼ���.");
        int input = 0;
        char check;
        int result =m.nextInt();//�Է¹ޱ� 
        //System.out.println("����� �Է��� ���ڴ� "+input);
        System.out.println("ȭ�鿡 ������ ���� ���ڸ� �Է��ϼ���.");
        while(input!=result )
        {
    
             input = s.nextInt(); //�Է¹ޱ�
             while(true)
 {
        	if(input<result)//������
        	{
        	      System.out.println("UP!!!!");
        	      System.out.println("ȭ�鿡 ���ڸ� �� �� �� �Է��ϼ���.");
        	      break;
        	      
        	}
        	else if(input>result)
        	{
        		  System.out.println("DOWN!!!!"); 
        	      System.out.println("ȭ�鿡 ���ڸ� �� �� �� �Է��ϼ���.");
        	      break;
        	}
        	else 
        	{
        		break;
        	}
        	}
        	
        }
	      System.out.println("�����Դϴ�!!!");
	      System.out.println("�� ���� �� �ұ��?(Y/N)");
//int result =m.nextInt()
	      check = c.next().charAt(0);
	      if(check=='Y'){
	        continue;
	      }
	      else if(check =='N')
	      {
	    	  System.out.println("�ȳ��� ������~");
	    	  break;
	      }
	      else
	      {
	          System.out.println("�հ����� �̲��� ������? �߰���");
	          break;
	      }
        }
    }
    }


/*
public class UpAndDown {
	public static void main(String args[]) {
		int result = 100; //������� ����

		System.out.println("�� ������ �� �شٿ� �����Դϴ�.");
		System.out.println("���ڸ� �Է��� �ּ���.");
		//InputStream is = 
		Scanner scan= new Scanner(System.in); //�� �Է¹���	
		while(Integer.parseInt(scan)!=result)
		{
			System.out.println("���ڸ� �Է��� �ּ���.");
			//InputStream is = 
			Scanner scan= new Scanner(System.in); //�� �Է¹���
		}
	}
}
*/
