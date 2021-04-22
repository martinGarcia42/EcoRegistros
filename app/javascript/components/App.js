import React from 'react' 
import { Route, Switch } from 'react-router-dom'
import Farm from './Farm/Farm'
import Parcelas from './Parcelas/Parcelas'
import Parcela from './Parcela/Parcela'
import Cultivos from './Cultivos/Cultivos'
import Cultivo from './Cultivo/Cultivo'




const App = () => {

    return (
        <Switch> 
            <Route exact path="/farm" component = {Farm}/>
            <Route exact path="/parcelas" component={Parcelas}/>
            <Route exact path="/parcelas/:id" component={Parcela}/>
            <Route exact path="/cultivos" component={Cultivos}/>
            <Route exact path="/cultivos/:id" component={Cultivo}/>
        </Switch>
    )
}

export default App