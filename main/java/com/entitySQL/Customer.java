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

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name = "customers")
public class Customer implements Serializable{
	@Id
	@Column(columnDefinition = "varchar(30)")
	String id;
	Boolean active;
	
	@Column(columnDefinition = "nvarchar(70)")
	String fullname ;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date dateofBirth ;
	@Column(columnDefinition = "varchar(15)")
	String phone ;
	
	@Column(name = "verification_code",updatable = false)
	String verificationCode;
	
	@Column(columnDefinition = "nvarchar(100)")
	String address ;
	
	@Column(columnDefinition = "varchar(70)")
	String email ;
	
	@Column(columnDefinition = "varchar(50)")
	String password ;
	String image;
	
	@JsonIgnore
	@OneToMany(mappedBy = "customer")
	List<Order> orders;
}
