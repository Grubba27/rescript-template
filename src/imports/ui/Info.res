type useTracker<'T> = (~func: unit => array<'T>, ~deps: array<unit>=?) => array<'T>
type link = {
  _id: string,
  title: string,
  url: string,
  createdAt: Js.Date.t,
}
type linkFetch = {fetch: unit => array<link>}
type links = {
  find: (~query: {.}=?) => linkFetch,
  findOne: string => link,
  insert: link => unit,
  update: (string, link) => unit,
  remove: string => unit,
}

@module("meteor/react-meteor-data")
external useTracker: unit = "useTracker"

@module("../api/links")
external linksCollection: links = "LinksCollection"

module Info = {
  @react.component
  let make = () => {
    // think on how to use useTracker
    let l = useTracker
    let links: array<link> = %raw(`
   		ReactMeteorData.useTracker(() => linksCollection.find().fetch())
    `)
    let s = React.string
    let items = Belt.Array.map(links, link => {
      <li key={link._id}>
        <a href={link.url} target="_blank"> {link.title->s} </a>
      </li>
    })

    <div>
      <h2> {"Learn Meteor!"->s} </h2>
      <ul> {items->React.array} </ul>
    </div>
  }
}
