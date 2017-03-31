package edu.seu.gong.model;

public class applicationfromstores {
	private int id;
	private String store_name;
	private String warehouse_name;
	private String operation;
	private String create_date;
	private String isbn;
	private String bookname;
	private String status;
	private int quantity;
	private String transport;
	private String transport_id;
	private String arrive_date;
	private double transport_price;
	public double getTransport_price() {
		return transport_price;
	}
	public void setTransport_price(double transport_price) {
		this.transport_price = transport_price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public String getWarehouse_name() {
		return warehouse_name;
	}
	public void setWarehouse_name(String warehouse_name) {
		this.warehouse_name = warehouse_name;
	}
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getTransport() {
		return transport;
	}
	public void setTransport(String transport) {
		this.transport = transport;
	}
	public String getTransport_id() {
		return transport_id;
	}
	public void setTransport_id(String transport_id) {
		this.transport_id = transport_id;
	}
	public String getArrive_date() {
		return arrive_date;
	}
	public void setArrive_date(String arrive_date) {
		this.arrive_date = arrive_date;
	}
	
}
