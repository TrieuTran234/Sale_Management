package com.entitySQL;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "Promotions")
public class Promotion implements Serializable {
	@Id
	@Column(columnDefinition = "varchar(30)")
	String id;

	@Column(columnDefinition = "nvarchar(100)")
	String name;

	Double Discount;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date ToDate;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date FromDate;
	Boolean Status;

	@ManyToOne
	@JoinColumn(name = "staffid")
	Staff staff;

	@JsonIgnore
	@OneToMany(mappedBy = "promotion")
	List<PromotionDetail> promotionDetails;

	
}
