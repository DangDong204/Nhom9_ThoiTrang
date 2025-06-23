package model;

public class CartItem {
	private Product product;
    private int quantity;

    public CartItem() {}

    public CartItem(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        if (quantity < 1) {
            this.quantity = 1; // đảm bảo số lượng luôn >= 1
        } else {
            this.quantity = quantity;
        }
    }

    public int getTotalPrice() {
        return product.getProductCost() * quantity;
    }
	
}
