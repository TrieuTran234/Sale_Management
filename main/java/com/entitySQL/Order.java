package com.entitySQL;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Orders")
public class Order implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	
	
	Double price;
	
	@Column(columnDefinition = "nvarchar(100)")
	String address;
	
	@Column(name = "note",columnDefinition = "nvarchar(200)")
	String note;
	@Column(name = "namere",columnDefinition = "nvarchar(100)")
	String nameRe;
	@Column(name ="phonere",columnDefinition = "varchar(15)")
	String phoneRe ;
	@Column(name ="email",columnDefinition = "varchar(50)")
	String email ;
	@Temporal(TemporalType.DATE)
	Date createDate = new Date();
	
	
	@ManyToOne
	@JoinColumn(name = "customerid")
	Customer customer;

	@ManyToOne
	@JoinColumn(name = "staffid")
	Staff staff;

	@ManyToOne
	@JoinColumn(name = "Orderstatusid")
	OrderStatus orderstatus;

	@OneToMany(mappedBy = "order")
	List<StatusDetail> statusDetails;
	
	@JsonIgnore
	@OneToMany(mappedBy = "order")
	List<OrderDetail> orderDetails;

}
