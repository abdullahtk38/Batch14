import { LightningElement } from 'lwc';

export default class ConditionalRandiring extends LightningElement {
    showContent = true;

    handleClick(){
        this.showContent = !this.showContent;
    }

}