import React, { useState, useEffect, Fragment } from 'react'
import axios from 'axios'
import Parcela from './../Parcelas/Parcela'

const Farm = () => {
    const [farm, setFarm] = useState([])
    const [employee, setEmployee] = useState([])

    useEffect(()=> {
        //api/v1/cultivos/id
        //gets id passed through url to be used to find Cultivo
        const ID = props.match.params.id
        const url = `http://localhost:3000/api/v1/employees/current_employee`
        
        axios.get(url)
        .then( resp => console.log(resp) )
        .catch( resp => console.log(resp) )
    }, [employee])

    useEffect(() => {
        // get farm from api
        //update farm in our state
        axios.get('http://localhost:3000/api/v1/farms')
          .then( resp => {
              setFarm(resp.data.data)
              console.log(resp)
          } )
          .catch(resp => console.log(resp) )
    }, [farm.length])

    //parcels = farm.dat


    const list = farm.map( item => {
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