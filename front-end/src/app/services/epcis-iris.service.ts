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

  getBackendIP():string {
    //when the front end is run in an angular container
    //environment.apiURL will be an empty string IF backend IP address
    //is not provided to ng at build time, environment variable HOST_IP
    if ((environment.apiURL==="localhost")||(environment.apiURL==="")) {
      //If it is set to 'localhost', it is still possible that
      //that the angular content is being served remotely
      //Then the most reliable way to find the IP address of the container
      //is to read it from the browser adddress bar
      // so return the substring between 'http://' and the port marker ':' */
      let thislocation = location.toString()
      thislocation = thislocation.substr(7,(thislocation.indexOf(':',7)-7));
      return 'http://'+thislocation;
    }
    else {
      return 'http://'+environment.apiURL;
    }
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
    let url = this.getBackendIP()+':52773/query/demoStep1'
    return this.http.post<any>(url, admitForm,this.httpOptions)
    .pipe(
      tap((newAdmit: any) => this.log('Admit: ' + `${newAdmit.PAS}`)),
      catchError(this.handleError<any>('admitPatient')))
  }

  linkDischarge():Observable<any> {
    const headers = new HttpHeaders()
    let url = this.getBackendIP()+':52773/query/demoStep2'
    return this.http.get<any>(url)
    .pipe(
      tap((newLink: any) => this.log('Link Discharge Document: '+`${newLink}`)),
      catchError(this.handleError<any>('linkDischarge')))
  }

  getInpatientSpellId(genLabelForm: any):Observable<any> {
    const headers = new HttpHeaders()
    let url = this.getBackendIP()+':52773/query/demoStep3'
    return this.http.get<any>(url, genLabelForm)
    .pipe(
      tap((any: any) => this.log('Inpatient Spell Id: '+`${any.EventQueryResult[0].EPCISBody.EventList.TransactionEvent[0].any[1]}`)),
      catchError(this.handleError<any>('getInpatientSpellId')))

  }

  getPatientLocationId(genLabelForm: any):Observable<any> {
    const headers = new HttpHeaders()
    let url = this.getBackendIP()+':52773/query/demoStep4'
    return this.http.get<any>(url, genLabelForm)
    .pipe(
      tap((any: any) => this.log('Patient Location Id: '+`${any.EventQueryResult[0].EPCISBody.EventList.ObjectEvent[0].bizLocation.id}`)),
      catchError(this.handleError<any>('getPatientLocationId')))

  }

  linkPigeonHole():Observable<any> {
    const headers = new HttpHeaders()
    let url = this.getBackendIP()+':52773/query/demoStep5'
    return this.http.get<any>(url)
    .pipe(
      tap((newLink: any) => this.log('Link Pigeon Hole : '+`${newLink}`)),
      catchError(this.handleError<any>('linkPigeonhole')))
  }

  scanLocation(testPayload:any):Observable<any> {
    const headers = new HttpHeaders()
    let url = this.getBackendIP()+':52773/query/demoStep6'
    return this.http.get<any>(url,this.httpTextOptions)
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
    let url = this.getBackendIP()+':52773/query/demoStep7'
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

  dischargePatient(admitForm: any):Observable<any> {

    const headers = new HttpHeaders()
    let url = this.getBackendIP()+':52773/query/demoStep8'
    return this.http.post<any>(url, admitForm,this.httpOptions)
    .pipe(
      tap((newDischarge: any) => this.log('Discharge: ' + `${newDischarge.PAS}`)),
      catchError(this.handleError<any>('dischargePatient')))
  }

}
