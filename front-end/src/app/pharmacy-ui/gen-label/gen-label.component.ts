import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import {FormGroup, FormControl} from '@angular/forms';
import {EPCISIRISService} from '../../services/epcis-iris.service';

@Component({
  providers:[
    EPCISIRISService],
  selector: 'pharmacy-gen-label',
  templateUrl: './gen-label.component.html',
  styleUrls: ['./gen-label.component.css']
})

export class GenLabelComponent implements OnInit {
  @Output() doneEvent = new EventEmitter();
  genLabelForm = new FormGroup({
    pas: new FormControl(''),
    date: new FormControl (''),
    locId: new FormControl (''),
    inSpId: new FormControl()
  })
  imageSource= 'assets/img/medicineslabel.jpg';
  displayLabel= false;
  disableSpellButton= false;
  disableLocationButton = true;
  disableGenerateLabelButton=true;
  constructor(
    private epcisIRISservice: EPCISIRISService
  ) {
    this.genLabelForm.setValue({pas: 'F10105250552084', date: (new Date().toISOString()), inSpId: '', locId: ''});
  }

  onSubmit(){}
  
  ongetSpId() {
    // TODO: Use EventEmitter with form value
    console.log(this.genLabelForm.value);
    var JSONString = JSON.stringify(this.genLabelForm.value)
    
    this.epcisIRISservice.getInpatientSpellId(JSONString).subscribe((data: any) => {
      //this.reset()
      var spellId = data.EventQueryResult[0].EPCISBody.EventList.TransactionEvent[0].any[1];

      console.log("Success", spellId, "success");
      this.genLabelForm.setValue({pas: 'F10105250552084', date: (new Date().toISOString()), inSpId:this.extractInpatientSpellId(spellId), locId: ''  });
      this.disableSpellButton= true;
      this.disableLocationButton = false;
      //(data.EventQueryResult[0].EPCISBody.EventList.TransactionEvent[0].any[1])

    }, error => {
      console.warn("There was an error in retrieving inpatient spell id", error);
    })
  }

  getSpId(){
    console.log("Getting Spell Id...");
    this.ongetSpId();
  }
  onGetLocId() {
    // TODO: Use EventEmitter with form value
    console.log(this.genLabelForm.value);
    var JSONString = JSON.stringify(this.genLabelForm.value)
    
    this.epcisIRISservice.getPatientLocationId(JSONString).subscribe((data: any) => {
      //this.reset()
      var locationId = data.EventQueryResult[0].EPCISBody.EventList.ObjectEvent[0].bizLocation.id;

      console.log("Success", locationId, "success");
      this.genLabelForm.setValue({pas: 'F10105250552084', date: (new Date().toISOString()), inSpId: this.genLabelForm.getRawValue().inSpId,locId: locationId  });
      this.disableLocationButton = true;
      this.disableGenerateLabelButton=false;
      //(data.EventQueryResult[0].EPCISBody.EventList.TransactionEvent[0].any[1])

    }, error => {
      console.warn("There was an error in retrieving patient location id", error);
    })
  }

  getLocId(){
    console.log("Getting location Id...");
    this.onGetLocId();
  }

  onGenLabel() {
    this.disableGenerateLabelButton=true;
    this.displayLabel=true;
  }

  genLabel() {
    console.log("Generating label...");
    this.onGenLabel();
    this.doneEvent.emit('gen-label')
  }
  submitted = false;

  ngOnInit() {
  }

  private _filter(value: string): string[] {
    const filterValue = value.toLowerCase();

    return;
  }
 
  reset() {
    this.genLabelForm.setValue({pas: '', date:'', inSpId:'', locId: ''});
    this.submitted = false;
  }

  extractInpatientSpellId(xmlstring: string): string{
    
    /*look for end of opening xml tag
    <nhs:inpatientSpellId *>* 4567890</nhs:inpatientSpellId>*/
    var openTagEndPos = xmlstring.indexOf(">");
    
    /*look for start of closing xml tag
    <nhs:inpatientSpellId>4567890 *<* /nhs:inpatientSpellId>*/
    var closeTagStartPos = xmlstring.indexOf("</");

    //inPatientSpellId is the part beween the two locations
    return xmlstring.substr(openTagEndPos+1, closeTagStartPos-openTagEndPos-1);
  }

 }
