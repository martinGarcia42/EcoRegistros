import React, { useState, useEffect } from 'react'  
import axios from 'axios'


const Cultivo = (props) => {
    const [Cultivo, setCultivo] = useState({props})
    //const [cultivo, setCultivo] = useState({})

    useEffect(()=> {
        //api/v1/cultivos/id
        //gets id passed through url to be used to find Cultivo
        const ID = props.match.params.id
        const url = `http://localhost:3000/api/v1/cultivos/${ID}`
        
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
export default Cultivo