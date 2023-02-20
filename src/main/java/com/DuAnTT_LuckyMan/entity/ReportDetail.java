package com.DuAnTT_LuckyMan.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class ReportDetail implements Serializable{
	
	@Id
	String name ;
	Date date ; 
	double doanhThu ;
	long soLuong ;
}
