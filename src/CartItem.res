type cart_item = {
  product_id: string,
  product_name: string,
  qty: float,
  price: float,
  subtotal: float,
}

@react.component
let make = (~item: cart_item) => {
  <table>
    <tr>
      <td> {item.product_name->React.string} </td>
      <td> {item.qty->Float.toString->React.string} </td>
      <td> {item.price->Float.toString->React.string} </td>
      <td> {item.subtotal->Float.toString->React.string} </td>
    </tr>
  </table>
}
