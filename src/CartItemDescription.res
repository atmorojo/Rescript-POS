@react.component
let make = (~term: string, ~detail: string) => {
  <div>
    <dt className="inline"> {term->React.string} </dt>
    <dd className="inline"> {detail->React.string} </dd>
  </div>
}
