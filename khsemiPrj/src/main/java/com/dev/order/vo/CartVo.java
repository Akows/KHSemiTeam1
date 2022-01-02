package com.dev.order.vo;

public class CartVo 
{
	private int m_no;
	private int pro_no;
	private int quantity;
	
	//---------------------------------------
	public int getM_no() 
	{
		return m_no;
	}
	
	public int getPro_no() 
	{
		return pro_no;
	}
	
	public int getQuantity() 
	{
		return quantity;
	}
	//---------------------------------------
	public void setPro_no(int pro_no) 
	{
		this.pro_no = pro_no;
	}

	public void setM_no(int m_no) 
	{
		this.m_no = m_no;
	}
	
	public void setQuantity(int quantity) 
	{
		this.quantity = quantity;
	}
	//---------------------------------------

	@Override
	public String toString() 
	{
		return "CartVo [m_no=" + m_no + ", pro_no=" + pro_no + ", quantity=" + quantity + "]";
	}
	
	
	
}
