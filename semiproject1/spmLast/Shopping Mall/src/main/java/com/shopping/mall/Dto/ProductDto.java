package com.shopping.mall.Dto;

public class ProductDto {

	private int productnumber;
	private String productname;
	private int productprice;
	private String productcontent;
	private String productcategory;
	private String productcolor;
	private String productsize;
	private int productcount;

	public ProductDto() {
		super();
	}

	public ProductDto(int productnumber, String productname, int productprice, String productcontent,
			String productcategory, String productcolor, String productsize, int productcount) {
		super();
		this.productnumber = productnumber;
		this.productname = productname;
		this.productprice = productprice;
		this.productcontent = productcontent;
		this.productcategory = productcategory;
		this.productcolor = productcolor;
		this.productsize = productsize;
		this.productcount = productcount;
	}

	public int getProductnumber() {
		return productnumber;
	}

	public void setProductnumber(int productnumber) {
		this.productnumber = productnumber;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getProductprice() {
		return productprice;
	}

	public void setProductprice(int productprice) {
		this.productprice = productprice;
	}

	public String getProductcontent() {
		return productcontent;
	}

	public void setProductcontent(String productcontent) {
		this.productcontent = productcontent;
	}

	public String getProductcategory() {
		return productcategory;
	}

	public void setProductcategory(String productcategory) {
		this.productcategory = productcategory;
	}

	public String getProductcolor() {
		return productcolor;
	}

	public void setProductcolor(String productcolor) {
		this.productcolor = productcolor;
	}

	public String getProductsize() {
		return productsize;
	}

	public void setProductsize(String productsize) {
		this.productsize = productsize;
	}

	public int getProductcount() {
		return productcount;
	}

	public void setProductcount(int productcount) {
		this.productcount = productcount;
	}

}
