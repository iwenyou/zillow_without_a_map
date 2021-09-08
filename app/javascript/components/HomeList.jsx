import React from 'react';

const HomeList = ({matchingHouses: matchingHouses}) => {
  return (
    <>
    {
      matchingHouses.map((house, index) => {
        if(house){
          return (
              <p key={index}>{house.address}</p>
          )
        }
          return null;      }
      )
    }
    </>
  );
}

export default HomeList;


// export default class HomeList extends React.Component {
//   state = {
//     houses: []
//   }

//Making get request to API with address params and assign it to houses varible
  // componentDidMount() {
  //   axios.get(`api/v1/search`,{ params: {address: "st"} })
  //     .then(res => {
  //       console.log(res);
  //       const houses = res.data;
  //       this.setState({ houses });
  //     })
  // }

//mapping the list of address from houses
  // render() {
  //   return (
  //     <ul>
  //       { this.state.houses.map(house => <li key="{house.id}">{house.address}</li>)}
  //     </ul>
  //   )
  // }
//}
