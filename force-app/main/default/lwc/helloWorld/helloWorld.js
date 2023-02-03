import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    name;
    age =25;
    fullName = 'Salesforce LWC';
    check = true;

    detail ={
        name: "Ahmet",
        place: "Turkey"
    };
    birds = ["kanarya", "crow","papagan"];



}