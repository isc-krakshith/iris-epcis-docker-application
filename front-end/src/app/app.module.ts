import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { MaterialModule } from './shared/material-module';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule } from '@angular/common/http';
import { MAT_DATE_LOCALE } from '@angular/material/core';

import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { AdmissionFormComponent } from './admission-form/admission-form.component';
import { PharmacyUiComponent } from './pharmacy-ui/pharmacy-ui.component';
import { RunnerAppComponent } from './runner-app/runner-app.component';
import { MessagesComponent } from './messages/messages.component';
import { ScanComponent } from './shared/scan.component/scan.component';
import { ComingSoonComponent } from './shared/comingsoon.component/comingsoon.component';
import { GenLabelComponent } from './pharmacy-ui/gen-label/gen-label.component';
import { RetrieveItemsComponent } from './runner-app/retrieve-items/retrieve-items.component';
import { PresentationComponent } from './presentation/presentation.component';
import { InstructionsComponent } from './presentation/instructions/instructions.component';

@NgModule({
  declarations: [
    AppComponent,
    AdmissionFormComponent,
    PharmacyUiComponent,
    RunnerAppComponent,
    MessagesComponent,
    ScanComponent,
    ComingSoonComponent,
    GenLabelComponent,
    RetrieveItemsComponent,
    PresentationComponent,
    InstructionsComponent
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    MaterialModule,
    FormsModule,
    ReactiveFormsModule,
    HttpClientModule
  ],
  providers: [
    {provide: MAT_DATE_LOCALE, useValue: 'en-GB'}
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
