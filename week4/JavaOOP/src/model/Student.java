package model;

public class Student {
    private String name;
    private int age;
    private String sex;
    private String studentNumber;

    public Student(String name, int age, String sex, String studentNumber) {
        this.name=name;
        this.age=age;
        this.sex=sex;
        this.studentNumber = studentNumber;
    }
    public void setName(String name){
        this.name=name;
    }
    public String getName(){
        return this.name;
    }
    public void setAge(int age){
        this.age=age;
    }
    public int getAge(){
        return this.age;
    }
    public void setSex(){
        this.sex=sex;
    }
    public String getSex(){
        return this.sex;
    }
    public void setStudentNumber(){
        this.studentNumber = studentNumber;
    }
    public String getStudentNumber(){
        return studentNumber;
    }
}
