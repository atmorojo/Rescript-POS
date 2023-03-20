@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0)

  let makeItem = (id: string, name: string, qty: float, price: float, subtotal: float) => {
    let item: CartItem.cart_item = {
      product_id: id,
      product_name: name,
      qty,
      price,
      subtotal,
    }
    item
  }

  let items = []
  let _ = Js.Array2.push(
    items,
    makeItem("a", "Longtong Mayur", 1.0, 2000.0, 2000.0)
  )
  let _ = Js.Array2.push(
    items,
    makeItem("b", "Longstong Mayor", 2.0, 2000.0, 4000.0)
  )

  <div className="p-6">
    <Button onClick={_ => setCount(count => count + 1)}>
      {React.string(`count is ${count->Int.toString}`)}
    </Button>
    <p>
      {React.string("Edit ")}
      <code> {React.string("src/App.res")} </code>
      {React.string(" and save to test Fast Refresh.")}
    </p>
    {Js.Array2.map(
      items,
      item => <CartItem item={item} />
    )->React.array}
  </div>
}
