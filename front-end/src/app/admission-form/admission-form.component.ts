import { Component, OnInit } from '@angular/core';
import {FormGroup, FormControl} from '@angular/forms';

import {EPCISIRISService} from '../services/epcis-iris.service';

@Component({
  providers:[
    EPCISIRISService],
  selector: 'app-admission-form',
  templateUrl: './admission-form.component.html',
  styleUrls: ['./admission-form.component.css']
})
export class AdmissionFormComponent implements OnInit{
  admitForm = new FormGroup({
    firstName: new FormControl(''),
    lastName: new FormControl(''),
    mrn: new FormControl(''),
    date: new FormControl ('')
  })
  constructor(
    private epcisIRISservice: EPCISIRISService
  ) {
    this.admitForm.setValue({firstName:'Jane', lastName:'Doe', mrn: 'T918273', date: (new Date().toISOString())});

   }
  onSubmit(){}
  
  onAdmit() {
    // TODO: Use EventEmitter with form value
    console.log(this.admitForm.value);
    var JSONString = JSON.stringify(this.admitForm.value)
    
    this.epcisIRISservice.admitPatient(JSONString).subscribe((data: any) => {
      //this.reset()
      console.log("Admit process: ", data, "success");

    }, error => {
      console.warn("There was an error in admit process", error);
    })
  }

  onDischarge() {
    // TODO: Use EventEmitter with form value
    console.log(this.admitForm.value);
    var JSONString = JSON.stringify(this.admitForm.value)
    
    this.epcisIRISservice.dischargePatient(JSONString).subscribe((data: any) => {
      //this.reset()
      console.log("Discharge process: ", data, "success");

    }, error => {
      console.warn("There was an error in discharge process", error);
    })
  }

  admit(){
    console.log("Admitting...");
    this.onAdmit();
  }

  discharge(){
    console.log("Discharging...");
    this.onDischarge();
  }
  submitted = false;

  ngOnInit() {
  }

  private _filter(value: string): string[] {
    const filterValue = value.toLowerCase();

    return;
  }

  reset() {
    this.admitForm.setValue({firstName:'', lastName:'', mrn: '', date:''});
    this.submitted = false;
  }
}
