import React, {useState, useEffect} from "react";
import axios from 'axios';

import HomeList from "./HomeList";
import Header from './Header';
import Search from './Search';

const Home = () => {
  const [houses, setHouses] = useState([]);

  const search_api = async () => {
    return await axios.get(`api/v1/search`,{ params: {address: "st"} })
        .then(res => {
          console.log(res);
          setHouses(res.data);
        });
  }


useEffect( () => {search_api()},[]);

  return (
    <div>
      <Header />
      <Search />
      <HomeList houses = {houses}/>
    </div>
  );


}

export default Home;
