import React, { useState, useEffect } from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import Cultivo from './Cultivo';

const Cultivos =(props)=> {

    const [cultivos, setCultivos] = useState(props)

    console.log(props)

    

    useEffect(()=> {
    axios.get('/api/v1/cultivos.json')
        .then( resp => {
            setCultivos(resp.data.data)
        })
        .catch( resp => console.log(resp) )
    }, [cultivos.length])
        
    const grid = cultivos.map( item => {
        return (
            <Cultivo key={item.attributes.id}
            attributes={item.attributes}
            />
        )
    })
    
    return(
        <div>
            <div className="header">
            <h1>EcoRegistros</h1>
            <div className="subheader">Good organic and farming.</div>
            </div>
            <div className="grid">
                <ul>{grid}</ul>
            </div>
        </div>
    )
    
}

export default Cultivos