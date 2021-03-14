import React from 'react' 
import { BrowserRouter as Router, Link } from 'react-router-dom'

const Parcela = (props) => {
    return (
        <div className="card">
            <div className="parcela-name">{props.attributes.name}</div>
            <div className="parcela-tipo">{props.attributes.tipo}</div>
            <div className="parcela-link">
                <Link to={`/parcelas/${props.attributes.id}`}>View Parcela</Link>
            </div>
        </div>
    )
}

export default Parcela