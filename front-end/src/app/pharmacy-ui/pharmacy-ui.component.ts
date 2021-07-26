import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-pharmacy-ui',
  templateUrl: './pharmacy-ui.component.html',
  styleUrls: ['./pharmacy-ui.component.css']
})
export class PharmacyUiComponent implements OnInit {

  constructor() { }
  isScanDischarge = false;
  isScanPigeonHole = false;
  isComingSoon = false;
  isGenLabel = false;

  ngOnInit(): void {
  }

  reset() {
    setTimeout(() => {
      this.loadContent('resetview');
    }, 3500);
  }

  loadContent(selection: String)
  {
    if (selection == 'scanDischarge'){
      this.isComingSoon = false;
      this.isScanPigeonHole=false;
      this.isScanDischarge = true;
      this.isGenLabel = false;
    }
    else if (selection == 'scanPigeonHole'){
      this.isScanPigeonHole=true;
      this.isScanDischarge = false;
      this.isComingSoon = false;
      this.isGenLabel = false;
    }
    else if (selection == 'comingsoon'){
      this.isScanPigeonHole=false;
      this.isScanDischarge = false;
      this.isComingSoon = true;
      this.isGenLabel = false;
    }
    else if (selection == 'genlabel'){
      this.isScanPigeonHole=false;
      this.isScanDischarge = false;
      this.isComingSoon = false;
      this.isGenLabel = true;
    }
    else if (selection == 'resetview'){
      this.isScanPigeonHole=false;
      this.isScanDischarge = false;
      this.isComingSoon = false;
      this.isGenLabel = false;
    }

  }

}
