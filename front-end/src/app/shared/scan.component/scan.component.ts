import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { fade } from '../animation';
import {FormGroup, FormControl} from '@angular/forms';
import {EPCISIRISService} from '../../services/epcis-iris.service';
@Component({
  providers:[
    EPCISIRISService],
  selector: 'scan',
  templateUrl: './scan.component.html',
  styleUrls: ['./scan.component.css'],
  animations: fade
})
export class ScanComponent implements OnInit {
  @Input() function: string;
  @Output() doneEvent = new EventEmitter();
  scanForm = new FormGroup({
    locFrName: new FormControl('')
  })
  choice = 2;
  state = 'out';
  counter = 0;
  enableAnimation = false;
  imageSource = '';
  isScanLocation = false;
  dischargeImageSource = 'assets/img/DischargeSummary.jpg';
  TTABagImageSource = 'assets/img/LocationBarcode.jpg';
  pigeonholeBarcodeImageSource = 'assets/img/PigeonHoleForWardBarcode.jpg'
  constructor(
    private epcisIRISservice: EPCISIRISService
  ){
    this.scanForm.setValue({'locFrName':''})
  }

  ngOnInit() {
    this.imageSource = ''
    this.setAttributes();
  }

  onClick() {
    this.chooseImage();
    this.enableAnimation = true;
    //this.counter = 0;
    this.toggleState();
  }
  
  setAttributes() {
    let scanButtonElem: HTMLElement = document.getElementById("scanButton")
    let scanDocElem: HTMLElement = document.getElementById("scanDoc")
    //console.log("button", scanButtonElem);
    //console.log("doc", scanDocElem);
    console.log(this.function, "Scan function...")
    if (this.function == "discharge")
    {
      scanDocElem.setAttribute("width","400px");
      scanButtonElem.style.marginLeft = "270px";
    }
    else if (this.function == "pigeonHole")
    {
      scanDocElem.setAttribute("width","400px");
      scanButtonElem.style.marginLeft = "270px";
    }
    else if (this.function == "scanLocation")
    {
      scanDocElem.setAttribute("width","150px");
      scanButtonElem.style.marginLeft = "145px";
    }

  }

  chooseImage() {
    let scanButtonElem: HTMLElement = document.getElementById("scanButton")
    let scanDocElem: HTMLElement = document.getElementById("scanDoc")
    if (this.function == "discharge")
    {
      this.imageSource = this.dischargeImageSource;
      scanDocElem.setAttribute("width","400px");
      scanButtonElem.style.marginLeft = "270px";
    }
    else if (this.function == "pigeonHole")
    {
      this.imageSource = this.TTABagImageSource;
      scanDocElem.setAttribute("width","400px");
      scanButtonElem.style.marginLeft = "270px";
    }
    else if (this.function == "scanLocation")
    {
      this.imageSource = this.pigeonholeBarcodeImageSource;
      scanDocElem.setAttribute("width","150px");
      scanButtonElem.style.marginLeft = "145px";
    }
  }

  toggleState() {
    if (this.counter < 2) {
      this.state = this.state === 'in' ? 'out' : 'in';
      this.counter++;
      document.getElementById("scanButton").innerText = "Capture"
    }
    if (this.counter == 2)
    {
      this.submit();
    }
  }

  onSubmit(){
    if (this.function == "discharge")
    {
      this.epcisIRISservice.linkDischarge().subscribe((data: any) => {
        //this.reset()
        console.log("Link Discharge", data, "success");

      }, error => {
        console.warn("There was an error in link discharge process", error);
      })
    }
    else if (this.function == "pigeonHole")
    {
      this.epcisIRISservice.linkPigeonHole().subscribe((data: any) => {
        //this.reset()
        console.log("Link Pigeonhole", data, "success");

      }, error => {
        console.warn("There was an error in link pigeonhole process", error);
      }) 
    }
    else if (this.function == "scanLocation")
    {
      var JSONString = JSON.stringify({"testVal":"1"})
      this.epcisIRISservice.scanLocation(JSONString).subscribe((data: any) => {
        //this.reset()
        let locFriendlyName = this.extractLocationFriendlyName(data);
        console.log("Scan location", locFriendlyName, "success");
        this.scanForm.setValue({'locFrName':locFriendlyName})

      }, error => {
        let locFriendlyName = this.extractLocationFriendlyName(error.error.text);
        console.warn("There is something weird in scan location process", locFriendlyName);
        this.scanForm.setValue({'locFrName':locFriendlyName})
      })
      this.isScanLocation = true;
  }
}

  submit() {
    this.onSubmit();
    this.doneEvent.emit(this.function)
    }
  
  extractLocationFriendlyName(response: string): string {
    let startLocPos = response.indexOf("\"friendlyDescriptionPurpose\":\"");
    let startTagsPos = response.indexOf("\",\"tags\"");
    let lenOfIdentifier = ("\"friendlyDescriptionPurpose\":\"").length;
    return response.substr(startLocPos+lenOfIdentifier, startTagsPos-startLocPos-lenOfIdentifier);
  }
}
