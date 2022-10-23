import React from 'react';
import { Hello } from "./Hello.bs";
import { Info } from "./Info.bs";

export const App = () => (
  <div>
    <h1>Welcome to Meteor!</h1>
    <Hello.make/>
    <Info.make/>
  </div>
);
