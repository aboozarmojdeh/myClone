import React, { Fragment, useState, useEffect } from "react";
import { toast } from "react-toastify";
import modelPic from "../img/modelPic.png";
// import Home from './Home';
import AddModel from './AddModel';
import ModelList from './ModelList';
import QuestionForm from './QuestionForm';
const Home = ({ setAuth }) => {
  const [name, setName] = useState("");
  const [id,setId]=useState("");
  const [modelName, setModelName] = useState("");
  const [superModels, setSuperModels] = useState([]);

  const getName = async () => {
    try {
      const response = await fetch("http://localhost:5000/dashboard/", {
        method: "GET",
        headers: { token: localStorage.token },
      });
      const parsRes = await response.json();
      console.log('parseRes',parsRes);
      setName(parsRes.user_name);
      setId(parsRes.user_id)
    } catch (err) {
      console.error(err.message);
    }
  };

  useEffect(() => {
    getName();
  }, []);

  const logout = (e) => {
    e.preventDefault();
    localStorage.removeItem("token");
    setAuth(false);
    toast.success("Logged out successfully!");
  };

  const onSearchChange = (e) => {
    setModelName(e.target.value);
    console.log(e.target.value);
  };

  const onSubmitForm = async (e) => {
    e.preventDefault();
    try {
      const response = await fetch(
        `http://localhost:5000/models/?modelName=${modelName}`
      );
      const resResponse = await response.json();
      console.log("models:", resResponse);
      setSuperModels(resResponse);
    } catch (err) {
      console.error(err.message);
    }
  };

  const superModelMap = superModels.map((superModel) => {
    return (
      <tr key={superModel.user_id}>
        <td>{superModel.first_name}</td>
        <td>{superModel.last_name}</td>
      </tr>
    );
  });

  return (
    <Fragment>
      
      <nav className="navbar navbar-expand-lg navbar-light bg-light">
        <div className="container-fluid">
          <button
            className="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarTogglerDemo03"
            aria-controls="navbarTogglerDemo03"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span className="navbar-toggler-icon"></span>
          </button>
          <a className="navbar-brand" href="">
            Fashion Model Search
          </a>
          <div className="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul className="navbar-nav me-auto mb-2 mb-lg-0"></ul>
            <form className="d-flex">
              <p className="me-2">Welcome {name}!</p>
              {/* <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" /> */}
              {/* <button class="btn btn-outline-success" type="submit">Search</button> */}
              <button className="btn btn-danger" onClick={(e) => logout(e)}>
                Logout
              </button>
            </form>
          </div>
        </div>
      </nav>

      <div className="imgcontainer text-center my-3">
        <img src={modelPic} alt="Sign-in" width="250" height="150" />
      </div>
      <div className='container'>
      <AddModel />
      <ModelList />
      </div>
         
{/* // Search are temporary closed */}
<hr />
<h4>search area temporary closed</h4>
      {/* <div className="container text-center">
        <form className="d-flex my-5" onSubmit={onSubmitForm}>
          <input
            required="required"
            className="form-control"
            type="text"
            name="name"
            placeholder="Enter model..."
            value={modelName}
            onChange={onSearchChange}
          />
          <button className="btn btn-success">Search</button>
        </form>

        <table className="table table-dark table-hover my-5">
          <thead>
            <tr>
              <th scope="col">First</th>
              <th scope="col">Last</th>
            </tr>
          </thead>
          <tbody>{superModelMap}</tbody>
        </table>
        {superModels.length === 0 && <p>No results found</p>}
      </div> */}
      <hr />
      <QuestionForm id={id} />
    </Fragment>
  );
};














// import React, { Fragment } from 'react';
// import AddRestaurant from './AddRestaurant';
// import Header from './Header';
// import RestaurantList from './RestaurantList';


// const Home = () => {
//     return (
//         <Fragment>
//             <Header />
//             <AddRestaurant />
//             <RestaurantList />
//         </Fragment>
//     )
// }

export default Home;
