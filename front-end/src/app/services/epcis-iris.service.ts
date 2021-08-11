import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { Observable, of, throwError } from 'rxjs';
import { catchError, tap } from 'rxjs/operators';
import { MessageService } from './message.service';
import { environment } from 'src/environments/environment'

@Injectable({
  providedIn: 'root'
})

export class EPCISIRISService {

  constructor(
    private http: HttpClient,
    private messageService: MessageService) { }

  private log(message: string) {
    this.messageService.add(`EPCIS Service: ${message}`);
  }

  private handleError<T>(operation = 'operation', result?: T) {
    return (error: any): Observable<T> => {

      // TODO: better job of transforming error for user consumption
      this.log(`${operation} failed: ${error.message}`);

      // Let the app keep running by returning an empty result.
      return of(result as T);
    };
  }

  getServerAddress():string{
    //lets first determine where  front-end is running
    let thislocation = location.toString()

    //find the location of the ':' which precedes the port
    //it is effectively the final ':' in the location string
    let portMarker = thislocation.lastIndexOf(':');

    //find the begining of the server path
    //this is the '/' which follows the port
    let pathMarker = thislocation.indexOf('/', portMarker);

    let serverHostURL = '';
    let serverPort = '';

    if (thislocation.indexOf('csp') > 0/*ends with csp/epcis/index.html*/ )
    {
      //front-end is hosted on IRIS's webserver
      //determining server address is a no-brainer
      //as the address is part of the location string

      //find the substring from start up to and including the port
      //(short of the first '/' after the port )
      serverHostURL = thislocation.substr(0,pathMarker);
    }
    else{
      //front-end is running independently in an angular container
      //If backend IP and PORT are not specified to ng at build time
      //via environment variables: HOST_IP and HOST_PORT
      //environment.apiURL and environment.apiPORT will be empty strings
      //and so we have more work to do
      if ((environment.apiURL==="localhost")||(environment.apiURL==="")) {
      //find the substring from start up to the port marker ':' )

      serverHostURL = thislocation.substr(0,portMarker);
      }
      else {
        serverHostURL = 'http://'.concat(environment.apiURL)
      }
      if ((environment.apiPORT==="52773")||(environment.apiPORT==="")){
        serverPort = "52773";
      }
      else{
        serverPort = environment.apiPORT;
      }
      serverHostURL = serverHostURL.concat(':').concat(serverPort);
    }
    return serverHostURL
  }

  // It appears unnecessary to create http options / headers
  // for ths application, but included for completeness of solution
  httpOptions = {
    headers: new HttpHeaders({ 
      'Content-Type': 'application/json',
      'responseType': 'json'})
  };

  httpBlobOptions = {
    headers: new HttpHeaders({ 
      'Content-Type': 'application/json',
      'responseType': 'blob'})
  };

  httpTextOptions = {
    headers: new HttpHeaders({ 
      'Content-Type': 'application/json',
      'responseType': 'text'})
  };

  httpArrayBufferOptions = {
    headers: new HttpHeaders({ 
    'Content-Type': 'application/json',
    'responseType': 'arraybuffer'})
  };

  admitPatient(admitForm: any):Observable<any> {
    const headers = new HttpHeaders()
    let url = this.getServerAddress().concat('/query/demoStep1')
    return this.http.post<any>(url, admitForm,this.httpOptions)
    .pipe(
      tap((newAdmit: any) => this.log('Admit: ' + `${newAdmit.PAS}`)),
      catchError(this.handleError<any>('admitPatient')))
  }

  linkDischarge():Observable<any> {
    const headers = new HttpHeaders()
    let url = this.getServerAddress().concat('/query/demoStep2')
    return this.http.get<any>(url)
    .pipe(
      tap((newLink: any) => this.log('Link Discharge Document: '+`${newLink}`)),
      catchError(this.handleError<any>('linkDischarge')))
  }

  getInpatientSpellId(genLabelForm: any):Observable<any> {
    const headers = new HttpHeaders()
    let url = this.getServerAddress().concat('/query/demoStep3')
    return this.http.get<any>(url, genLabelForm)
    .pipe(
      tap((any: any) => this.log('Inpatient Spell Id: '+`${any.EventQueryResult[0].EPCISBody.EventList.TransactionEvent[0].any[1]}`)),
      catchError(this.handleError<any>('getInpatientSpellId')))

  }

  getPatientLocationId(genLabelForm: any):Observable<any> {
    const headers = new HttpHeaders()
    let url = this.getServerAddress().concat('/query/demoStep4')
    return this.http.get<any>(url, genLabelForm)
    .pipe(
      tap((any: any) => this.log('Patient Location Id: '+`${any.EventQueryResult[0].EPCISBody.EventList.ObjectEvent[0].bizLocation.id}`)),
      catchError(this.handleError<any>('getPatientLocationId')))

  }

  linkPigeonHole():Observable<any> {
    const headers = new HttpHeaders()
    let url = this.getServerAddress().concat('/query/demoStep5')
    return this.http.get<any>(url)
    .pipe(
      tap((newLink: any) => this.log('Link Pigeon Hole : '+`${newLink}`)),
      catchError(this.handleError<any>('linkPigeonhole')))
  }

  scanLocation(testPayload:any):Observable<any> {
    const headers = new HttpHeaders()
    let url = this.getServerAddress().concat('/query/demoStep6')
    return this.http.get<any>(url,testPayload)
    .pipe(
      tap((any: any) => this.log('Scan location : '+`${any}`)),
      //Sorry this is a hack... Complete REST response can be seen in the REST CALL LOGS TAB
      //but it cannot be parsed and an http parsing error is reported.
      //Below we are effectively making the error OK :-|
      catchError((any) => {
        this.log('Scan location : ' /*'+ `${any.error.error}` + " Response follows... : '*/ + `${any.error.text}`);
        return throwError(any);
      }))
  }

  retrieveItems(retrieveForm: any):Observable<any> {
    const headers = new HttpHeaders()
    let url = this.getServerAddress().concat('/query/demoStep7')
    return this.http.get<any>(url,retrieveForm)
    .pipe(
      tap((any: any) => this.log('Retrieve Items : '+`${any}`)),
      //Sorry this is a hack... Complete REST response can be seen in the REST CALL LOGS TAB
      //but it cannot be parsed and an http parsing error is reported.
      //Below we are effectively making the error OK :-|
      catchError((any) => {
        this.log('Retrieve Items : ' /*'+ `${any.error.error}` + " Response follows... : '*/ + `${any.error.text}`);
        return throwError(any);
      }))
  }

  setBizstepDeparting():Observable<any> {
    const headers = new HttpHeaders()
    let url = this.getServerAddress().concat('/query/demoStep9/departing')
    return this.http.get<any>(url)
    .pipe(
      tap((bizstep: any) => this.log('BizStep Departing: ' + `${bizstep}`)),
      catchError(this.handleError<any>('set bizStep departing')))
  }

  dischargePatient(admitForm: any):Observable<any> {

    const headers = new HttpHeaders()
    let url = this.getServerAddress().concat('/query/demoStep8')
    return this.http.post<any>(url, admitForm,this.httpOptions)
    .pipe(
      tap((newDischarge: any) => this.log('Discharge: ' + `${newDischarge.PAS}`)),
      catchError(this.handleError<any>('dischargePatient')))
  }

}
