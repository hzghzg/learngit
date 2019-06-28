package main;

import model.Student;

public class MainOfStudent {
    public static void main(String args[]){
        Student stu1=new Student("黄章冠",22,"男","201508010322");
        System.out.println("姓名："+stu1.getName()+"\n"+"年龄："+stu1.getAge()+"\n"+"性别："+stu1.getSex()
                +"\n"+"学号："+stu1.getStudentNumber());
    }
}
