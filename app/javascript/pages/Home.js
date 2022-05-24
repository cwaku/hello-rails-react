import React from "react";
import { Link } from "react-router-dom";

const Home = () => {
  return (
    <div className="container mt-5">
      <h1>Random Greetings App</h1>
      <p>Please, click on the button below.</p>
      <Link to="/greetings" className="btn btn-primary mx-3 text-left">CLICK HERE</Link>
    </div>
  );
}

export default Home;