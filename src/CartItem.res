type cart_item = {
  product_id: string,
  product_name: string,
  qty: float,
  price: float,
  subtotal: float,
}

let formatRp = number => {
  let result = [number]->Js.Array2.toLocaleString
  result
}

let makeItem = (id: string, name: string, qty: float, price: float) => {
  let item: cart_item = {
    product_id: id,
    product_name: name,
    qty,
    price,
    subtotal: qty *. price,
  }
  item
}

@react.component
let make = (~item: cart_item) => {
  <li className="flex items-center gap-4">
    <div>
      <h3 className="text-sm text-gray-900"> {item.product_name->React.string} </h3>
      <dl className="mt-0.5 space-y-px text-[10px] text-gray-600">
        <CartItemDescription term="Harga" detail={item.price->formatRp} />
        <CartItemDescription term="QTY" detail={item.qty->formatRp} />
      </dl>
    </div>
    <div className="flex flex-1 items-center justify-end gap-2">
      <p className="sr-only"> {"Subtotal"->React.string} </p>
      <p
        className="rounded border-gray-200 bg-gray-50 p-2 text-center text-base text-gray-600">
        {item.subtotal->formatRp->React.string}
      </p>
      <button className="text-gray-600 transition hover:text-red-600">
        <span className="sr-only"> {"Remove item"->React.string} </span>
        <TrashIcon />
      </button>
    </div>
  </li>
}
