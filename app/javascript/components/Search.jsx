import React from "react";

const search_bar = ({keyword,setKeyword}) => {

  return (
    <input
    key = "address"
    value = {keyword}
    placeholder = "Enter address"
    />
  );
}

export default search_bar;
