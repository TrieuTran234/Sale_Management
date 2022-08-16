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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Products")
public class Product implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	
	@Column(columnDefinition = "nvarchar(100)")
	String name;
	String image;
	
	
	Double price;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "create_date")
	Date createDate = new Date();
	Boolean available;

	@ManyToOne
	@JoinColumn(name = "Categoryid")
	Category category;

	@OneToMany(mappedBy = "product")
	List<OrderDetail> orderDetails;
	
	@OneToMany(mappedBy = "product")
	List<PromotionDetail> promotionDetails ;
	
	@OneToMany(mappedBy = "product")
	List<CartItem> cartItems;
}
