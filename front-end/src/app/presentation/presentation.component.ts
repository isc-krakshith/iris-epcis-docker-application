import { Component, OnInit } from '@angular/core';
import { EPCISIRISService } from '../services/epcis-iris.service';

@Component({
  providers:[
    EPCISIRISService],
  selector: 'app-presentation',
  templateUrl: './presentation.component.html',
  styleUrls: ['./presentation.component.css']
})
export class PresentationComponent implements OnInit {
  showInstructions: boolean = false;
  constructor(
    private urlChecker: EPCISIRISService
    ) { }

  ngOnInit(): void {
    this.showInstructions = false;
  }

  moveToSelectedTab(tabName: string) {
    for (
      let i = 0;
      i < document.querySelectorAll('.mat-tab-label-content').length;
      i++
    ) {
      if (
        (<HTMLElement>document.querySelectorAll('.mat-tab-label-content')[i])
          .innerText == tabName
      ) {
        (<HTMLElement>document.querySelectorAll('.mat-tab-label')[i]).click();
      }
    }
  }

  onShowHide() {
    this.showHideInstructions();
  }

  showHideInstructions() {
    if (this.showInstructions) {
      document.getElementById("showHideButton").innerText = "Show Instructions";
      this.showInstructions = false;
    }
    else {
      document.getElementById("showHideButton").innerText = "Hide Instructions";
      this.showInstructions = true;
    }
  }

  openInNewTab(destination: string) {
    let url:string = '';
    url = this.urlChecker.getBackendIP();
    if (destination == 'production')
    {
      url = url+':52773/csp/healthshare/epcis/EnsPortal.ProductionConfig.zen?PRODUCTION=EPCIS.intersystems.Production'
    }
    else if (destination == 'messages') {
      url = url + ':52773/csp/healthshare/epcis/EnsPortal.MessageViewer.zen'
    }
    else if (destination == 'BPL') {
      url = url + ':52773/csp/healthshare/epcis/EnsPortal.BPLEditor.zen?BP=EPCIS.intersystems.HL7toLocationProcess.bpl'
    }
    window.open(url, '_blank','location=yes,height=1080,width=1920,scrollbars=yes,status=yes').focus();
  }

  openIRISTabs()
  {
    let url:string = '';
    url = this.urlChecker.getBackendIP();
    url = url + ':52773/csp/healthshare/epcis/EnsPortal.';
    let production:string = 'ProductionConfig.zen?PRODUCTION=EPCIS.intersystems.Production';
    let messages: string = 'MessageViewer.zen';
    let BPL: string = 'BPLEditor.zen?BP=EPCIS.intersystems.HL7toLocationProcess.bpl';
    window.open(url+BPL, '_blank').focus();
    window.open(url+messages, '_blank').focus();
    window.open(url+production, '_blank').focus();
  }

}
