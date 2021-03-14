import React, { useState, useEffect, Fragment } from 'react' 
import axios from 'axios'
import Parcela from './Parcela'

const Parcelas = () => {
    const [parcelas, setParcelas] = useState([])

    useEffect(()=> {
    axios.get('/api/v1/parcelas.json')
      .then( resp => {
          setParcelas(resp.data.data)
      })
      .catch( resp => console.log(resp) )
    }, [parcelas.length])
    
    const grid = parcelas.map( item => {
        return (
            <Parcela key={item.attributes.id}
            attributes={item.attributes}
            />
        )
    })

    return (
        <div className="parcelas">
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

export default Parcelas