import React, { useState, useEffect } from 'react'
import axios from 'axios'

const Airlines = () => {
  const [airlines, setAirlines] = useState([])
  
  useEffect( () => {
    axios.get('/api/v1/stroller.json')
    .then( resp => {
      debugger
    })
    .catch( data => {
      debugger
    })
  }, [])
    return (
        <div>
            This is the Stroller index page
        </div>
    );
};

export default Strollers;