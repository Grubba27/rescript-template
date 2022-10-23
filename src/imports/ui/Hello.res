module Hello = {
  @react.component
  let make = () => {
    let (counter, setCounter) = React.useState(_ => 0)
    let s = React.string
    let onClick = evt => {
      ReactEvent.Mouse.preventDefault(evt)
      setCounter(_ => counter + 1)
    }
    <div>
      <button onClick> {"Click here"->s} </button>
      <p> {("Clicked " ++ string_of_int(counter) ++ " times")->s} </p>
    </div>
  }
}
