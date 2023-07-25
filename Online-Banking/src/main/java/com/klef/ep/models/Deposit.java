package com.klef.ep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "deposit_table")
public class Deposit implements Serializable
{
  
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Id //primary key
  private int id;
  @Column(name = "ename", length = 50, nullable = false)
  private String name;
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


 


}