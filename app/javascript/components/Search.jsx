import React, {useState} from "react";

const SearchBar = ({address: address, setAddress: setAddress, get_houses: get_houses}) => {

  //call the get_house function with current Address
  const start_search = (e) => {
    e.preventDefault();
    console.log(`house search triggered`);
    get_houses();
  }

  //changing the Address everytime when there are changes in input box
  const inputOnChange = (e) => {
    setAddress(e.target.value);
    console.log(address);
  }

  return (
    <form action="/" method="get">
    <input
    value = {address}
    onChange = {inputOnChange}
    placeholder = "Enter address"
    />
    <button onClick={start_search} type="submit" >search</button>
    </form>
  );
}

export default SearchBar;
