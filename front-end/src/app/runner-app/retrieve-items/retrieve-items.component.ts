import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import {FormGroup, FormControl} from '@angular/forms';
import {ThemePalette} from '@angular/material/core';
import {EPCISIRISService} from '../../services/epcis-iris.service';

export interface Task {
  name: string;
  quantity: number;
  completed: boolean;
  color: ThemePalette;
  subtasks?: Task[];
}
@Component({
  selector: 'app-retrieve-items',
  templateUrl: './retrieve-items.component.html',
  styleUrls: ['./retrieve-items.component.css']
})
export class RetrieveItemsComponent implements OnInit {
  @Output() doneEvent= new EventEmitter();
  retrieveItemsForm = new FormGroup({
    location: new FormControl('')
  })
  
  isListVisible = false;
  numItemsFridge:number = 0;
  numItemsSafe:number = 0;
  numItemsPigeonhole:number = 0;
  totalItems:number = 0;

  task: Task = {
    name: 'All Picked',
    quantity: this.totalItems,
    completed: (this.totalItems? false:true),
    color: 'primary',
    subtasks: [
      {"name":"  Fridge", "quantity":this.numItemsFridge, "completed":this.numItemsFridge? false:true , "color": "primary"},
      {"name":"  Controlled Items Safe", "quantity":this.numItemsSafe, "completed":this.numItemsSafe? false:true, "color": "primary"},
      {"name":"  Pigeon Hole", "quantity":this.numItemsPigeonhole, "completed":false, "color": "primary"}]
  };

  allComplete: boolean = false;

  constructor(
    private epcisIRISservice: EPCISIRISService
  ) {
    this.retrieveItemsForm.setValue({location: 'Monkswell Ward'});
  }
  
  updateAllComplete() {
    this.allComplete = this.task.subtasks != null && this.task.subtasks.every(t => t.completed);
    this.checkAllComplete();
  }

  someComplete(): boolean {
    if (this.task.subtasks == null) {
      return false;
    }
    return this.task.subtasks.filter(t => t.completed).length > 0 && !this.allComplete;
  }

  setAll(completed: boolean) {
    this.allComplete = completed;
    if (this.task.subtasks == null) {
      return;
    }
    this.task.subtasks.forEach(t => t.completed = completed);
    this.checkAllComplete()
  }

  checkAllComplete() {
    if (this.allComplete) {
      this.doneEvent.emit('retrieve-items')
      //all items collected, set EPCIS bizstep to "departing"
      this.setBizstepDeparting()
    }
  }

  updateList(qty:number) {
    this.task.quantity = qty;
    this.task.subtasks[2].quantity = qty
  }

  onSubmit(){}
  
  ongetItems() {
    // TODO: Use EventEmitter with form value
    console.log(this.retrieveItemsForm.value);
    var JSONString = JSON.stringify(this.retrieveItemsForm.value)
    
    this.epcisIRISservice.retrieveItems(JSONString).subscribe((data: any) => {
      //this.reset();

      console.log("Success", data, "success");
      this.retrieveItemsForm.setValue({location: 'Monkswell Ward'});

    }, error => {
      console.warn("There is something weird in retrieve items process", error);
      this.updateList(this.getQty(error.error.text))
    })
    this.isListVisible = true;
  }

  getItems(){
    console.log("Getting Items...");
    this.ongetItems();
  }

  getQty(data: string):number {
    //we apportion the total quantity from the FHIR message to the three locations
    //somewhat "dubiously" for now...
    console.log("getQty ", data)
    let qtyPos = data.indexOf('\"quantity\"');
    let valPos = data.indexOf('\"value\"', qtyPos);
    let colPos = data.indexOf(':', valPos); //position of colon following 'value'
    let clsBracePos = data.indexOf('}',colPos); //position of closing curly brace
    //sanity check see what we are reading
    //console.log("qty: ", qtyPos, ": val: ", valPos, "; colon: ", colPos, "; brace: ", clsBracePos)
    //the value of interest is between colPos and clsBracePos less 1
    let quantity: string = data.substr((colPos+1), (clsBracePos-colPos-1))
    //console.log("quantity: ", quantity)
    return Number(quantity)
  }

  setBizstepDeparting() {
    this.epcisIRISservice.setBizstepDeparting().subscribe((data: any) => {
      //this.reset()
      console.log("Bizstep set to departing", data, "success");

    }, error => {
      console.warn("There was an error in set bizstep departing process", error);
    })
  }
  submitted = false;

  ngOnInit() {
  }

  private _filter(value: string): string[] {
    const filterValue = value.toLowerCase();

    return;
  }
 
  reset() {
    this.retrieveItemsForm.setValue({location: ''});
    this.submitted = false;
  }

 }

