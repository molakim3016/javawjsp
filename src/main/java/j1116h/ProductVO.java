package j1116h;

public class ProductVO {
	private String name="";
	private int price=0;
	private int count=0;
	private int tot=0;
	
	
	public ProductVO(String name, int price, int count, int tot) {
		this.name = name;
		this.price = price;
		this.count = count;
		this.tot = tot;
	}
	public int getTot() {
		return tot;
	}
	public void setTot(int tot) {
		this.tot = tot;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	@Override
	public String toString() {
		return "ProductVO [name=" + name + ", price=" + price + ", count=" + count + ", tot=" + tot + "]";
	}
	
}
