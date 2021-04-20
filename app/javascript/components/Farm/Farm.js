import React, { useState, useEffect, Fragment } from 'react'
import axios from 'axios'

const Farm = (props) => {
    const [farm, setFarm] = useState([])

    useEffect(() => {
        // get farm from api
        //update farm in our state
        axios.get('/api/v1/farms')
          .then( resp => {
              setFarms(resp.data.data)
          } )
          .catch(resp => console.log(resp) )
    }, [farms.length])

    const list = farms.map( item => {
        return (<li key={item.attributes.name}>{item.attributes.name}</li>)
    })

    return (
        <Fragment>
        <div>This is the main farm view for our app</div>
        <ul>{list}</ul>
        </Fragment>
    )
}

export default Farm;