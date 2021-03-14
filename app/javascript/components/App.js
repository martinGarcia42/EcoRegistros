import React from 'react' 
import { Route, Switch } from 'react-router-dom'
import Farm from './Farm/Farm'
import Parcelas from './Parcelas/Parcelas'
import Parcela from './Parcela/Parcela'

const App = () => {
    return (
        <Switch> 
            <Route exact path="/farms" component = {Farm}/>
            <Route exact path="/parcelas" component={Parcelas}/>
            <Route exact path="/parcelas/:id" component={Parcela}/>
        </Switch>
    )
}

export default App