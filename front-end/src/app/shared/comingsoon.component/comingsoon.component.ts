import { Component, OnInit, Input } from '@angular/core';
import { element } from 'protractor';

@Component({
  selector: 'comingsoon',
  templateUrl: './comingsoon.component.html',
  styleUrls: ['./comingsoon.component.css']
})

export class ComingSoonComponent implements OnInit {
  @Input() component: string;
  constructor() {
   }

  setWidth() {
    let elem: HTMLElement = document.getElementById("csImage");
    if (this.component == "tablet") {
      elem.setAttribute("width","300px");
    }
    else if (this.component == "smartphone") {
      elem.setAttribute("width","170px");
    }
  }
  ngOnInit(): void {
    this.setWidth();
  }

}