import React, { useState, useEffect } from 'react'  
import axios from 'axios'


const Parcela = (props) => {
    const [parcela, setParcela] = useState({})
    const [cultivo, setCultivo] = useState({})

    useEffect(()=> {
        //api/v1/parcelas/id
        //gets id passed through url to be used to find parcela
        const ID = props.match.params.id
        const url = `api/v1/parcelas/${ID}`
        
    axios.get(url)
      .then( resp => console.log(resp) )
      .catch( resp => console.log(resp) )
    }, [])
    
    return (
        <div className="wrapper">
            <div className="column">
                <div className="header"></div>
                <div className="cultivs"></div>
            </div>
        </div>
    )
}    
export default Parcela