package com.entitySQL;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.aspectj.weaver.ast.Or;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Staffs")
public class Staff implements Serializable{
	 @Id
	 @Column(columnDefinition = "varchar(30)")
	 String id ;
	 
	 @Column(columnDefinition = "nvarchar(100)")
	 String fullname ;
	 @Temporal(TemporalType.DATE)
	 @DateTimeFormat(pattern = "yyyy-MM-dd")
	 Date dateofbirth ;
	 Boolean gender ;
	 
	 @Column(columnDefinition = "nvarchar(100)")
	 String address ;
	 
	 @Column(columnDefinition = "varchar(15)")
	 String phone ;
	 
	 @Column(columnDefinition = "varchar(70)")
	 String email ;
	 
	 @Column(columnDefinition = "varchar(50)")
	 String password ;
	 String image;
	 Boolean admin ;
	 
	 @JsonIgnore
	 @OneToMany(mappedBy = "staff")
	 List<Order> orders;
	 
	 @JsonIgnore
	 @OneToMany(mappedBy = "staff")
	 List<Promotion> promotions;
}
