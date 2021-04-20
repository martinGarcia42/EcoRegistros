import React from 'react'; 
import { BrowserRouter as Router, Link } from 'react-router-dom';

const Cultivo = (props) => {
    return (
        <div className="card">
            <div className="cultivo-name">{props.attributes.name}</div>
            <div className="cultivo-variedad">{props.attributes.variedad}</div>
            <div className="cultivo-plantas">{props.attributes.plantas}</div>
            <div className="cultivo-observaciones">{props.attributes.observaciones}</div>
            <div className="cultivo-link">
                <Link to={`/cultivos/${props.attributes.id}`}>View Cultivo</Link>
            </div>
        </div>
    );
}

export default Cultivo;