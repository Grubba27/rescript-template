// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";

function Hello$Hello(Props) {
  var match = React.useState(function () {
        return 0;
      });
  var setCounter = match[1];
  var counter = match[0];
  var onClick = function (evt) {
    evt.preventDefault();
    Curry._1(setCounter, (function (param) {
            return counter + 1 | 0;
          }));
  };
  return React.createElement("div", undefined, React.createElement("button", {
                  onClick: onClick
                }, "Click here"), React.createElement("p", undefined, "Clicked " + String(counter) + " times"));
}

var Hello = {
  make: Hello$Hello
};

export {
  Hello ,
}
/* react Not a pure module */
