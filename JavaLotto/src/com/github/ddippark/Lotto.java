package com.github.ddippark;


import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;
 
public class Lotto {
   
    ArrayList<Integer> lottoList;                // ��ǻ�Ͱ� ������ �ζ� �迭
    ArrayList<Integer> userLottoList;            // �Է¹޴� �ζ� �迭
   
    public static void main(String[] args) {
        new Lotto().start();
    }
   
    // ���� ����   
    public void start() {
       
        makeLottoList();                                    // �ζ� ��÷��ȣ �����ϱ�
        ascList(lottoList);                                    // �������� ����
        inputLotto();                                        // ���� �ζǹ�ȣ �Է� �ޱ�
        int result = compareList(lottoList, userLottoList);    // ��÷��ȣ�� ������ �ζǹ�ȣ ��
        printResult(result);                                // ���� ��� ���
        printList(lottoList);                                // ��� ���
    }
   
    // ��ȸ�� �ζǹ�ȣ ���� �޼���
    public void makeLottoList() {
       
        lottoList = new ArrayList<>();
               
        Random rnd = new Random();
               
        while(lottoList.size()<=5) {
           
            int num = rnd.nextInt(45)+1;
           
            if(!isExist(lottoList, num)) {
                lottoList.add(num);   
            }
           
        }
    }//end makeLottoList()
   
    // ���� �ζǹ�ȣ �Է¹޴� �޼���
    public void inputLotto() {
       
        userLottoList = new ArrayList<>();
       
        Scanner scan = new Scanner(System.in);
       
        System.out.println("����� �ζ� ��ȣ�� �Է��ϼ���");
       
        int i=0;
        try {
            while(userLottoList.size()<=5) {
               
               
                System.out.print(i+1+"��° ��ȣ �Է� : ");
               
                int num = scan.nextInt();
               
                if(num>0&&num<46) {                            // ���ڰ� 1~45�̸�
                    if(!isExist(userLottoList, num)) {
                        userLottoList.add(num);
                        i++;
                    }else {
                        System.out.println("���ڰ� �ߺ��˴ϴ�! �ٽ� �Է����ּ���!");
                    }
                }else {                                        // ���ڰ� 1~45�� �ƴϸ�
                    System.out.println("1 ~ 45 ������ ���ڸ� �Է����ּ���");
                }
                    
               
            }
        } catch (Exception e) {
            System.out.println("1 ~ 45 ������ ���ڸ� �Է��ϼ���.");
            inputLotto();
        }
    }//end inputLotto()
   
    // ��÷��ȣ�� ������ȣ �� �޼���
    public int compareList(ArrayList<Integer> lottoList, ArrayList<Integer> userList) {
        int result = 0;    // ���� ������ ����
       
        for(Integer i : lottoList) {
            for(Integer j : userList) {
                if(i==j) {
                    result++;
                    break;
                }
//                System.out.println("i : "+i+" j : "+j);
            }
        }
       
        return result;
       
    }//end compareList()
   
    // ���� ��� ��� �޼���
    public void printResult(int result) {
        switch(result) {
       
        case 6:
        case 5:
        case 4:
        case 3:
        case 2:
            System.out.println("�����մϴ�! ����� "+ (7-result) +"�� �Դϴ�!!!");
            break;
        default :
            System.out.println("���Դϴ�!");
               
        }
    }//end printResult()
   
    // �����ϴ� �������� �Ǻ� �޼���
    public boolean isExist(ArrayList<Integer> list, int num) {
        boolean result = false;
       
        for(Integer l : list) {
            if(l==num) {
                result=true;
                break;
            }
        }
        return result;
    }//end isExist()
   
    // �������� ���� �޼���
    public void ascList(ArrayList<Integer> list) {
       
        for(int i=list.size()-1; i>=0; i--) {
            for(int j=0; j<i; j++) {
                if(list.get(j)>list.get(j+1)) {
               
                    int temp = list.get(j);
                    list.remove(j);
                    list.add(j+1,temp);
                }   
            }
        }//end for
    }//end ascList()
   
    // �ζ� ��ȣ ��� ��� �޼���
    public void printList(ArrayList<Integer> list) {
        System.out.print("�̹��� ��÷��ȣ�� ");
        for(Integer result : list) {
            System.out.print(result+" ");
        }
        System.out.println("�Դϴ�.");
    }//end printList()
}









/*
import java.io.InputStream;
import java.util.Arrays;
import java.util.Random;

public class Lotto {
	public static void main(String[] args) {
        int[] lottoNumbers	 = new int[4];
        Random rnd = new Random();

        for (int i = 0; i < lottoNumbers.length; i++) {
            lottoNumbers[i] = rnd.nextInt(20) + 1;

            // �ߺ��� ���� ������ �ٽ� ������ ���ϱ� ���� Ȯ���ؼ� index �� �ٿ��ش�.
            for (int j = 0; j < i; j++) {
                if (lottoNumbers[i] == lottoNumbers[j]) {
                    i--;
                    break;
                }
            }
        }

        Arrays.sort(lottoNumbers); // sort
      //  System.out.println(Arrays.toString(lottoNumbers)); // stringify & print
        
        InputStream is = System.in;
    }
}

*/

/*

public class RandomNumber {
    public static void main(String[] args) {
        int[] lottoNumbers = new int[6];
        Random rnd = new Random();

        for (int i = 0; i < lottoNumbers.length; i++) {
            lottoNumbers[i] = rnd.nextInt(45) + 1;

            // �ߺ��� ���� ������ �ٽ� ������ ���ϱ� ���� Ȯ���ؼ� index �� �ٿ��ش�.
            for (int j = 0; j < i; j++) {
                if (lottoNumbers[i] == lottoNumbers[j]) {
                    i--;
                    break;
                }
            }
        }

        Arrays.sort(lottoNumbers); // sort
        System.out.println(Arrays.toString(lottoNumbers)); // stringify & print
    }
}  */