import React, { useState, useEffect } from 'react'  
import axios from 'axios'
import Cultivos from './../Cultivos/Cultivos'

const Parcela = (props) => {
    const [parcela, setParcela] = useState({})
    const [cultivs, setCultivs] = useState({})

    useEffect(()=> {
        //api/v1/parcelas/id
        //gets id passed through url to be used to find parcela
        const ID = props.match.params.id
        const url = `http://localhost:3000/api/v1/parcelas/${ID}`
        
    axios.get(url)
      .then( resp => {
          setParcela(resp.data.data)
          setCultivs(resp.data.data.relationships.cultivos.data)
          console.log(resp.data.data.relationships.cultivos.data)
      } )
      .catch( resp => console.log(resp) )
    }, [cultivs.length])

    
    const grid = cultivs.map( item => {
        return (
            <div>
                <Cultivos key={cultivs.id} />
            </div>
            
        )
    })
    
    return (
        <div className="wrapper">
            <div className="column">
                <div className="parcela-name">{parcela.attributes.name}</div>
                <div className="parcela-tipo">{parcela.attributes.tipo}</div>
                <div className="cultivs">
                    <div className="grid">
                        <ul>{grid}</ul>
                    </div>
                </div>
            </div>
        </div>
    )
}    
export default Parcela