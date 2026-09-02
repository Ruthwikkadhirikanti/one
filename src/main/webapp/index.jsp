import java.util.ArrayList;
import java.util.List;

// 1. Product Entity
class Product {
    private int id;
    private String name;
    private double price;

    public Product(int id, String name, double price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    public int getId() { return id; }
    public String getName() { return name; }
    public double getPrice() { return price; }
}

// 2. Shopping Cart Entity
class CartItem {
    private Product product;
    private int quantity;

    public CartItem(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public Product getProduct() { return product; }
    public int getQuantity() { return quantity; }
    
    public double getTotalPrice() {
        return product.getPrice() * quantity;
    }
}

class ShoppingCart {
    private List<CartItem> items = new ArrayList<>();

    public void addItem(Product product, int quantity) {
        // If product already exists in cart, update quantity
        for (CartItem item : items) {
            if (item.getProduct().getId() == product.getId()) {
                // In a full app, you would update quantity here.
                System.out.println(product.getName() + " is already in the cart.");
                return;
            }
        }
        items.add(new CartItem(product, quantity));
        System.out.println(quantity + "x " + product.getName() + " added to cart.");
    }

    public List<CartItem> getItems() {
        return items;
    }

    public double calculateCartTotal() {
        double total = 0;
        for (CartItem item : items) {
            total += item.getTotalPrice();
        }
        return total;
    }

    public void clear() {
        items.clear();
    }
}

// 3. Order Processing Engine
class Order {
    private static int orderIdCounter = 1001;
    private int orderId;
    private List<CartItem> orderedItems;
    private double totalAmount;

    public Order(List<CartItem> items, double totalAmount) {
        this.orderId = orderIdCounter++;
        this.orderedItems = new ArrayList<>(items);
        this.totalAmount = totalAmount;
    }

    public void displayOrderSummary() {
        System.out.println("\n=================================");
        System.out.println("        ORDER RECEIPT            ");
        System.out.println("=================================");
        System.out.println("Order ID: #" + orderId);
        System.out.println("Items Purchased:");
        for (CartItem item : orderedItems) {
            System.out.printf(" - %s (x%d): $%.2f\n", 
                item.getProduct().getName(), 
                item.getQuantity(), 
                item.getTotalPrice());
        }
        System.out.printf("Total Paid: $%.2f\n", totalAmount);
        System.out.println("=================================\n");
    }
}

// 4. Main Application Controller
public class EcommerceApp {
    public static void main(String[] args) {
        // Mock Database: Populate available catalog items
        Product laptop = new Product(1, "Wireless Laptop", 899.99);
        Product headphones = new Product(2, "Noise-Cancelling Headphones", 149.50);
        Product mouse = new Product(3, "Ergonomic Wireless Mouse", 45.00);

        System.out.println("--- Welcome to the Java E-Commerce Store ---");
        
        // Initialize Customer's Cart
        ShoppingCart cart = new ShoppingCart();

        // Customer Action: Add products to cart
        cart.addItem(laptop, 1);
        cart.addItem(headphones, 2);
        cart.addItem(mouse, 1);

        // Checkout Process
        double finalTotal = cart.calculateCartTotal();
        System.out.printf("\nProceeding to checkout. Subtotal: $%.2f\n", finalTotal);

        // Create Order and Clear Cart
        Order newOrder = new Order(cart.getItems(), finalTotal);
        cart.clear(); 

        // Print Receipt
        newOrder.displayOrderSummary();
    }
}
