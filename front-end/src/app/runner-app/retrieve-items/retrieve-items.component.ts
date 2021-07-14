import { Component, OnInit } from '@angular/core';
import {FormGroup, FormControl} from '@angular/forms';
import {ThemePalette} from '@angular/material/core';
import {EPCISIRISService} from '../../services/epcis-iris.service';

export interface Task {
  name: string;
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
  retrieveItemsForm = new FormGroup({
    location: new FormControl('')
  })
  
  isListVisible = false;

  task: Task = {
    name: 'All Picked',
    completed: false,
    color: 'primary',
    subtasks: [
      {"name":"  Fridge", "completed":false, "color": "primary"},
      {"name":"  Controlled Items Safe", "completed":false, "color": "primary"},
      {"name":"  Pigeon Hole", "completed":false, "color": "primary"}]
  };

  allComplete: boolean = false;

  constructor(
    private epcisIRISservice: EPCISIRISService
  ) {
    this.retrieveItemsForm.setValue({location: 'Monkswell Ward'});
  }
  
  updateAllComplete() {
    this.allComplete = this.task.subtasks != null && this.task.subtasks.every(t => t.completed);
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
    })
    this.isListVisible = true;
  }

  getItems(){
    console.log("Getting Items...");
    this.ongetItems();
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

