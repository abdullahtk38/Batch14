import { LightningElement, track } from 'lwc';
export default class LwcListEditable extends LightningElement {
    name1;
    @track selected=[];
    @track myList =[ "Salih","Bega"];

    addName(event){
        this.name1=event.target.value;
        let newList = this.myList;
        
        newList.push(this.name1);
        this.myList = newList;
    }
    pickName(event){
        if(event.target.name=="bir"){
            let newList = [];
            for(let i = 0; i < 1; i++){
                newList.push(this.myList[Math.floor(Math.random()*this.myList.length)]);
            }  
            this.selected=newList;
        }
        if(event.target.name=="iki"){ 
            let newList = [];
            let newList2 = [];
            newList=this.myList;
            newList=[newList].sort(() => Math.random() - 0.5);
           
            const a= newList[0];
            const b= newList[1];

            newList2.push(a,b);
            this.selected=newList2;
        }
        if(event.target.name=="üç"){ 
                let newList = [ß];
                let newList2 = [];
                newList=this.myList;
                newList=[newList].sort(() => Math.random() - 0.5);
                
                const a= newList[0];
                const b= newList[1];
                const c= newList[2];
    
                newList2.push(a,b,c);
                this.selected=newList2;        
        }
    }       
}    
   