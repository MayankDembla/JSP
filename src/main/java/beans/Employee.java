package beans;

import java.io.Serializable;

/**
 *   - It should have no argument constructor.
 * 	- It should be serializable.
 * 	- It should provide methods to set and get the value of properties, known as getter and setter methods.
 */
public class Employee implements Serializable {


    Employee(){
        // no arg constructor
    }

    int id;
    String name ;
    int standard ;

    public Employee(int id, String name, int standard) {
        this.id = id;
        this.name = name;
        this.standard = standard;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getStandard() {
        return standard;
    }

    public void setStandard(int standard) {
        this.standard = standard;
    }
}
