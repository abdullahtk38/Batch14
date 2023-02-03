import { LightningElement } from 'lwc';

export default class TwoWayDataBinding extends LightningElement {
    fullName = 'ABDULLAH TAS';
    course = 'LIGHTNING WEB COMPONENT';

    changeHandler(event){
        this.course = event.target.value;
        
    }
}