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

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "OrderStatuss")
public class OrderStatus implements Serializable{
	@Id
	@Column(columnDefinition = "varchar(30)")
	String id ;
	
	@Column(columnDefinition = "nvarchar(100)")
	String name ;
	
	
	
	@JsonIgnore
	@OneToMany(mappedBy = "orderstatus")
	List<Order> orders;
}
