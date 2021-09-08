import React, {useState, useEffect} from "react";
import axios from 'axios';

import HomeList from "./HomeList";
import Header from './Header';
import Search from './Search';

const Home = () => {
  const [matchingHouses, setMatchingHouses] = useState([]);
  const [address, setAddress]  = useState('');


  //making api call with axios to fetch houses with matching address and assign them to matchingHouses
  const get_houses = async () => {
    console.log(`started searching with "${address}"`);
      return await axios.get(`api/v1/search`,{ params: {address: address} })
          .then(res => {
            // console.log(res);
            setMatchingHouses(res.data);
          });
  }


  return (
    <div>
      <Header />
      <Search address = {address} setAddress = {setAddress} get_houses = {get_houses}/>
      <HomeList matchingHouses = {matchingHouses}/>
    </div>
  );
}

export default Home;
