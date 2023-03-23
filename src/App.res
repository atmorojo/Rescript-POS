@react.component
let make = () => {
let cart_items = [
CartItem.makeItem("1", "Lontong Sayur", 1.0, 20000.0),  
CartItem.makeItem("2", "Sayur Asem", 3.0, 15000.0)
]
<Cart item_list={cart_items}/>
}
