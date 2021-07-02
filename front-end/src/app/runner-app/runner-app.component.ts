import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-runner-app',
  templateUrl: './runner-app.component.html',
  styleUrls: ['./runner-app.component.css']
})
export class RunnerAppComponent implements OnInit {

  constructor() { }
  isidentifyLocation = false;
  isRetrieveItems = false;
  isComingSoon = false;

  ngOnInit(): void {
  }

  loadContent(selection: String)
  {
    if (selection == 'identifyLocation'){
      this.isComingSoon = false;
      this.isidentifyLocation=true;
      this.isRetrieveItems = false;
    }
    else if (selection == 'retrieveItems'){
      this.isidentifyLocation=false;
      this.isComingSoon = false;
      this.isRetrieveItems = true;
    }
    else if (selection == 'comingsoon'){
      this.isidentifyLocation=false;
      this.isComingSoon = true;
      this.isRetrieveItems = false;
    }
  }
}
