(window["webpackJsonp"] = window["webpackJsonp"] || []).push([["main"],{

/***/ 0:
/*!***************************!*\
  !*** multi ./src/main.ts ***!
  \***************************/
/*! no static exports found */
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__(/*! /Users/krakshit/SRC/GitHub/epcis-app/src/main.ts */"zUnb");


/***/ }),

/***/ "Ac80":
/*!*********************************************************************!*\
  !*** ./src/app/shared/comingsoon.component/comingsoon.component.ts ***!
  \*********************************************************************/
/*! exports provided: ComingSoonComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ComingSoonComponent", function() { return ComingSoonComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");


class ComingSoonComponent {
    constructor() {
    }
    setWidth() {
        let elem = document.getElementById("csImage");
        if (this.component == "tablet") {
            elem.setAttribute("width", "300px");
        }
        else if (this.component == "smartphone") {
            elem.setAttribute("width", "170px");
        }
    }
    ngOnInit() {
        this.setWidth();
    }
}
ComingSoonComponent.ɵfac = function ComingSoonComponent_Factory(t) { return new (t || ComingSoonComponent)(); };
ComingSoonComponent.ɵcmp = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineComponent"]({ type: ComingSoonComponent, selectors: [["comingsoon"]], inputs: { component: "component" }, decls: 2, vars: 0, consts: [["id", "csImage", "src", "/assets/img/ComingSoon.jpg", 1, "csImage"]], template: function ComingSoonComponent_Template(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](1, "img", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    } }, styles: [".bgimg[_ngcontent-%COMP%] {\n    background-image: url('/assets/img/ComingSoon.jpg');\n    height: 50%;\n    background-position: center;\n    background-size:600px;\n    position:bottom;\n    color: white;\n    font-family: \"Courier New\", Courier, monospace;\n    font-size: 25px;\n}\n\n.topleft[_ngcontent-%COMP%] {\n    position: relative;\n    top: 0;\n    left: 16px;\n}\n\n.bottomleft[_ngcontent-%COMP%] {\n    position: relative;\n    bottom: 0;\n    left: 16px;\n}\n\n.middle[_ngcontent-%COMP%] {\n    position: relative;\n    top: 50%;\n    left: 50%;\n    transform: translate(-50%, -50%);\n    text-align: center;\n    color: #3F51B5;\n}\n\nhr[_ngcontent-%COMP%] {\n    margin: auto;\n    width: 40%;\n    color: #3F51B5;\n}\n\n.csImage[_ngcontent-%COMP%] {\n    margin-top:45%;\n    margin-left: 25%;\n}\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvc2hhcmVkL2NvbWluZ3Nvb24uY29tcG9uZW50L2NvbWluZ3Nvb24uY29tcG9uZW50LmNzcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTtJQUNJLG1EQUFtRDtJQUNuRCxXQUFXO0lBQ1gsMkJBQTJCO0lBQzNCLHFCQUFxQjtJQUNyQixlQUFlO0lBQ2YsWUFBWTtJQUNaLDhDQUE4QztJQUM5QyxlQUFlO0FBQ25COztBQUVBO0lBQ0ksa0JBQWtCO0lBQ2xCLE1BQU07SUFDTixVQUFVO0FBQ2Q7O0FBRUE7SUFDSSxrQkFBa0I7SUFDbEIsU0FBUztJQUNULFVBQVU7QUFDZDs7QUFFQTtJQUNJLGtCQUFrQjtJQUNsQixRQUFRO0lBQ1IsU0FBUztJQUNULGdDQUFnQztJQUNoQyxrQkFBa0I7SUFDbEIsY0FBYztBQUNsQjs7QUFFQTtJQUNJLFlBQVk7SUFDWixVQUFVO0lBQ1YsY0FBYztBQUNsQjs7QUFFQTtJQUNJLGNBQWM7SUFDZCxnQkFBZ0I7QUFDcEIiLCJmaWxlIjoic3JjL2FwcC9zaGFyZWQvY29taW5nc29vbi5jb21wb25lbnQvY29taW5nc29vbi5jb21wb25lbnQuY3NzIiwic291cmNlc0NvbnRlbnQiOlsiLmJnaW1nIHtcbiAgICBiYWNrZ3JvdW5kLWltYWdlOiB1cmwoJy9hc3NldHMvaW1nL0NvbWluZ1Nvb24uanBnJyk7XG4gICAgaGVpZ2h0OiA1MCU7XG4gICAgYmFja2dyb3VuZC1wb3NpdGlvbjogY2VudGVyO1xuICAgIGJhY2tncm91bmQtc2l6ZTo2MDBweDtcbiAgICBwb3NpdGlvbjpib3R0b207XG4gICAgY29sb3I6IHdoaXRlO1xuICAgIGZvbnQtZmFtaWx5OiBcIkNvdXJpZXIgTmV3XCIsIENvdXJpZXIsIG1vbm9zcGFjZTtcbiAgICBmb250LXNpemU6IDI1cHg7XG59XG5cbi50b3BsZWZ0IHtcbiAgICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gICAgdG9wOiAwO1xuICAgIGxlZnQ6IDE2cHg7XG59XG5cbi5ib3R0b21sZWZ0IHtcbiAgICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gICAgYm90dG9tOiAwO1xuICAgIGxlZnQ6IDE2cHg7XG59XG5cbi5taWRkbGUge1xuICAgIHBvc2l0aW9uOiByZWxhdGl2ZTtcbiAgICB0b3A6IDUwJTtcbiAgICBsZWZ0OiA1MCU7XG4gICAgdHJhbnNmb3JtOiB0cmFuc2xhdGUoLTUwJSwgLTUwJSk7XG4gICAgdGV4dC1hbGlnbjogY2VudGVyO1xuICAgIGNvbG9yOiAjM0Y1MUI1O1xufVxuXG5ociB7XG4gICAgbWFyZ2luOiBhdXRvO1xuICAgIHdpZHRoOiA0MCU7XG4gICAgY29sb3I6ICMzRjUxQjU7XG59XG5cbi5jc0ltYWdlIHtcbiAgICBtYXJnaW4tdG9wOjQ1JTtcbiAgICBtYXJnaW4tbGVmdDogMjUlO1xufSJdfQ== */"] });
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](ComingSoonComponent, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"],
        args: [{
                selector: 'comingsoon',
                templateUrl: './comingsoon.component.html',
                styleUrls: ['./comingsoon.component.css']
            }]
    }], function () { return []; }, { component: [{
            type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Input"]
        }] }); })();


/***/ }),

/***/ "AytR":
/*!*****************************************!*\
  !*** ./src/environments/environment.ts ***!
  \*****************************************/
/*! exports provided: environment */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "environment", function() { return environment; });
/* harmony import */ var _package_json__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ../../package.json */ "kiQV");
var _package_json__WEBPACK_IMPORTED_MODULE_0___namespace = /*#__PURE__*/__webpack_require__.t(/*! ../../package.json */ "kiQV", 1);

// This file can be replaced during build by using the `fileReplacements` array.
// `ng build --prod` replaces `environment.ts` with `environment.prod.ts`.
// The list of file replacements can be found in `angular.json`.
const environment = {
    production: false,
    apiURL: 'localhost',
    version: _package_json__WEBPACK_IMPORTED_MODULE_0__["version"]
};
/*
 * For easier debugging in development mode, you can import the following file
 * to ignore zone related error stack frames such as `zone.run`, `zoneDelegate.invokeTask`.
 *
 * This import should be commented out in production mode because it will have a negative impact
 * on performance if an error is thrown.
 */
// import 'zone.js/dist/zone-error';  // Included with Angular CLI.


/***/ }),

/***/ "DruN":
/*!************************************************!*\
  !*** ./src/app/messages/messages.component.ts ***!
  \************************************************/
/*! exports provided: MessagesComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "MessagesComponent", function() { return MessagesComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");
/* harmony import */ var _services_message_service__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../services/message.service */ "tZre");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/common */ "ofXK");




function MessagesComponent_div_0_div_2_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](1);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} if (rf & 2) {
    const message_r2 = ctx.$implicit;
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtextInterpolate1"](" ", message_r2, " ");
} }
function MessagesComponent_div_0_Template(rf, ctx) { if (rf & 1) {
    const _r4 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵgetCurrentView"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div", 1);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](1, "code");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](2, MessagesComponent_div_0_div_2_Template, 2, 1, "div", 2);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](3, "p");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](4, "button", 3);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function MessagesComponent_div_0_Template_button_click_4_listener() { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵrestoreView"](_r4); const ctx_r3 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵnextContext"](); return ctx_r3.messageService.clear(); });
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](5, "Clear Logs");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} if (rf & 2) {
    const ctx_r0 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵnextContext"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](2);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngForOf", ctx_r0.messageService.messages);
} }
class MessagesComponent {
    constructor(messageService) {
        this.messageService = messageService;
    }
    ngOnInit() {
    }
}
MessagesComponent.ɵfac = function MessagesComponent_Factory(t) { return new (t || MessagesComponent)(_angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdirectiveInject"](_services_message_service__WEBPACK_IMPORTED_MODULE_1__["MessageService"])); };
MessagesComponent.ɵcmp = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineComponent"]({ type: MessagesComponent, selectors: [["app-messages"]], decls: 1, vars: 1, consts: [["class", "warning", 4, "ngIf"], [1, "warning"], [4, "ngFor", "ngForOf"], [1, "clear", 3, "click"]], template: function MessagesComponent_Template(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](0, MessagesComponent_div_0_Template, 6, 1, "div", 0);
    } if (rf & 2) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngIf", ctx.messageService.messages.length);
    } }, directives: [_angular_common__WEBPACK_IMPORTED_MODULE_2__["NgIf"], _angular_common__WEBPACK_IMPORTED_MODULE_2__["NgForOf"]], styles: [".warning[_ngcontent-%COMP%] {\n    margin-left: 5%;\n    color: #37474F;\n}\n\n.clear[_ngcontent-%COMP%] {\n    color: #37474F;\n    margin-left: 5%;\n}\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvbWVzc2FnZXMvbWVzc2FnZXMuY29tcG9uZW50LmNzcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTtJQUNJLGVBQWU7SUFDZixjQUFjO0FBQ2xCOztBQUVBO0lBQ0ksY0FBYztJQUNkLGVBQWU7QUFDbkIiLCJmaWxlIjoic3JjL2FwcC9tZXNzYWdlcy9tZXNzYWdlcy5jb21wb25lbnQuY3NzIiwic291cmNlc0NvbnRlbnQiOlsiLndhcm5pbmcge1xuICAgIG1hcmdpbi1sZWZ0OiA1JTtcbiAgICBjb2xvcjogIzM3NDc0Rjtcbn1cblxuLmNsZWFyIHtcbiAgICBjb2xvcjogIzM3NDc0RjtcbiAgICBtYXJnaW4tbGVmdDogNSU7XG59Il19 */"] });
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](MessagesComponent, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"],
        args: [{
                selector: 'app-messages',
                templateUrl: './messages.component.html',
                styleUrls: ['./messages.component.css']
            }]
    }], function () { return [{ type: _services_message_service__WEBPACK_IMPORTED_MODULE_1__["MessageService"] }]; }, null); })();


/***/ }),

/***/ "NdOf":
/*!**************************************************************!*\
  !*** ./src/app/pharmacy-ui/gen-label/gen-label.component.ts ***!
  \**************************************************************/
/*! exports provided: GenLabelComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "GenLabelComponent", function() { return GenLabelComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/forms */ "3Pt+");
/* harmony import */ var _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../services/epcis-iris.service */ "bGM6");
/* harmony import */ var _angular_material_form_field__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/material/form-field */ "kmnG");
/* harmony import */ var _angular_material_input__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/material/input */ "qFsG");
/* harmony import */ var _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @angular/material/datepicker */ "iadO");
/* harmony import */ var _angular_material_button__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! @angular/material/button */ "bTqV");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! @angular/common */ "ofXK");











function GenLabelComponent_div_47_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](1, "img", 15);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} if (rf & 2) {
    const ctx_r1 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵnextContext"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("src", ctx_r1.imageSource, _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵsanitizeUrl"]);
} }
class GenLabelComponent {
    constructor(epcisIRISservice) {
        this.epcisIRISservice = epcisIRISservice;
        this.genLabelForm = new _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormGroup"]({
            pas: new _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormControl"](''),
            date: new _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormControl"](''),
            locId: new _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormControl"](''),
            inSpId: new _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormControl"]()
        });
        this.imageSource = 'assets/img/medicineslabel.jpg';
        this.displayLabel = false;
        this.disableSpellButton = false;
        this.disableLocationButton = true;
        this.disableGenerateLabelButton = true;
        this.submitted = false;
        this.genLabelForm.setValue({ pas: 'F10105250552084', date: (new Date().toISOString()), inSpId: '', locId: '' });
    }
    onSubmit() { }
    ongetSpId() {
        // TODO: Use EventEmitter with form value
        console.log(this.genLabelForm.value);
        var JSONString = JSON.stringify(this.genLabelForm.value);
        this.epcisIRISservice.getInpatientSpellId(JSONString).subscribe((data) => {
            //this.reset()
            var spellId = data.EventQueryResult[0].EPCISBody.EventList.TransactionEvent[0].any[1];
            console.log("Success", spellId, "success");
            this.genLabelForm.setValue({ pas: 'F10105250552084', date: (new Date().toISOString()), inSpId: this.extractInpatientSpellId(spellId), locId: '' });
            this.disableSpellButton = true;
            this.disableLocationButton = false;
            //(data.EventQueryResult[0].EPCISBody.EventList.TransactionEvent[0].any[1])
        }, error => {
            console.warn("There was an error in retrieving inpatient spell id", error);
        });
    }
    getSpId() {
        console.log("Getting Spell Id...");
        this.ongetSpId();
    }
    onGetLocId() {
        // TODO: Use EventEmitter with form value
        console.log(this.genLabelForm.value);
        var JSONString = JSON.stringify(this.genLabelForm.value);
        this.epcisIRISservice.getPatientLocationId(JSONString).subscribe((data) => {
            //this.reset()
            var locationId = data.EventQueryResult[0].EPCISBody.EventList.ObjectEvent[0].bizLocation.id;
            console.log("Success", locationId, "success");
            this.genLabelForm.setValue({ pas: 'F10105250552084', date: (new Date().toISOString()), inSpId: this.genLabelForm.getRawValue().inSpId, locId: locationId });
            this.disableLocationButton = true;
            this.disableGenerateLabelButton = false;
            //(data.EventQueryResult[0].EPCISBody.EventList.TransactionEvent[0].any[1])
        }, error => {
            console.warn("There was an error in retrieving patient location id", error);
        });
    }
    getLocId() {
        console.log("Getting location Id...");
        this.onGetLocId();
    }
    onGenLabel() {
        this.disableGenerateLabelButton = true;
        this.displayLabel = true;
    }
    genLabel() {
        console.log("Generating label...");
        this.onGenLabel();
    }
    ngOnInit() {
    }
    _filter(value) {
        const filterValue = value.toLowerCase();
        return;
    }
    reset() {
        this.genLabelForm.setValue({ pas: '', date: '', inSpId: '', locId: '' });
        this.submitted = false;
    }
    extractInpatientSpellId(xmlstring) {
        /*look for end of opening xml tag
        <nhs:inpatientSpellId *>* 4567890</nhs:inpatientSpellId>*/
        var openTagEndPos = xmlstring.indexOf(">");
        /*look for start of closing xml tag
        <nhs:inpatientSpellId>4567890 *<* /nhs:inpatientSpellId>*/
        var closeTagStartPos = xmlstring.indexOf("</");
        //inPatientSpellId is the part beween the two locations
        return xmlstring.substr(openTagEndPos + 1, closeTagStartPos - openTagEndPos - 1);
    }
}
GenLabelComponent.ɵfac = function GenLabelComponent_Factory(t) { return new (t || GenLabelComponent)(_angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdirectiveInject"](_services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_2__["EPCISIRISService"])); };
GenLabelComponent.ɵcmp = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineComponent"]({ type: GenLabelComponent, selectors: [["pharmacy-gen-label"]], features: [_angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵProvidersFeature"]([
            _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_2__["EPCISIRISService"]
        ])], decls: 48, vars: 15, consts: [[1, "gen-label-form"], [3, "formGroup", "ngSubmit"], ["cellspacing", "0"], [1, "form-header"], [1, "full-width"], ["matInput", "", "formControlName", "pas"], ["matInput", "", "formControlName", "date", 3, "matDatepicker"], ["matSuffix", "", 3, "for"], ["picker", ""], [1, "entry-button-wrapper"], ["mat-raised-button", "", "color", "primary", "type", "submit", 1, "gen-label-button", 3, "disabled", "click"], ["matInput", "", "formControlName", "inSpId", "readonly", ""], ["matInput", "", "formControlName", "locId", "readonly", ""], [1, "genlabel-button-wrapper"], [4, "ngIf"], ["width", "200", 1, "prescription-label", 3, "src"]], template: function GenLabelComponent_Template(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](1, "form", 1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("ngSubmit", function GenLabelComponent_Template_form_ngSubmit_1_listener() { return ctx.onSubmit(); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](2, "table", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](3, "tr");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](4, "h2", 3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](5, "Generate Label");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](6, "tr");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](7, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](8, "div", 4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](9, "mat-form-field");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](10, "mat-label");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](11, "PAS");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](12, "input", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](13, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](14, "div", 4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](15, "mat-form-field");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](16, "mat-label");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](17, "Date");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](18, "input", 6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](19, "mat-datepicker-toggle", 7);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](20, "mat-datepicker", null, 8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](22, "tr");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](23, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](24, "div", 9);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](25, "button", 10);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function GenLabelComponent_Template_button_click_25_listener() { return ctx.getSpId(); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](26, "Retrieve Inpatient Spell Id");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](27, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](28, "div", 4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](29, "mat-form-field");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](30, "mat-label");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](31, "Inpatient Spell");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](32, "input", 11);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](33, "tr");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](34, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](35, "div", 9);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](36, "button", 10);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function GenLabelComponent_Template_button_click_36_listener() { return ctx.getLocId(); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](37, "Retrieve Patient Location Id");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](38, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](39, "div", 4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](40, "mat-form-field");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](41, "mat-label");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](42, "Patient Location");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](43, "input", 12);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](44, "div", 13);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](45, "button", 10);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function GenLabelComponent_Template_button_click_45_listener() { return ctx.genLabel(); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](46, "Generate Pharmacy Label");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](47, GenLabelComponent_div_47_Template, 2, 1, "div", 14);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    } if (rf & 2) {
        const _r0 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵreference"](21);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("formGroup", ctx.genLabelForm);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵstyleProp"]("width", 200, "px");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵstyleProp"]("width", 310, "px");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("matDatepicker", _r0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("for", _r0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("disabled", ctx.disableSpellButton);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵstyleProp"]("width", 310, "px");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](7);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("disabled", ctx.disableLocationButton);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵstyleProp"]("width", 310, "px");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("disabled", ctx.disableGenerateLabelButton);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngIf", ctx.displayLabel);
    } }, directives: [_angular_forms__WEBPACK_IMPORTED_MODULE_1__["ɵangular_packages_forms_forms_y"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["NgControlStatusGroup"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormGroupDirective"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_3__["MatFormField"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_3__["MatLabel"], _angular_material_input__WEBPACK_IMPORTED_MODULE_4__["MatInput"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["DefaultValueAccessor"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["NgControlStatus"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormControlName"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_5__["MatDatepickerInput"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_5__["MatDatepickerToggle"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_3__["MatSuffix"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_5__["MatDatepicker"], _angular_material_button__WEBPACK_IMPORTED_MODULE_6__["MatButton"], _angular_common__WEBPACK_IMPORTED_MODULE_7__["NgIf"]], styles: ["table[_ngcontent-%COMP%] {\n  margin-left:20px;\n  width: 100%;\n}\n  \n.form-header[_ngcontent-%COMP%]{\n  color:black;\n  text-align: left;\n}\n  \n.entry-button-wrapper[_ngcontent-%COMP%]{\n  margin-top: 10px;\n  margin-bottom: 20px;\n}\n  \n.genlabel-button-wrapper[_ngcontent-%COMP%]{\n  margin-top: 10px;\n  margin-bottom: 20px;\n  margin-left: 20px;\n}\n  \n.gen-label-button[_ngcontent-%COMP%] {\n  min-width: 200px !important;\n}\n  \n.page-heading[_ngcontent-%COMP%] {\n  \n  font-size:24pt;\n  font-weight: bold;\n  margin-left: 0%;\n  margin-bottom: 20px;\n}\n  \n.full-width[_ngcontent-%COMP%] {\n  width: 95%;\n  color: grey;\n}\n  \n.half-width[_ngcontent-%COMP%] {\n  width: 48%;\n  color: grey;\n}\n  \n.prescription-label[_ngcontent-%COMP%] {\n  margin-top: 10px;\n  border: 8px solid #999;\n  border-radius: 4px;\n  margin-left: 20px;\n  }\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvcGhhcm1hY3ktdWkvZ2VuLWxhYmVsL2dlbi1sYWJlbC5jb21wb25lbnQuY3NzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBO0VBQ0UsZ0JBQWdCO0VBQ2hCLFdBQVc7QUFDYjs7QUFFQTtFQUNFLFdBQVc7RUFDWCxnQkFBZ0I7QUFDbEI7O0FBRUE7RUFDRSxnQkFBZ0I7RUFDaEIsbUJBQW1CO0FBQ3JCOztBQUVBO0VBQ0UsZ0JBQWdCO0VBQ2hCLG1CQUFtQjtFQUNuQixpQkFBaUI7QUFDbkI7O0FBRUE7RUFDRSwyQkFBMkI7QUFDN0I7O0FBQ0E7RUFDRTtlQUNhO0VBQ2IsY0FBYztFQUNkLGlCQUFpQjtFQUNqQixlQUFlO0VBQ2YsbUJBQW1CO0FBQ3JCOztBQUVBO0VBQ0UsVUFBVTtFQUNWLFdBQVc7QUFDYjs7QUFFQTtFQUNFLFVBQVU7RUFDVixXQUFXO0FBQ2I7O0FBRUE7RUFDRSxnQkFBZ0I7RUFDaEIsc0JBQXNCO0VBQ3RCLGtCQUFrQjtFQUNsQixpQkFBaUI7RUFDakIiLCJmaWxlIjoic3JjL2FwcC9waGFybWFjeS11aS9nZW4tbGFiZWwvZ2VuLWxhYmVsLmNvbXBvbmVudC5jc3MiLCJzb3VyY2VzQ29udGVudCI6WyJ0YWJsZSB7XG4gIG1hcmdpbi1sZWZ0OjIwcHg7XG4gIHdpZHRoOiAxMDAlO1xufVxuICBcbi5mb3JtLWhlYWRlcntcbiAgY29sb3I6YmxhY2s7XG4gIHRleHQtYWxpZ246IGxlZnQ7XG59XG4gIFxuLmVudHJ5LWJ1dHRvbi13cmFwcGVye1xuICBtYXJnaW4tdG9wOiAxMHB4O1xuICBtYXJnaW4tYm90dG9tOiAyMHB4O1xufVxuICBcbi5nZW5sYWJlbC1idXR0b24td3JhcHBlcntcbiAgbWFyZ2luLXRvcDogMTBweDtcbiAgbWFyZ2luLWJvdHRvbTogMjBweDtcbiAgbWFyZ2luLWxlZnQ6IDIwcHg7XG59XG5cbi5nZW4tbGFiZWwtYnV0dG9uIHtcbiAgbWluLXdpZHRoOiAyMDBweCAhaW1wb3J0YW50O1xufVxuLnBhZ2UtaGVhZGluZyB7XG4gIC8qY29sb3I6ICMzRjUxQjU7XG4gIGNvbG9yOiBncmV5OyovXG4gIGZvbnQtc2l6ZToyNHB0O1xuICBmb250LXdlaWdodDogYm9sZDtcbiAgbWFyZ2luLWxlZnQ6IDAlO1xuICBtYXJnaW4tYm90dG9tOiAyMHB4O1xufVxuXG4uZnVsbC13aWR0aCB7XG4gIHdpZHRoOiA5NSU7XG4gIGNvbG9yOiBncmV5O1xufVxuXG4uaGFsZi13aWR0aCB7XG4gIHdpZHRoOiA0OCU7XG4gIGNvbG9yOiBncmV5O1xufVxuXG4ucHJlc2NyaXB0aW9uLWxhYmVsIHtcbiAgbWFyZ2luLXRvcDogMTBweDtcbiAgYm9yZGVyOiA4cHggc29saWQgIzk5OTtcbiAgYm9yZGVyLXJhZGl1czogNHB4O1xuICBtYXJnaW4tbGVmdDogMjBweDtcbiAgfSJdfQ== */"] });
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](GenLabelComponent, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"],
        args: [{
                providers: [
                    _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_2__["EPCISIRISService"]
                ],
                selector: 'pharmacy-gen-label',
                templateUrl: './gen-label.component.html',
                styleUrls: ['./gen-label.component.css']
            }]
    }], function () { return [{ type: _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_2__["EPCISIRISService"] }]; }, null); })();


/***/ }),

/***/ "Sy1n":
/*!**********************************!*\
  !*** ./src/app/app.component.ts ***!
  \**********************************/
/*! exports provided: AppComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AppComponent", function() { return AppComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");
/* harmony import */ var src_environments_environment__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! src/environments/environment */ "AytR");
/* harmony import */ var _angular_material_tabs__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/material/tabs */ "wZkO");
/* harmony import */ var _presentation_presentation_component__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ./presentation/presentation.component */ "gVBG");
/* harmony import */ var _admission_form_admission_form_component__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./admission-form/admission-form.component */ "YhEJ");
/* harmony import */ var _pharmacy_ui_pharmacy_ui_component__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./pharmacy-ui/pharmacy-ui.component */ "t9WN");
/* harmony import */ var _runner_app_runner_app_component__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./runner-app/runner-app.component */ "XD1p");
/* harmony import */ var _messages_messages_component__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! ./messages/messages.component */ "DruN");









function AppComponent_ng_template_10_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](0, " PRESENTATION ");
} }
function AppComponent_ng_template_14_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](0, " ADMISSION / DISCHARGE ");
} }
function AppComponent_ng_template_18_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](0, " PHARMACY ");
} }
function AppComponent_ng_template_22_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](0, " RUNNER APP ");
} }
function AppComponent_ng_template_26_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](0, " REST CALL LOGS ");
} }
class AppComponent {
    constructor() {
        this.title = 'epcis-app';
        this.version = src_environments_environment__WEBPACK_IMPORTED_MODULE_1__["environment"].version;
    }
}
AppComponent.ɵfac = function AppComponent_Factory(t) { return new (t || AppComponent)(); };
AppComponent.ɵcmp = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineComponent"]({ type: AppComponent, selectors: [["app-root"]], decls: 29, vars: 1, consts: [["width", "98%"], ["src", "assets/img/EPCISLogo8.jpg", "width", "250px"], [1, "version-container"], ["dynamicHeight", ""], [1, "presentation-screen", "mat-elevation-z4"], ["mat-tab-label", ""], [1, "adt-screen", "mat-elevation-z4"], [1, "pharmacy-screen", "mat-elevation-z4"], [1, "runner-screen", "mat-elevation-z4"], [1, "mat-elevation-z4"], [1, "main-content"]], template: function AppComponent_Template(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "table", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](1, "tr");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](2, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](3, "img", 1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](4, "td", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](5, "code");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](7, "mat-tab-group", 3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](8, "mat-tab");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](9, "div", 4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](10, AppComponent_ng_template_10_Template, 1, 0, "ng-template", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](11, "app-presentation");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](12, "mat-tab");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](13, "div", 6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](14, AppComponent_ng_template_14_Template, 1, 0, "ng-template", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](15, "app-admission-form");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](16, "mat-tab");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](17, "div", 7);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](18, AppComponent_ng_template_18_Template, 1, 0, "ng-template", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](19, "app-pharmacy-ui");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](20, "mat-tab");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](21, "div", 8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](22, AppComponent_ng_template_22_Template, 1, 0, "ng-template", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](23, "app-runner-app");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](24, "mat-tab");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](25, "div", 9);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](26, AppComponent_ng_template_26_Template, 1, 0, "ng-template", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](27, "div", 10);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](28, "app-messages");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    } if (rf & 2) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtextInterpolate1"]("App Version:", ctx.version, "");
    } }, directives: [_angular_material_tabs__WEBPACK_IMPORTED_MODULE_2__["MatTabGroup"], _angular_material_tabs__WEBPACK_IMPORTED_MODULE_2__["MatTab"], _angular_material_tabs__WEBPACK_IMPORTED_MODULE_2__["MatTabLabel"], _presentation_presentation_component__WEBPACK_IMPORTED_MODULE_3__["PresentationComponent"], _admission_form_admission_form_component__WEBPACK_IMPORTED_MODULE_4__["AdmissionFormComponent"], _pharmacy_ui_pharmacy_ui_component__WEBPACK_IMPORTED_MODULE_5__["PharmacyUiComponent"], _runner_app_runner_app_component__WEBPACK_IMPORTED_MODULE_6__["RunnerAppComponent"], _messages_messages_component__WEBPACK_IMPORTED_MODULE_7__["MessagesComponent"]], styles: ["#screen[_ngcontent-%COMP%] {\n    height: 821px;\n    width: 375px;\n    border: 1px solid black;\n    margin: auto;\n  }\n  \n  #screen-top[_ngcontent-%COMP%] {\n    height: 80%;\n    background: linear-gradient(to bottom, #ccccff 0%, #666699 100%);\n    color: rgba(0, 0, 0, 0.54);\n    display: flex;\n    align-items: center;\n    justify-content: center;\n    font-family: Helvetica;\n    font-weight: bolder;\n    font-size: 30px;\n  }\n  \n  #screen-footer[_ngcontent-%COMP%] {\n    height: 20%;\n    background: linear-gradient(to bottom, #666699 0%, #000066 100%);\n    color: rgba(0, 0, 0, 0.54);\n    font-family: Helvetica;\n    font-weight: bold;\n    box-sizing: border-box;\n    padding: 24px;\n    text-align: center;\n  }\n  \n  .tab-icon[_ngcontent-%COMP%] {\n    margin-right: 8px;\n  }\n  \n  .header-icon[_ngcontent-%COMP%]{\n    font-size: 70px;\n    color:#3F51B5;\n    align-content: right;\n  }\n  \n  .presentation-screen[_ngcontent-%COMP%], .adt-screen[_ngcontent-%COMP%], .runner-screen[_ngcontent-%COMP%], .pharmacy-screen[_ngcontent-%COMP%] {\n    display: flex;\n    align-items: center;\n    justify-content:center;\n    margin: 16px;\n    padding: 16px;\n    border-radius: 20px;\n  }\n  \n  .adt-screen[_ngcontent-%COMP%] {\n    height: 300px;\n    width: 450px;\n  }\n  \n  .pharmacy-screen[_ngcontent-%COMP%] {\n    height: 910px;\n    width: 630px;\n    border-radius: 36px;\n  }\n  \n  .runner-screen[_ngcontent-%COMP%] {\n    height: 750px;\n    width: 380px;\n    border-radius: 36px;\n  }\n  \n  .large-box[_ngcontent-%COMP%] {\n    height: 400px;\n    width: 400px;\n  }\n  \n  code[_ngcontent-%COMP%], pre[_ngcontent-%COMP%], xmp[_ngcontent-%COMP%], kbd[_ngcontent-%COMP%] {\n    font-family: 'Roboto Mono', Courier New, Courier, monospace;\n  }\n  \n  .version-container[_ngcontent-%COMP%] {\n    text-align:right;\n    font-size: 10pt;\n}\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvYXBwLmNvbXBvbmVudC5jc3MiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7SUFDSSxhQUFhO0lBQ2IsWUFBWTtJQUNaLHVCQUF1QjtJQUN2QixZQUFZO0VBQ2Q7O0VBRUE7SUFDRSxXQUFXO0lBQ1gsZ0VBQWdFO0lBQ2hFLDBCQUEwQjtJQUMxQixhQUFhO0lBQ2IsbUJBQW1CO0lBQ25CLHVCQUF1QjtJQUN2QixzQkFBc0I7SUFDdEIsbUJBQW1CO0lBQ25CLGVBQWU7RUFDakI7O0VBRUE7SUFDRSxXQUFXO0lBQ1gsZ0VBQWdFO0lBQ2hFLDBCQUEwQjtJQUMxQixzQkFBc0I7SUFDdEIsaUJBQWlCO0lBQ2pCLHNCQUFzQjtJQUN0QixhQUFhO0lBQ2Isa0JBQWtCO0VBQ3BCOztFQUVBO0lBQ0UsaUJBQWlCO0VBQ25COztFQUVBO0lBQ0UsZUFBZTtJQUNmLGFBQWE7SUFDYixvQkFBb0I7RUFDdEI7O0VBRUE7SUFDRSxhQUFhO0lBQ2IsbUJBQW1CO0lBQ25CLHNCQUFzQjtJQUN0QixZQUFZO0lBQ1osYUFBYTtJQUNiLG1CQUFtQjtFQUNyQjs7RUFFQTtJQUNFLGFBQWE7SUFDYixZQUFZO0VBQ2Q7O0VBRUE7SUFDRSxhQUFhO0lBQ2IsWUFBWTtJQUNaLG1CQUFtQjtFQUNyQjs7RUFFQTtJQUNFLGFBQWE7SUFDYixZQUFZO0lBQ1osbUJBQW1CO0VBQ3JCOztFQUVBO0lBQ0UsYUFBYTtJQUNiLFlBQVk7RUFDZDs7RUFFQTtJQUNFLDJEQUEyRDtFQUM3RDs7RUFFQTtJQUNFLGdCQUFnQjtJQUNoQixlQUFlO0FBQ25CIiwiZmlsZSI6InNyYy9hcHAvYXBwLmNvbXBvbmVudC5jc3MiLCJzb3VyY2VzQ29udGVudCI6WyIjc2NyZWVuIHtcbiAgICBoZWlnaHQ6IDgyMXB4O1xuICAgIHdpZHRoOiAzNzVweDtcbiAgICBib3JkZXI6IDFweCBzb2xpZCBibGFjaztcbiAgICBtYXJnaW46IGF1dG87XG4gIH1cbiAgXG4gICNzY3JlZW4tdG9wIHtcbiAgICBoZWlnaHQ6IDgwJTtcbiAgICBiYWNrZ3JvdW5kOiBsaW5lYXItZ3JhZGllbnQodG8gYm90dG9tLCAjY2NjY2ZmIDAlLCAjNjY2Njk5IDEwMCUpO1xuICAgIGNvbG9yOiByZ2JhKDAsIDAsIDAsIDAuNTQpO1xuICAgIGRpc3BsYXk6IGZsZXg7XG4gICAgYWxpZ24taXRlbXM6IGNlbnRlcjtcbiAgICBqdXN0aWZ5LWNvbnRlbnQ6IGNlbnRlcjtcbiAgICBmb250LWZhbWlseTogSGVsdmV0aWNhO1xuICAgIGZvbnQtd2VpZ2h0OiBib2xkZXI7XG4gICAgZm9udC1zaXplOiAzMHB4O1xuICB9XG4gIFxuICAjc2NyZWVuLWZvb3RlciB7XG4gICAgaGVpZ2h0OiAyMCU7XG4gICAgYmFja2dyb3VuZDogbGluZWFyLWdyYWRpZW50KHRvIGJvdHRvbSwgIzY2NjY5OSAwJSwgIzAwMDA2NiAxMDAlKTtcbiAgICBjb2xvcjogcmdiYSgwLCAwLCAwLCAwLjU0KTtcbiAgICBmb250LWZhbWlseTogSGVsdmV0aWNhO1xuICAgIGZvbnQtd2VpZ2h0OiBib2xkO1xuICAgIGJveC1zaXppbmc6IGJvcmRlci1ib3g7XG4gICAgcGFkZGluZzogMjRweDtcbiAgICB0ZXh0LWFsaWduOiBjZW50ZXI7XG4gIH1cblxuICAudGFiLWljb24ge1xuICAgIG1hcmdpbi1yaWdodDogOHB4O1xuICB9XG5cbiAgLmhlYWRlci1pY29ue1xuICAgIGZvbnQtc2l6ZTogNzBweDtcbiAgICBjb2xvcjojM0Y1MUI1O1xuICAgIGFsaWduLWNvbnRlbnQ6IHJpZ2h0O1xuICB9XG5cbiAgLnByZXNlbnRhdGlvbi1zY3JlZW4sIC5hZHQtc2NyZWVuLCAucnVubmVyLXNjcmVlbiwgLnBoYXJtYWN5LXNjcmVlbiB7XG4gICAgZGlzcGxheTogZmxleDtcbiAgICBhbGlnbi1pdGVtczogY2VudGVyO1xuICAgIGp1c3RpZnktY29udGVudDpjZW50ZXI7XG4gICAgbWFyZ2luOiAxNnB4O1xuICAgIHBhZGRpbmc6IDE2cHg7XG4gICAgYm9yZGVyLXJhZGl1czogMjBweDtcbiAgfVxuICBcbiAgLmFkdC1zY3JlZW4ge1xuICAgIGhlaWdodDogMzAwcHg7XG4gICAgd2lkdGg6IDQ1MHB4O1xuICB9XG4gIFxuICAucGhhcm1hY3ktc2NyZWVuIHtcbiAgICBoZWlnaHQ6IDkxMHB4O1xuICAgIHdpZHRoOiA2MzBweDtcbiAgICBib3JkZXItcmFkaXVzOiAzNnB4O1xuICB9XG5cbiAgLnJ1bm5lci1zY3JlZW4ge1xuICAgIGhlaWdodDogNzUwcHg7XG4gICAgd2lkdGg6IDM4MHB4O1xuICAgIGJvcmRlci1yYWRpdXM6IDM2cHg7XG4gIH1cblxuICAubGFyZ2UtYm94IHtcbiAgICBoZWlnaHQ6IDQwMHB4O1xuICAgIHdpZHRoOiA0MDBweDtcbiAgfVxuXG4gIGNvZGUsIHByZSwgeG1wLCBrYmQge1xuICAgIGZvbnQtZmFtaWx5OiAnUm9ib3RvIE1vbm8nLCBDb3VyaWVyIE5ldywgQ291cmllciwgbW9ub3NwYWNlO1xuICB9XG5cbiAgLnZlcnNpb24tY29udGFpbmVyIHtcbiAgICB0ZXh0LWFsaWduOnJpZ2h0O1xuICAgIGZvbnQtc2l6ZTogMTBwdDtcbn0iXX0= */"] });
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](AppComponent, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"],
        args: [{
                selector: 'app-root',
                templateUrl: './app.component.html',
                styleUrls: ['./app.component.css']
            }]
    }], null, null); })();


/***/ }),

/***/ "WUH/":
/*!*********************************************************************!*\
  !*** ./src/app/presentation/instructions/instructions.component.ts ***!
  \*********************************************************************/
/*! exports provided: InstructionsComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "InstructionsComponent", function() { return InstructionsComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");


class InstructionsComponent {
    constructor() { }
    ngOnInit() {
    }
}
InstructionsComponent.ɵfac = function InstructionsComponent_Factory(t) { return new (t || InstructionsComponent)(); };
InstructionsComponent.ɵcmp = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineComponent"]({ type: InstructionsComponent, selectors: [["app-instructions"]], decls: 217, vars: 0, consts: [[1, "list-lower-alpha"], [1, "list-lower-roman"], [1, "list-circle"], ["href", "https://github.com/isc-krakshith/iris-epcis-docker-application", "target", "_blank", "rel", "noopener noreferrer"], ["href", "https://github.com/isc-krakshith/irisdemo-demo-gs1-hosted", "target", "_blank", "rel", "noopener noreferrer"]], template: function InstructionsComponent_Template(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "h2");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](1, "Introduction");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](2, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](3, "This is a demonstration of an EPCIS (Electronic Product Code Implementation Services, a global GS1 standard) solution serving the healthcare sector built on the InterSystems IRIS for Health data platform. It addresses medicine tracking in a hospital where the benefits are mainly the efficiency of managing the delivery of pharmaceutical prescriptions to inpatients who may be potentially transferring between departments, being or have been discharged.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](4, "h2");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](5, "Use case");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](6, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](7, "In its current version, the use case is a patient who is being discharged, but has not yet left the ward, and is required to take away their medications on discharge. At this facility, it is the duty of a designated runner to assimilate all pharmaceutical prescriptions for the patient and deliver them.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](8, "h3");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](9, "Information");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](10, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](11, "For this purpose, they need to access to the following information:");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](12, "ol");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](13, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](14, "A patient\u2019s prescription");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](15, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](16, "The location(s) from where the prescriptions are to be collected");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](17, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](18, "The patient\u2019s current location");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](19, "h2");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](20, "Events");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](21, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](22, "The events covered in this demonstration are:");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](23, "ol");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](24, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](25, "A patient is admitted to hospital ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](26, "ol", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](27, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](28, "This generates a HL7v2 message which triggers: ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](29, "ol", 1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](30, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](31, "Inpatient spell id generation");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](32, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](33, "Inpatient ward-stay id generation");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](34, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](35, "PAS number confirmation");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](36, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](37, "Linked to them are, EPCIS standard elements such as: ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](38, "ul", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](39, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](40, "GSRN (Global Service Relationship Number),");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](41, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](42, "SGLN (Specific Geographic Location Name),");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](43, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](44, "URN (Uniform Resource Name)");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](45, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](46, "corresponding business step defined for a healthcare application, \u2018accepting\u2019 in this case.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](47, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](48, "At some point after that, the same patient is discharged. ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](49, "ol", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](50, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](51, "A discharge slip is prepared which contains the clinicians notes and prescriptions.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](52, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](53, "This discharge slip with prescriptions is digitally scanned by the pharmacy assistant to: ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](54, "ol", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](55, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](56, "Link the prescription to the inpatient spell id");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](57, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](58, "The pharmacy assistant then generates the label with a EPCIS compliant GDTI (Global Document Type Identifier) and SSCC (Serial Shipping Container Code) for the prescriptions to take away ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](59, "ol", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](60, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](61, "The PAS number is used to retrieve the inpatient spell id");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](62, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](63, "The inpatient spell id is used to retrieve the current patient location");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](64, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](65, "The inpatient spell id and patient location are then barcoded and printed on the pharmacy label which will be attached to the medicines bag(s).");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](66, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](67, "The pharmacy assistant then places the medicines bag(s) at designated collection points and scans the EPCIS Compliant GLN / SGLN (Global Location Number) location code where the medicine bags are placed to link them to the inpatient spell id. The designated collection points might include: ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](68, "ol", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](69, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](70, "Controlled drugs safe");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](71, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](72, "Freezer");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](73, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](74, "Pigeonhole for the department where the patient is currently located.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](75, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](76, "The runner \u2013 who is presumably notified of the pending deliveries or may be making routine rounds across the facility \u2013 is equipped with a portable device which allows: ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](77, "ol", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](78, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](79, "Look up of the friendly name of the department from GLN on the barcode");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](80, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](81, "Querying the collection points for all deliveries destined for a particular department");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](82, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](83, "Keeping track of completed and pending collections");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](84, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](85, "Potentially other yet-to-be-implemented features");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](86, "h3");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](87, "User Interface");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](88, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](89, "This single page web-browser based application UI is built on an Angular framework v10.1.3");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](90, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](91, "It communicates with a single InterSystems IRIS for Health instance via RESTful APIs, exposed by the IRIS instance.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](92, "h3");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](93, "Deployment");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](94, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](95, "This demonstration is available to be run in Docker containers, either locally on Docker Desktop or on a remote host. eg. AWS EC2 Linux instance. Available configurations are:");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](96, "ol");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](97, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](98, "Angular UI and IRIS in separate containers \u2013 ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](99, "a", 3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](100, "GitHub repository");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](101, "ol", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](102, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](103, "On a single host");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](104, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](105, "On separate hosts");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](106, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](107, "Angular UI hosted on the IRIS instance in a single container \u2013 ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](108, "a", 4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](109, "GitHub repository");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](110, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](111, "When the two components are deployed on separate hosts, please follow the repository instructions for frontend to correctly reach the IRIS instance.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](112, "h3");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](113, "Layout");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](114, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](115, "There are 5 tabs available on the UI:");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](116, "ul");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](117, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](118, "PRESENTATION");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](119, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](120, "ADMISSIONS / DISCHARGE");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](121, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](122, "PHARMACY");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](123, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](124, "RUNNER APP");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](125, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](126, "REST CALL LOGS");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](127, "h4");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](128, "PRESENTATION");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](129, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](130, "The UI starts at the Presentation page, which can be resized to best display the graphical content. Before the demonstration starts, click on the \u2018Open Production\u2019 \u2018Open Messages\u2019, and \u2018Open BPL\u2019 buttons to keep the respective pages on the IRIS for Health Management Portal open and ready. The visibility of these instructions can be toggled by the \u2018Show Instructions\u2019 / \u2018Hide Instructions\u2019 button on the lower right of the page.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](131, "h5");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](132, "Actors and overlaid links");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](133, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](134, "The actors of interest in this demonstration are captioned in red font on the diagram:");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](135, "ul");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](136, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](137, "ADMISSIONS (ADT) staff \u2013 shown near the top left");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](138, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](139, "PHARMACY assistant \u2013 shown near the top centre");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](140, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](141, "RUNNER \u2013 shown near the top centre-right");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](142, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](143, "Around the area where these actors are displayed, are overlaid links, which will launch the relevant tab on the UI for each of those actors.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](144, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](145, "A similar overlaid link is centred on the IRIS interoperability icon and launches the Production page of the IRIS for Health Management Portal.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](146, "h5");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](147, "Resizing");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](148, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](149, "Resizing the webpage, has marginal effect on the relative movement of the overlaid links, whose positions are dynamically recomputed. The best practice is to use the tab navigation links along the top of the application.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](150, "h4");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](151, "ADMISSIONS / DISCHARGE");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](152, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](153, "This tab presents an ADT entry screen with the minimal fields required to give the audience a feel for the patient data which we will be referring to in the demonstration. The fields are prepopulated with default values. Changing the name of the patient on the UI will be reflected in the database and related interoperability production message trace. When a patient is admitted, a HL7v2 message with the patient data is generated. However, many of the fields contain default / synthetic values. After clicking \u2018Admit\u2019 view the message trace in the Management Portal. Then return to PHARMACY tab on the web application.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](154, "h4");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](155, "PHARMACY");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](156, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](157, "This tab contains a \u2018tablet-like\u2019 UI and features some of the functionality which the pharmacy assistant will need to trigger the relevant events required for this demonstration.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](158, "h5");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](159, "Menu navigation:");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](160, "ul");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](161, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](162, "Link - > Discharge Document ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](163, "ul", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](164, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](165, "The pharmacy assistant uses this to link the discharge document with the inpatient spell id for that patient visit by clicking the \u2018Scan\u2019 button which changes to \u2018Capture\u2019 when a dummy discharge document is displayed.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](166, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](167, "Click the \u2018Capture\u2019 button. The discharge document disappears from view.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](168, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](169, "View the message trace in Management Portal before continuing with the next step.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](170, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](171, "Dispense - > Generate Label: ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](172, "ul", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](173, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](174, "Enter PAS number and date");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](175, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](176, "Click \u2018Retrieve Inpatient Spell Id\u2019 button");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](177, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](178, "View the message trace in Management Portal before continuing with the next step.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](179, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](180, "Click \u2018Retrieve Patient Location Id\u2019 button which is now seen enabled.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](181, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](182, "View the message trace in Management Portal before continuing with the next step.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](183, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](184, "Click \u2018Generate Pharmacy Label\u2019 button to simulate the label being created with the above information incorporated within it. A dummy label is displayed on the UI.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](185, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](186, "Dispense -> Print ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](187, "ul", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](188, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](189, "Explain that this menu would be used to print the pharmacy label which will be attached to the medicines bag(s)");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](190, "h4");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](191, "RUNNER APP");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](192, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](193, "This tab contains a \u2018smartphone-like\u2019 UI and features some of the functionality which a designated runner will need to trigger the relevant events required for this demonstration.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](194, "h5");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](195, "Menu navigation:");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](196, "ul");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](197, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](198, "Identify -> Location: ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](199, "ul", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](200, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](201, "The runner uses this to link to look up the friendly name for the Pharmacy Pigeonhole by clicking the \u2018Scan\u2019 button which changes to \u2018Capture\u2019 when the location barcode for Monkswell Ward Collection Slot is displayed.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](202, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](203, "View the message trace in Management Portal before continuing with the next step.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](204, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](205, "Explain that the Identify -> Ward menu may be used to scan which ward the medicine bag(s) have been delivered to.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](206, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](207, "Deliver -> Retrieve Items ");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](208, "ul", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](209, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](210, "By providing the location name for the destination, the runner is able to view a list of the location from where the medications are to be collected. The checklist keeps track of the collections as the runner picks up medicines from each of the locations. When all the locations have been picked up from, the button becomes disabled.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](211, "li");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](212, "View the message trace in Management Portal which shows a FHIR bundle with a host of information on the patient. As might be expected, only necessary information is displayed within the RUNNER APP.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](213, "h4");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](214, "REST CALL LOGS");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](215, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](216, "After each of the steps above, a trace is also sent to this part of the app to show that the REST calls return corresponding data to the front end, as is visible in the message traces. This can be used for both, to establish that the frontend is communicating correctly with the IRIS instance, as well as giving the audience confidence in the functionality being demonstrated.");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    } }, styles: [".list-lower-alpha[_ngcontent-%COMP%]{\n  list-style-type:lower-alpha;\n}\n\n.list-lower-roman[_ngcontent-%COMP%]{\n  list-style-type:lower-roman;\n}\n\n.list-circle[_ngcontent-%COMP%] {\n  list-style-type:circle;\n}\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvcHJlc2VudGF0aW9uL2luc3RydWN0aW9ucy9pbnN0cnVjdGlvbnMuY29tcG9uZW50LmNzcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTtFQUNFLDJCQUEyQjtBQUM3Qjs7QUFFQTtFQUNFLDJCQUEyQjtBQUM3Qjs7QUFFQTtFQUNFLHNCQUFzQjtBQUN4QiIsImZpbGUiOiJzcmMvYXBwL3ByZXNlbnRhdGlvbi9pbnN0cnVjdGlvbnMvaW5zdHJ1Y3Rpb25zLmNvbXBvbmVudC5jc3MiLCJzb3VyY2VzQ29udGVudCI6WyIubGlzdC1sb3dlci1hbHBoYXtcbiAgbGlzdC1zdHlsZS10eXBlOmxvd2VyLWFscGhhO1xufVxuXG4ubGlzdC1sb3dlci1yb21hbntcbiAgbGlzdC1zdHlsZS10eXBlOmxvd2VyLXJvbWFuO1xufVxuXG4ubGlzdC1jaXJjbGUge1xuICBsaXN0LXN0eWxlLXR5cGU6Y2lyY2xlO1xufVxuXG4iXX0= */"] });
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](InstructionsComponent, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"],
        args: [{
                selector: 'app-instructions',
                templateUrl: './instructions.component.html',
                styleUrls: ['./instructions.component.css']
            }]
    }], function () { return []; }, null); })();


/***/ }),

/***/ "XD1p":
/*!****************************************************!*\
  !*** ./src/app/runner-app/runner-app.component.ts ***!
  \****************************************************/
/*! exports provided: RunnerAppComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "RunnerAppComponent", function() { return RunnerAppComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");
/* harmony import */ var _angular_material_button__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/material/button */ "bTqV");
/* harmony import */ var _angular_material_menu__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/material/menu */ "STbY");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/common */ "ofXK");
/* harmony import */ var _shared_scan_component_scan_component__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../shared/scan.component/scan.component */ "pHsH");
/* harmony import */ var _retrieve_items_retrieve_items_component__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./retrieve-items/retrieve-items.component */ "cjWi");
/* harmony import */ var _shared_comingsoon_component_comingsoon_component__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ../shared/comingsoon.component/comingsoon.component */ "Ac80");








function RunnerAppComponent_div_22_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](1, "scan", 9);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} }
function RunnerAppComponent_div_23_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](1, "app-retrieve-items");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} }
function RunnerAppComponent_div_24_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](1, "comingsoon", 10);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} }
class RunnerAppComponent {
    constructor() {
        this.isidentifyLocation = false;
        this.isRetrieveItems = false;
        this.isComingSoon = false;
    }
    ngOnInit() {
    }
    loadContent(selection) {
        if (selection == 'identifyLocation') {
            this.isComingSoon = false;
            this.isidentifyLocation = true;
            this.isRetrieveItems = false;
        }
        else if (selection == 'retrieveItems') {
            this.isidentifyLocation = false;
            this.isComingSoon = false;
            this.isRetrieveItems = true;
        }
        else if (selection == 'comingsoon') {
            this.isidentifyLocation = false;
            this.isComingSoon = true;
            this.isRetrieveItems = false;
        }
    }
}
RunnerAppComponent.ɵfac = function RunnerAppComponent_Factory(t) { return new (t || RunnerAppComponent)(); };
RunnerAppComponent.ɵcmp = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineComponent"]({ type: RunnerAppComponent, selectors: [["app-runner-app"]], decls: 25, vars: 6, consts: [[1, "smartphone"], [1, "content"], ["mat-button", "", 3, "matMenuTriggerFor"], ["xPosition", "after"], ["identifyMenu", "matMenu"], ["mat-menu-item", "", 3, "click"], ["deliverMenu", "matMenu"], ["aboutMenu", "matMenu"], [4, "ngIf"], ["function", "scanLocation"], ["component", "smartphone"]], template: function RunnerAppComponent_Template(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](1, "div", 1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](2, "button", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](3, "Identify");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](4, "mat-menu", 3, 4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](6, "button", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function RunnerAppComponent_Template_button_click_6_listener() { return ctx.loadContent("identifyLocation"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](7, "Location");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](8, "button", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function RunnerAppComponent_Template_button_click_8_listener() { return ctx.loadContent("comingsoon"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](9, "Ward");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](10, "button", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](11, "Deliver");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](12, "mat-menu", 3, 6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](14, "button", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function RunnerAppComponent_Template_button_click_14_listener() { return ctx.loadContent("retrieveItems"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](15, "Retrieve Items");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](16, "button", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](17, "About");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](18, "mat-menu", 3, 7);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](20, "button", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function RunnerAppComponent_Template_button_click_20_listener() { return ctx.loadContent("comingsoon"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](21, "EPCIS Demo");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](22, RunnerAppComponent_div_22_Template, 2, 0, "div", 8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](23, RunnerAppComponent_div_23_Template, 2, 0, "div", 8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](24, RunnerAppComponent_div_24_Template, 2, 0, "div", 8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    } if (rf & 2) {
        const _r0 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵreference"](5);
        const _r1 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵreference"](13);
        const _r2 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵreference"](19);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("matMenuTriggerFor", _r0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("matMenuTriggerFor", _r1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("matMenuTriggerFor", _r2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngIf", ctx.isidentifyLocation);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngIf", ctx.isRetrieveItems);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngIf", ctx.isComingSoon);
    } }, directives: [_angular_material_button__WEBPACK_IMPORTED_MODULE_1__["MatButton"], _angular_material_menu__WEBPACK_IMPORTED_MODULE_2__["MatMenuTrigger"], _angular_material_menu__WEBPACK_IMPORTED_MODULE_2__["_MatMenu"], _angular_material_menu__WEBPACK_IMPORTED_MODULE_2__["MatMenuItem"], _angular_common__WEBPACK_IMPORTED_MODULE_3__["NgIf"], _shared_scan_component_scan_component__WEBPACK_IMPORTED_MODULE_4__["ScanComponent"], _retrieve_items_retrieve_items_component__WEBPACK_IMPORTED_MODULE_5__["RetrieveItemsComponent"], _shared_comingsoon_component_comingsoon_component__WEBPACK_IMPORTED_MODULE_6__["ComingSoonComponent"]], styles: ["body[_ngcontent-%COMP%] {\n    background: #fff;\n  }\n\n.smartphone[_ngcontent-%COMP%] {\n    position: relative;\n    width: 360px;\n    height: 640px;\n    margin: auto;\n    border: 16px grey solid;\n    border-top-width: 60px;\n    border-bottom-width: 60px;\n    border-radius: 36px;\n  }\n\n\n\n.smartphone[_ngcontent-%COMP%]:before {\n    content: '';\n    display: block;\n    width: 60px;\n    height: 5px;\n    position: absolute;\n    top: -30px;\n    left: 50%;\n    transform: translate(-50%, -50%);\n    background: #333;\n    border-radius: 10px;\n  }\n\n\n\n.smartphone[_ngcontent-%COMP%]:after {\n    content: '';\n    display: block;\n    width: 35px;\n    height: 35px;\n    position: absolute;\n    left: 50%;\n    bottom: -65px;\n    transform: translate(-50%, -50%);\n    background: #000;\n    border-radius: 50%;\n  }\n\n\n\n.smartphone[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%] {\n    width: 361px;\n    height: 36px;\n    background: #3F51B5;\n    color:#fff;\n    margin: -1px;\n  }\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvcnVubmVyLWFwcC9ydW5uZXItYXBwLmNvbXBvbmVudC5jc3MiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7SUFDSSxnQkFBZ0I7RUFDbEI7O0FBRUY7SUFDSSxrQkFBa0I7SUFDbEIsWUFBWTtJQUNaLGFBQWE7SUFDYixZQUFZO0lBQ1osdUJBQXVCO0lBQ3ZCLHNCQUFzQjtJQUN0Qix5QkFBeUI7SUFDekIsbUJBQW1CO0VBQ3JCOztBQUVBLGlEQUFpRDs7QUFDakQ7SUFDRSxXQUFXO0lBQ1gsY0FBYztJQUNkLFdBQVc7SUFDWCxXQUFXO0lBQ1gsa0JBQWtCO0lBQ2xCLFVBQVU7SUFDVixTQUFTO0lBQ1QsZ0NBQWdDO0lBQ2hDLGdCQUFnQjtJQUNoQixtQkFBbUI7RUFDckI7O0FBRUEsMkNBQTJDOztBQUMzQztJQUNFLFdBQVc7SUFDWCxjQUFjO0lBQ2QsV0FBVztJQUNYLFlBQVk7SUFDWixrQkFBa0I7SUFDbEIsU0FBUztJQUNULGFBQWE7SUFDYixnQ0FBZ0M7SUFDaEMsZ0JBQWdCO0lBQ2hCLGtCQUFrQjtFQUNwQjs7QUFFQSwwQ0FBMEM7O0FBQzFDO0lBQ0UsWUFBWTtJQUNaLFlBQVk7SUFDWixtQkFBbUI7SUFDbkIsVUFBVTtJQUNWLFlBQVk7RUFDZCIsImZpbGUiOiJzcmMvYXBwL3J1bm5lci1hcHAvcnVubmVyLWFwcC5jb21wb25lbnQuY3NzIiwic291cmNlc0NvbnRlbnQiOlsiYm9keSB7XG4gICAgYmFja2dyb3VuZDogI2ZmZjtcbiAgfVxuXG4uc21hcnRwaG9uZSB7XG4gICAgcG9zaXRpb246IHJlbGF0aXZlO1xuICAgIHdpZHRoOiAzNjBweDtcbiAgICBoZWlnaHQ6IDY0MHB4O1xuICAgIG1hcmdpbjogYXV0bztcbiAgICBib3JkZXI6IDE2cHggZ3JleSBzb2xpZDtcbiAgICBib3JkZXItdG9wLXdpZHRoOiA2MHB4O1xuICAgIGJvcmRlci1ib3R0b20td2lkdGg6IDYwcHg7XG4gICAgYm9yZGVyLXJhZGl1czogMzZweDtcbiAgfVxuICBcbiAgLyogVGhlIGhvcml6b250YWwgbGluZSBvbiB0aGUgdG9wIG9mIHRoZSBkZXZpY2UgKi9cbiAgLnNtYXJ0cGhvbmU6YmVmb3JlIHtcbiAgICBjb250ZW50OiAnJztcbiAgICBkaXNwbGF5OiBibG9jaztcbiAgICB3aWR0aDogNjBweDtcbiAgICBoZWlnaHQ6IDVweDtcbiAgICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gICAgdG9wOiAtMzBweDtcbiAgICBsZWZ0OiA1MCU7XG4gICAgdHJhbnNmb3JtOiB0cmFuc2xhdGUoLTUwJSwgLTUwJSk7XG4gICAgYmFja2dyb3VuZDogIzMzMztcbiAgICBib3JkZXItcmFkaXVzOiAxMHB4O1xuICB9XG4gIFxuICAvKiBUaGUgY2lyY2xlIG9uIHRoZSBib3R0b20gb2YgdGhlIGRldmljZSAqL1xuICAuc21hcnRwaG9uZTphZnRlciB7XG4gICAgY29udGVudDogJyc7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgd2lkdGg6IDM1cHg7XG4gICAgaGVpZ2h0OiAzNXB4O1xuICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICBsZWZ0OiA1MCU7XG4gICAgYm90dG9tOiAtNjVweDtcbiAgICB0cmFuc2Zvcm06IHRyYW5zbGF0ZSgtNTAlLCAtNTAlKTtcbiAgICBiYWNrZ3JvdW5kOiAjMDAwO1xuICAgIGJvcmRlci1yYWRpdXM6IDUwJTtcbiAgfVxuICBcbiAgLyogVGhlIHNjcmVlbiAob3IgY29udGVudCkgb2YgdGhlIGRldmljZSAqL1xuICAuc21hcnRwaG9uZSAuY29udGVudCB7XG4gICAgd2lkdGg6IDM2MXB4O1xuICAgIGhlaWdodDogMzZweDtcbiAgICBiYWNrZ3JvdW5kOiAjM0Y1MUI1O1xuICAgIGNvbG9yOiNmZmY7XG4gICAgbWFyZ2luOiAtMXB4O1xuICB9Il19 */"] });
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](RunnerAppComponent, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"],
        args: [{
                selector: 'app-runner-app',
                templateUrl: './runner-app.component.html',
                styleUrls: ['./runner-app.component.css']
            }]
    }], function () { return []; }, null); })();


/***/ }),

/***/ "YhEJ":
/*!************************************************************!*\
  !*** ./src/app/admission-form/admission-form.component.ts ***!
  \************************************************************/
/*! exports provided: AdmissionFormComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AdmissionFormComponent", function() { return AdmissionFormComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/forms */ "3Pt+");
/* harmony import */ var _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../services/epcis-iris.service */ "bGM6");
/* harmony import */ var _angular_material_form_field__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/material/form-field */ "kmnG");
/* harmony import */ var _angular_material_input__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/material/input */ "qFsG");
/* harmony import */ var _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @angular/material/datepicker */ "iadO");
/* harmony import */ var _angular_material_button__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! @angular/material/button */ "bTqV");










class AdmissionFormComponent {
    constructor(epcisIRISservice) {
        this.epcisIRISservice = epcisIRISservice;
        this.admitForm = new _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormGroup"]({
            firstName: new _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormControl"](''),
            lastName: new _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormControl"](''),
            mrn: new _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormControl"](''),
            date: new _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormControl"]('')
        });
        this.submitted = false;
        this.admitForm.setValue({ firstName: 'Jane', lastName: 'Doe', mrn: 'T918273', date: (new Date().toISOString()) });
    }
    onSubmit() { }
    onAdmit() {
        // TODO: Use EventEmitter with form value
        console.log(this.admitForm.value);
        var JSONString = JSON.stringify(this.admitForm.value);
        this.epcisIRISservice.admitPatient(JSONString).subscribe((data) => {
            //this.reset()
            console.log("Admit process: ", data, "success");
        }, error => {
            console.warn("There was an error in admit process", error);
        });
    }
    onDischarge() {
        // TODO: Use EventEmitter with form value
        console.log(this.admitForm.value);
        var JSONString = JSON.stringify(this.admitForm.value);
        this.epcisIRISservice.dischargePatient(JSONString).subscribe((data) => {
            //this.reset()
            console.log("Discharge process: ", data, "success");
        }, error => {
            console.warn("There was an error in discharge process", error);
        });
    }
    admit() {
        console.log("Admitting...");
        this.onAdmit();
    }
    discharge() {
        console.log("Discharging...");
        this.onDischarge();
    }
    ngOnInit() {
    }
    _filter(value) {
        const filterValue = value.toLowerCase();
        return;
    }
    reset() {
        this.admitForm.setValue({ firstName: '', lastName: '', mrn: '', date: '' });
        this.submitted = false;
    }
}
AdmissionFormComponent.ɵfac = function AdmissionFormComponent_Factory(t) { return new (t || AdmissionFormComponent)(_angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdirectiveInject"](_services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_2__["EPCISIRISService"])); };
AdmissionFormComponent.ɵcmp = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineComponent"]({ type: AdmissionFormComponent, selectors: [["app-admission-form"]], features: [_angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵProvidersFeature"]([
            _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_2__["EPCISIRISService"]
        ])], decls: 45, vars: 3, consts: [[1, "admission-form"], [3, "formGroup", "ngSubmit"], ["cellspacing", "0"], [1, "full-width"], ["matInput", "", "formControlName", "mrn"], ["matInput", "", "formControlName", "date", 3, "matDatepicker"], ["matSuffix", "", 3, "for"], ["picker", ""], ["matInput", "", "formControlName", "firstName"], ["matInput", "", "formControlName", "lastName"], [1, "entry-button-wrapper"], ["mat-raised-button", "", "color", "primary", "type", "submit", 3, "click"]], template: function AdmissionFormComponent_Template(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](1, "form", 1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("ngSubmit", function AdmissionFormComponent_Template_form_ngSubmit_1_listener() { return ctx.onSubmit(); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](2, "table", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](3, "tr");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](4, "h2");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](5, "ADT Entry");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](6, "tr");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](7, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](8, "div", 3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](9, "mat-form-field");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](10, "mat-label");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](11, "MRN");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](12, "input", 4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](13, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](14, "div", 3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](15, "mat-form-field");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](16, "mat-label");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](17, "Date");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](18, "input", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](19, "mat-datepicker-toggle", 6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](20, "mat-datepicker", null, 7);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](22, "tr");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](23, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](24, "div", 3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](25, "mat-form-field");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](26, "mat-label");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](27, "First Name");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](28, "input", 8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](29, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](30, "div", 3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](31, "mat-form-field");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](32, "mat-label");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](33, "Last Name");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](34, "input", 9);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](35, "tr");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](36, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](37, "div", 10);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](38, "button", 11);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function AdmissionFormComponent_Template_button_click_38_listener() { return ctx.admit(); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](39, "Admit Patient");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](40, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](41, "div", 10);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](42, "button", 11);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function AdmissionFormComponent_Template_button_click_42_listener() { return ctx.discharge(); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](43, "Discharge Patient");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](44, "p");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    } if (rf & 2) {
        const _r0 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵreference"](21);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("formGroup", ctx.admitForm);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](17);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("matDatepicker", _r0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("for", _r0);
    } }, directives: [_angular_forms__WEBPACK_IMPORTED_MODULE_1__["ɵangular_packages_forms_forms_y"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["NgControlStatusGroup"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormGroupDirective"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_3__["MatFormField"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_3__["MatLabel"], _angular_material_input__WEBPACK_IMPORTED_MODULE_4__["MatInput"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["DefaultValueAccessor"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["NgControlStatus"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormControlName"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_5__["MatDatepickerInput"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_5__["MatDatepickerToggle"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_3__["MatSuffix"], _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_5__["MatDatepicker"], _angular_material_button__WEBPACK_IMPORTED_MODULE_6__["MatButton"]], styles: ["table[_ngcontent-%COMP%] {\n    margin-left:20px;\n    width: 100%;\n  }\n  \n.form-header[_ngcontent-%COMP%]{\n    text-align: center;\n    border-bottom: 1px solid;\n    margin-bottom: 5px;\n  }\n  \n.entry-button-wrapper[_ngcontent-%COMP%]{\n    margin-top: 10px;\n    margin-bottom: 20px;\n  }\n  \n.page-heading[_ngcontent-%COMP%] {\n      \n      font-size:24pt;\n      font-weight: bold;\n      margin-left: 0%;\n      margin-bottom: 20px;\n  }\n  \n.full-width[_ngcontent-%COMP%] {\n    width: 95%;\n    color: grey;\n  }\n  \n.half-width[_ngcontent-%COMP%] {\n    width: 48%;\n    color: grey;\n  }\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvYWRtaXNzaW9uLWZvcm0vYWRtaXNzaW9uLWZvcm0uY29tcG9uZW50LmNzcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTtJQUNJLGdCQUFnQjtJQUNoQixXQUFXO0VBQ2I7O0FBRUY7SUFDSSxrQkFBa0I7SUFDbEIsd0JBQXdCO0lBQ3hCLGtCQUFrQjtFQUNwQjs7QUFFQTtJQUNFLGdCQUFnQjtJQUNoQixtQkFBbUI7RUFDckI7O0FBRUE7TUFDSTttQkFDYTtNQUNiLGNBQWM7TUFDZCxpQkFBaUI7TUFDakIsZUFBZTtNQUNmLG1CQUFtQjtFQUN2Qjs7QUFFQTtJQUNFLFVBQVU7SUFDVixXQUFXO0VBQ2I7O0FBRUE7SUFDRSxVQUFVO0lBQ1YsV0FBVztFQUNiIiwiZmlsZSI6InNyYy9hcHAvYWRtaXNzaW9uLWZvcm0vYWRtaXNzaW9uLWZvcm0uY29tcG9uZW50LmNzcyIsInNvdXJjZXNDb250ZW50IjpbInRhYmxlIHtcbiAgICBtYXJnaW4tbGVmdDoyMHB4O1xuICAgIHdpZHRoOiAxMDAlO1xuICB9XG4gIFxuLmZvcm0taGVhZGVye1xuICAgIHRleHQtYWxpZ246IGNlbnRlcjtcbiAgICBib3JkZXItYm90dG9tOiAxcHggc29saWQ7XG4gICAgbWFyZ2luLWJvdHRvbTogNXB4O1xuICB9XG4gIFxuICAuZW50cnktYnV0dG9uLXdyYXBwZXJ7XG4gICAgbWFyZ2luLXRvcDogMTBweDtcbiAgICBtYXJnaW4tYm90dG9tOiAyMHB4O1xuICB9XG5cbiAgLnBhZ2UtaGVhZGluZyB7XG4gICAgICAvKmNvbG9yOiAjM0Y1MUI1O1xuICAgICAgY29sb3I6IGdyZXk7Ki9cbiAgICAgIGZvbnQtc2l6ZToyNHB0O1xuICAgICAgZm9udC13ZWlnaHQ6IGJvbGQ7XG4gICAgICBtYXJnaW4tbGVmdDogMCU7XG4gICAgICBtYXJnaW4tYm90dG9tOiAyMHB4O1xuICB9XG5cbiAgLmZ1bGwtd2lkdGgge1xuICAgIHdpZHRoOiA5NSU7XG4gICAgY29sb3I6IGdyZXk7XG4gIH1cblxuICAuaGFsZi13aWR0aCB7XG4gICAgd2lkdGg6IDQ4JTtcbiAgICBjb2xvcjogZ3JleTtcbiAgfSJdfQ== */"] });
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](AdmissionFormComponent, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"],
        args: [{
                providers: [
                    _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_2__["EPCISIRISService"]
                ],
                selector: 'app-admission-form',
                templateUrl: './admission-form.component.html',
                styleUrls: ['./admission-form.component.css']
            }]
    }], function () { return [{ type: _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_2__["EPCISIRISService"] }]; }, null); })();


/***/ }),

/***/ "ZAI4":
/*!*******************************!*\
  !*** ./src/app/app.module.ts ***!
  \*******************************/
/*! exports provided: AppModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "AppModule", function() { return AppModule; });
/* harmony import */ var _angular_platform_browser__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/platform-browser */ "jhN1");
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/core */ "fXoL");
/* harmony import */ var _shared_material_module__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./shared/material-module */ "qAUw");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/forms */ "3Pt+");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/common/http */ "tk/3");
/* harmony import */ var _angular_material_core__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @angular/material/core */ "FKr1");
/* harmony import */ var _app_component__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./app.component */ "Sy1n");
/* harmony import */ var _angular_platform_browser_animations__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! @angular/platform-browser/animations */ "R1ws");
/* harmony import */ var _admission_form_admission_form_component__WEBPACK_IMPORTED_MODULE_8__ = __webpack_require__(/*! ./admission-form/admission-form.component */ "YhEJ");
/* harmony import */ var _pharmacy_ui_pharmacy_ui_component__WEBPACK_IMPORTED_MODULE_9__ = __webpack_require__(/*! ./pharmacy-ui/pharmacy-ui.component */ "t9WN");
/* harmony import */ var _runner_app_runner_app_component__WEBPACK_IMPORTED_MODULE_10__ = __webpack_require__(/*! ./runner-app/runner-app.component */ "XD1p");
/* harmony import */ var _messages_messages_component__WEBPACK_IMPORTED_MODULE_11__ = __webpack_require__(/*! ./messages/messages.component */ "DruN");
/* harmony import */ var _shared_scan_component_scan_component__WEBPACK_IMPORTED_MODULE_12__ = __webpack_require__(/*! ./shared/scan.component/scan.component */ "pHsH");
/* harmony import */ var _shared_comingsoon_component_comingsoon_component__WEBPACK_IMPORTED_MODULE_13__ = __webpack_require__(/*! ./shared/comingsoon.component/comingsoon.component */ "Ac80");
/* harmony import */ var _pharmacy_ui_gen_label_gen_label_component__WEBPACK_IMPORTED_MODULE_14__ = __webpack_require__(/*! ./pharmacy-ui/gen-label/gen-label.component */ "NdOf");
/* harmony import */ var _runner_app_retrieve_items_retrieve_items_component__WEBPACK_IMPORTED_MODULE_15__ = __webpack_require__(/*! ./runner-app/retrieve-items/retrieve-items.component */ "cjWi");
/* harmony import */ var _presentation_presentation_component__WEBPACK_IMPORTED_MODULE_16__ = __webpack_require__(/*! ./presentation/presentation.component */ "gVBG");
/* harmony import */ var _presentation_instructions_instructions_component__WEBPACK_IMPORTED_MODULE_17__ = __webpack_require__(/*! ./presentation/instructions/instructions.component */ "WUH/");



















class AppModule {
}
AppModule.ɵmod = _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵɵdefineNgModule"]({ type: AppModule, bootstrap: [_app_component__WEBPACK_IMPORTED_MODULE_6__["AppComponent"]] });
AppModule.ɵinj = _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵɵdefineInjector"]({ factory: function AppModule_Factory(t) { return new (t || AppModule)(); }, providers: [
        { provide: _angular_material_core__WEBPACK_IMPORTED_MODULE_5__["MAT_DATE_LOCALE"], useValue: 'en-GB' }
    ], imports: [[
            _angular_platform_browser__WEBPACK_IMPORTED_MODULE_0__["BrowserModule"],
            _angular_platform_browser_animations__WEBPACK_IMPORTED_MODULE_7__["BrowserAnimationsModule"],
            _shared_material_module__WEBPACK_IMPORTED_MODULE_2__["MaterialModule"],
            _angular_forms__WEBPACK_IMPORTED_MODULE_3__["FormsModule"],
            _angular_forms__WEBPACK_IMPORTED_MODULE_3__["ReactiveFormsModule"],
            _angular_common_http__WEBPACK_IMPORTED_MODULE_4__["HttpClientModule"]
        ]] });
(function () { (typeof ngJitMode === "undefined" || ngJitMode) && _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵɵsetNgModuleScope"](AppModule, { declarations: [_app_component__WEBPACK_IMPORTED_MODULE_6__["AppComponent"],
        _admission_form_admission_form_component__WEBPACK_IMPORTED_MODULE_8__["AdmissionFormComponent"],
        _pharmacy_ui_pharmacy_ui_component__WEBPACK_IMPORTED_MODULE_9__["PharmacyUiComponent"],
        _runner_app_runner_app_component__WEBPACK_IMPORTED_MODULE_10__["RunnerAppComponent"],
        _messages_messages_component__WEBPACK_IMPORTED_MODULE_11__["MessagesComponent"],
        _shared_scan_component_scan_component__WEBPACK_IMPORTED_MODULE_12__["ScanComponent"],
        _shared_comingsoon_component_comingsoon_component__WEBPACK_IMPORTED_MODULE_13__["ComingSoonComponent"],
        _pharmacy_ui_gen_label_gen_label_component__WEBPACK_IMPORTED_MODULE_14__["GenLabelComponent"],
        _runner_app_retrieve_items_retrieve_items_component__WEBPACK_IMPORTED_MODULE_15__["RetrieveItemsComponent"],
        _presentation_presentation_component__WEBPACK_IMPORTED_MODULE_16__["PresentationComponent"],
        _presentation_instructions_instructions_component__WEBPACK_IMPORTED_MODULE_17__["InstructionsComponent"]], imports: [_angular_platform_browser__WEBPACK_IMPORTED_MODULE_0__["BrowserModule"],
        _angular_platform_browser_animations__WEBPACK_IMPORTED_MODULE_7__["BrowserAnimationsModule"],
        _shared_material_module__WEBPACK_IMPORTED_MODULE_2__["MaterialModule"],
        _angular_forms__WEBPACK_IMPORTED_MODULE_3__["FormsModule"],
        _angular_forms__WEBPACK_IMPORTED_MODULE_3__["ReactiveFormsModule"],
        _angular_common_http__WEBPACK_IMPORTED_MODULE_4__["HttpClientModule"]] }); })();
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_1__["ɵsetClassMetadata"](AppModule, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_1__["NgModule"],
        args: [{
                declarations: [
                    _app_component__WEBPACK_IMPORTED_MODULE_6__["AppComponent"],
                    _admission_form_admission_form_component__WEBPACK_IMPORTED_MODULE_8__["AdmissionFormComponent"],
                    _pharmacy_ui_pharmacy_ui_component__WEBPACK_IMPORTED_MODULE_9__["PharmacyUiComponent"],
                    _runner_app_runner_app_component__WEBPACK_IMPORTED_MODULE_10__["RunnerAppComponent"],
                    _messages_messages_component__WEBPACK_IMPORTED_MODULE_11__["MessagesComponent"],
                    _shared_scan_component_scan_component__WEBPACK_IMPORTED_MODULE_12__["ScanComponent"],
                    _shared_comingsoon_component_comingsoon_component__WEBPACK_IMPORTED_MODULE_13__["ComingSoonComponent"],
                    _pharmacy_ui_gen_label_gen_label_component__WEBPACK_IMPORTED_MODULE_14__["GenLabelComponent"],
                    _runner_app_retrieve_items_retrieve_items_component__WEBPACK_IMPORTED_MODULE_15__["RetrieveItemsComponent"],
                    _presentation_presentation_component__WEBPACK_IMPORTED_MODULE_16__["PresentationComponent"],
                    _presentation_instructions_instructions_component__WEBPACK_IMPORTED_MODULE_17__["InstructionsComponent"]
                ],
                imports: [
                    _angular_platform_browser__WEBPACK_IMPORTED_MODULE_0__["BrowserModule"],
                    _angular_platform_browser_animations__WEBPACK_IMPORTED_MODULE_7__["BrowserAnimationsModule"],
                    _shared_material_module__WEBPACK_IMPORTED_MODULE_2__["MaterialModule"],
                    _angular_forms__WEBPACK_IMPORTED_MODULE_3__["FormsModule"],
                    _angular_forms__WEBPACK_IMPORTED_MODULE_3__["ReactiveFormsModule"],
                    _angular_common_http__WEBPACK_IMPORTED_MODULE_4__["HttpClientModule"]
                ],
                providers: [
                    { provide: _angular_material_core__WEBPACK_IMPORTED_MODULE_5__["MAT_DATE_LOCALE"], useValue: 'en-GB' }
                ],
                bootstrap: [_app_component__WEBPACK_IMPORTED_MODULE_6__["AppComponent"]]
            }]
    }], null, null); })();


/***/ }),

/***/ "bGM6":
/*!************************************************!*\
  !*** ./src/app/services/epcis-iris.service.ts ***!
  \************************************************/
/*! exports provided: EPCISIRISService */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "EPCISIRISService", function() { return EPCISIRISService; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");
/* harmony import */ var _angular_common_http__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/common/http */ "tk/3");
/* harmony import */ var rxjs__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! rxjs */ "qCKp");
/* harmony import */ var rxjs_operators__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! rxjs/operators */ "kU1M");
/* harmony import */ var src_environments_environment__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! src/environments/environment */ "AytR");
/* harmony import */ var _message_service__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ./message.service */ "tZre");








class EPCISIRISService {
    constructor(http, messageService) {
        this.http = http;
        this.messageService = messageService;
        // It appears unnecessary to create http options / headers
        // for ths application, but included for completeness of solution
        this.httpOptions = {
            headers: new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"]({
                'Content-Type': 'application/json',
                'responseType': 'json'
            })
        };
        this.httpBlobOptions = {
            headers: new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"]({
                'Content-Type': 'application/json',
                'responseType': 'blob'
            })
        };
        this.httpTextOptions = {
            headers: new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"]({
                'Content-Type': 'application/json',
                'responseType': 'text'
            })
        };
        this.httpArrayBufferOptions = {
            headers: new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"]({
                'Content-Type': 'application/json',
                'responseType': 'arraybuffer'
            })
        };
    }
    log(message) {
        this.messageService.add(`EPCIS Service: ${message}`);
    }
    handleError(operation = 'operation', result) {
        return (error) => {
            // TODO: better job of transforming error for user consumption
            this.log(`${operation} failed: ${error.message}`);
            // Let the app keep running by returning an empty result.
            return Object(rxjs__WEBPACK_IMPORTED_MODULE_2__["of"])(result);
        };
    }
    getBackendIP() {
        //when the front end is run in an angular container
        //environment.apiURL will be an empty string IF backend IP address
        //is not provided to ng at build time, environment variable HOST_IP
        if ((src_environments_environment__WEBPACK_IMPORTED_MODULE_4__["environment"].apiURL === "localhost") || (src_environments_environment__WEBPACK_IMPORTED_MODULE_4__["environment"].apiURL === "")) {
            //If it is set to 'localhost', it is still possible that
            //that the angular content is being served remotely
            //Then the most reliable way to find the IP address of the container
            //is to read it from the browser adddress bar
            // so return the substring between 'http://' and the port marker ':' */
            let thislocation = location.toString();
            thislocation = thislocation.substr(7, (thislocation.indexOf(':', 7) - 7));
            return 'http://' + thislocation;
        }
        else {
            return 'http://' + src_environments_environment__WEBPACK_IMPORTED_MODULE_4__["environment"].apiURL;
        }
    }
    admitPatient(admitForm) {
        const headers = new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"]();
        let url = this.getBackendIP() + ':52773/query/demoStep1';
        return this.http.post(url, admitForm, this.httpOptions)
            .pipe(Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["tap"])((newAdmit) => this.log('Admit: ' + `${newAdmit.PAS}`)), Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["catchError"])(this.handleError('admitPatient')));
    }
    linkDischarge() {
        const headers = new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"]();
        let url = this.getBackendIP() + ':52773/query/demoStep2';
        return this.http.get(url)
            .pipe(Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["tap"])((newLink) => this.log('Link Discharge Document: ' + `${newLink}`)), Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["catchError"])(this.handleError('linkDischarge')));
    }
    getInpatientSpellId(genLabelForm) {
        const headers = new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"]();
        let url = this.getBackendIP() + ':52773/query/demoStep3';
        return this.http.get(url, genLabelForm)
            .pipe(Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["tap"])((any) => this.log('Inpatient Spell Id: ' + `${any.EventQueryResult[0].EPCISBody.EventList.TransactionEvent[0].any[1]}`)), Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["catchError"])(this.handleError('getInpatientSpellId')));
    }
    getPatientLocationId(genLabelForm) {
        const headers = new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"]();
        let url = this.getBackendIP() + ':52773/query/demoStep4';
        return this.http.get(url, genLabelForm)
            .pipe(Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["tap"])((any) => this.log('Patient Location Id: ' + `${any.EventQueryResult[0].EPCISBody.EventList.ObjectEvent[0].bizLocation.id}`)), Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["catchError"])(this.handleError('getPatientLocationId')));
    }
    linkPigeonHole() {
        const headers = new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"]();
        let url = this.getBackendIP() + ':52773/query/demoStep5';
        return this.http.get(url)
            .pipe(Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["tap"])((newLink) => this.log('Link Pigeon Hole : ' + `${newLink}`)), Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["catchError"])(this.handleError('linkPigeonhole')));
    }
    scanLocation(testPayload) {
        const headers = new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"]();
        let url = this.getBackendIP() + ':52773/query/demoStep6';
        return this.http.get(url, this.httpTextOptions)
            .pipe(Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["tap"])((any) => this.log('Scan location : ' + `${any}`)), 
        //Sorry this is a hack... Complete REST response can be seen in the REST CALL LOGS TAB
        //but it cannot be parsed and an http parsing error is reported.
        //Below we are effectively making the error OK :-|
        Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["catchError"])((any) => {
            this.log('Scan location : ' /*'+ `${any.error.error}` + " Response follows... : '*/ + `${any.error.text}`);
            return Object(rxjs__WEBPACK_IMPORTED_MODULE_2__["throwError"])(any);
        }));
    }
    retrieveItems(retrieveForm) {
        const headers = new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"]();
        let url = this.getBackendIP() + ':52773/query/demoStep7';
        return this.http.get(url, retrieveForm)
            .pipe(Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["tap"])((any) => this.log('Retrieve Items : ' + `${any}`)), 
        //Sorry this is a hack... Complete REST response can be seen in the REST CALL LOGS TAB
        //but it cannot be parsed and an http parsing error is reported.
        //Below we are effectively making the error OK :-|
        Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["catchError"])((any) => {
            this.log('Retrieve Items : ' /*'+ `${any.error.error}` + " Response follows... : '*/ + `${any.error.text}`);
            return Object(rxjs__WEBPACK_IMPORTED_MODULE_2__["throwError"])(any);
        }));
    }
    dischargePatient(admitForm) {
        const headers = new _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpHeaders"]();
        let url = this.getBackendIP() + ':52773/query/demoStep8';
        return this.http.post(url, admitForm, this.httpOptions)
            .pipe(Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["tap"])((newDischarge) => this.log('Discharge: ' + `${newDischarge.PAS}`)), Object(rxjs_operators__WEBPACK_IMPORTED_MODULE_3__["catchError"])(this.handleError('dischargePatient')));
    }
}
EPCISIRISService.ɵfac = function EPCISIRISService_Factory(t) { return new (t || EPCISIRISService)(_angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵinject"](_angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpClient"]), _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵinject"](_message_service__WEBPACK_IMPORTED_MODULE_5__["MessageService"])); };
EPCISIRISService.ɵprov = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineInjectable"]({ token: EPCISIRISService, factory: EPCISIRISService.ɵfac, providedIn: 'root' });
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](EPCISIRISService, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Injectable"],
        args: [{
                providedIn: 'root'
            }]
    }], function () { return [{ type: _angular_common_http__WEBPACK_IMPORTED_MODULE_1__["HttpClient"] }, { type: _message_service__WEBPACK_IMPORTED_MODULE_5__["MessageService"] }]; }, null); })();


/***/ }),

/***/ "cjWi":
/*!***********************************************************************!*\
  !*** ./src/app/runner-app/retrieve-items/retrieve-items.component.ts ***!
  \***********************************************************************/
/*! exports provided: RetrieveItemsComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "RetrieveItemsComponent", function() { return RetrieveItemsComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/forms */ "3Pt+");
/* harmony import */ var _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ../../services/epcis-iris.service */ "bGM6");
/* harmony import */ var _angular_material_button__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/material/button */ "bTqV");
/* harmony import */ var _angular_material_form_field__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/material/form-field */ "kmnG");
/* harmony import */ var _angular_material_input__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @angular/material/input */ "qFsG");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! @angular/common */ "ofXK");
/* harmony import */ var _angular_material_checkbox__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! @angular/material/checkbox */ "bSwM");










function RetrieveItemsComponent_div_16_li_7_Template(rf, ctx) { if (rf & 1) {
    const _r4 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵgetCurrentView"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "li");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](1, "mat-checkbox", 13);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("ngModelChange", function RetrieveItemsComponent_div_16_li_7_Template_mat_checkbox_ngModelChange_1_listener($event) { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵrestoreView"](_r4); const subtask_r2 = ctx.$implicit; return subtask_r2.completed = $event; })("ngModelChange", function RetrieveItemsComponent_div_16_li_7_Template_mat_checkbox_ngModelChange_1_listener() { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵrestoreView"](_r4); const ctx_r5 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵnextContext"](2); return ctx_r5.updateAllComplete(); });
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](2);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} if (rf & 2) {
    const subtask_r2 = ctx.$implicit;
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngModel", subtask_r2.completed)("color", subtask_r2.color);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtextInterpolate1"](" ", subtask_r2.name, " ");
} }
function RetrieveItemsComponent_div_16_Template(rf, ctx) { if (rf & 1) {
    const _r7 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵgetCurrentView"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](1, "section", 9);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](2, "span", 10);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](3, "mat-checkbox", 11);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("change", function RetrieveItemsComponent_div_16_Template_mat_checkbox_change_3_listener($event) { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵrestoreView"](_r7); const ctx_r6 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵnextContext"](); return ctx_r6.setAll($event.checked); });
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](4);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](5, "span", 9);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](6, "ul");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](7, RetrieveItemsComponent_div_16_li_7_Template, 3, 3, "li", 12);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} if (rf & 2) {
    const ctx_r0 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵnextContext"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](3);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("checked", ctx_r0.allComplete)("color", ctx_r0.task.color)("indeterminate", ctx_r0.someComplete());
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtextInterpolate1"](" ", ctx_r0.task.name, " ");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](3);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngForOf", ctx_r0.task.subtasks);
} }
class RetrieveItemsComponent {
    constructor(epcisIRISservice) {
        this.epcisIRISservice = epcisIRISservice;
        this.retrieveItemsForm = new _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormGroup"]({
            location: new _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormControl"]('')
        });
        this.isListVisible = false;
        this.task = {
            name: 'All Picked',
            completed: false,
            color: 'primary',
            subtasks: [
                { "name": "  Freezer", "completed": false, "color": "primary" },
                { "name": "  Controlled Items Safe", "completed": false, "color": "primary" },
                { "name": "  Pigeon Hole", "completed": false, "color": "primary" }
            ]
        };
        this.allComplete = false;
        this.submitted = false;
        this.retrieveItemsForm.setValue({ location: 'Monkswell Ward' });
    }
    updateAllComplete() {
        this.allComplete = this.task.subtasks != null && this.task.subtasks.every(t => t.completed);
    }
    someComplete() {
        if (this.task.subtasks == null) {
            return false;
        }
        return this.task.subtasks.filter(t => t.completed).length > 0 && !this.allComplete;
    }
    setAll(completed) {
        this.allComplete = completed;
        if (this.task.subtasks == null) {
            return;
        }
        this.task.subtasks.forEach(t => t.completed = completed);
    }
    onSubmit() { }
    ongetItems() {
        // TODO: Use EventEmitter with form value
        console.log(this.retrieveItemsForm.value);
        var JSONString = JSON.stringify(this.retrieveItemsForm.value);
        this.epcisIRISservice.retrieveItems(JSONString).subscribe((data) => {
            //this.reset();
            console.log("Success", data, "success");
            this.retrieveItemsForm.setValue({ location: 'Monkswell Ward' });
        }, error => {
            console.warn("There is something weird in retrieve items process", error);
        });
        this.isListVisible = true;
    }
    getItems() {
        console.log("Getting Items...");
        this.ongetItems();
    }
    ngOnInit() {
    }
    _filter(value) {
        const filterValue = value.toLowerCase();
        return;
    }
    reset() {
        this.retrieveItemsForm.setValue({ location: '' });
        this.submitted = false;
    }
}
RetrieveItemsComponent.ɵfac = function RetrieveItemsComponent_Factory(t) { return new (t || RetrieveItemsComponent)(_angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdirectiveInject"](_services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_2__["EPCISIRISService"])); };
RetrieveItemsComponent.ɵcmp = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineComponent"]({ type: RetrieveItemsComponent, selectors: [["app-retrieve-items"]], decls: 17, vars: 3, consts: [[1, "gen-label-form"], [1, "form-header"], [3, "formGroup", "ngSubmit"], ["cellspacing", "0"], [1, "entry-button-wrapper"], ["mat-raised-button", "", "color", "primary", "type", "submit", 3, "disabled", "click"], [1, "half-width"], ["matInput", "", "formControlName", "location"], [4, "ngIf"], [1, "list-section"], [1, "-list-section"], [1, "list-margin", 3, "checked", "color", "indeterminate", "change"], [4, "ngFor", "ngForOf"], [3, "ngModel", "color", "ngModelChange"]], template: function RetrieveItemsComponent_Template(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](1, "h2", 1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](2, "Medicines to collect");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](3, "form", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("ngSubmit", function RetrieveItemsComponent_Template_form_ngSubmit_3_listener() { return ctx.onSubmit(); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](4, "table", 3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](5, "tr");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](6, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](7, "div", 4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](8, "button", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function RetrieveItemsComponent_Template_button_click_8_listener() { return ctx.getItems(); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](9, "Retrieve Items for");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](10, "td");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](11, "div", 6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](12, "mat-form-field");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](13, "mat-label");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](14, "Location");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](15, "input", 7);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](16, RetrieveItemsComponent_div_16_Template, 8, 5, "div", 8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    } if (rf & 2) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("formGroup", ctx.retrieveItemsForm);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("disabled", ctx.allComplete);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngIf", ctx.isListVisible);
    } }, directives: [_angular_forms__WEBPACK_IMPORTED_MODULE_1__["ɵangular_packages_forms_forms_y"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["NgControlStatusGroup"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormGroupDirective"], _angular_material_button__WEBPACK_IMPORTED_MODULE_3__["MatButton"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_4__["MatFormField"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_4__["MatLabel"], _angular_material_input__WEBPACK_IMPORTED_MODULE_5__["MatInput"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["DefaultValueAccessor"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["NgControlStatus"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["FormControlName"], _angular_common__WEBPACK_IMPORTED_MODULE_6__["NgIf"], _angular_material_checkbox__WEBPACK_IMPORTED_MODULE_7__["MatCheckbox"], _angular_common__WEBPACK_IMPORTED_MODULE_6__["NgForOf"], _angular_forms__WEBPACK_IMPORTED_MODULE_1__["NgModel"]], styles: ["table[_ngcontent-%COMP%] {\n    margin-left:10px;\n    width: 95%;\n}\n    \n.form-header[_ngcontent-%COMP%]{\n  color:black;\n  text-align: left;\n}\n    \n.entry-button-wrapper[_ngcontent-%COMP%]{\n  margin-top: 10px;\n  margin-bottom: 20px;\n}\n    \n.page-heading[_ngcontent-%COMP%] {\n  \n  font-size:24pt;\n  font-weight: bold;\n  margin-left: 0%;\n  margin-bottom: 20px;\n}\n    \n.full-width[_ngcontent-%COMP%] {\n  width: 95%;\n  color: grey;\n}\n    \n.half-width[_ngcontent-%COMP%] {\n  width: 40%;\n  color: grey;\n}\n    \n.list-section[_ngcontent-%COMP%] {\n  margin: 12px 0;\n  color:#3F51B5;\n}\n    \n.list-margin[_ngcontent-%COMP%] {\n  margin: 0 12px;\n}\n    \nul[_ngcontent-%COMP%] {\nlist-style-type: none;\n  margin-top: 4px;\n}\n    \nh2[_ngcontent-%COMP%] {\n  margin-left: 10px;\n}\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvcnVubmVyLWFwcC9yZXRyaWV2ZS1pdGVtcy9yZXRyaWV2ZS1pdGVtcy5jb21wb25lbnQuY3NzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBO0lBQ0ksZ0JBQWdCO0lBQ2hCLFVBQVU7QUFDZDs7QUFFQTtFQUNFLFdBQVc7RUFDWCxnQkFBZ0I7QUFDbEI7O0FBRUE7RUFDRSxnQkFBZ0I7RUFDaEIsbUJBQW1CO0FBQ3JCOztBQUVBO0VBQ0U7ZUFDYTtFQUNiLGNBQWM7RUFDZCxpQkFBaUI7RUFDakIsZUFBZTtFQUNmLG1CQUFtQjtBQUNyQjs7QUFFQTtFQUNFLFVBQVU7RUFDVixXQUFXO0FBQ2I7O0FBRUE7RUFDRSxVQUFVO0VBQ1YsV0FBVztBQUNiOztBQUVBO0VBQ0UsY0FBYztFQUNkLGFBQWE7QUFDZjs7QUFFQTtFQUNFLGNBQWM7QUFDaEI7O0FBRUE7QUFDQSxxQkFBcUI7RUFDbkIsZUFBZTtBQUNqQjs7QUFDQTtFQUNFLGlCQUFpQjtBQUNuQiIsImZpbGUiOiJzcmMvYXBwL3J1bm5lci1hcHAvcmV0cmlldmUtaXRlbXMvcmV0cmlldmUtaXRlbXMuY29tcG9uZW50LmNzcyIsInNvdXJjZXNDb250ZW50IjpbInRhYmxlIHtcbiAgICBtYXJnaW4tbGVmdDoxMHB4O1xuICAgIHdpZHRoOiA5NSU7XG59XG4gICAgXG4uZm9ybS1oZWFkZXJ7XG4gIGNvbG9yOmJsYWNrO1xuICB0ZXh0LWFsaWduOiBsZWZ0O1xufVxuICBcbi5lbnRyeS1idXR0b24td3JhcHBlcntcbiAgbWFyZ2luLXRvcDogMTBweDtcbiAgbWFyZ2luLWJvdHRvbTogMjBweDtcbn1cblxuLnBhZ2UtaGVhZGluZyB7XG4gIC8qY29sb3I6ICMzRjUxQjU7XG4gIGNvbG9yOiBncmV5OyovXG4gIGZvbnQtc2l6ZToyNHB0O1xuICBmb250LXdlaWdodDogYm9sZDtcbiAgbWFyZ2luLWxlZnQ6IDAlO1xuICBtYXJnaW4tYm90dG9tOiAyMHB4O1xufVxuXG4uZnVsbC13aWR0aCB7XG4gIHdpZHRoOiA5NSU7XG4gIGNvbG9yOiBncmV5O1xufVxuXG4uaGFsZi13aWR0aCB7XG4gIHdpZHRoOiA0MCU7XG4gIGNvbG9yOiBncmV5O1xufVxuXG4ubGlzdC1zZWN0aW9uIHtcbiAgbWFyZ2luOiAxMnB4IDA7XG4gIGNvbG9yOiMzRjUxQjU7XG59XG5cbi5saXN0LW1hcmdpbiB7XG4gIG1hcmdpbjogMCAxMnB4O1xufVxuXG51bCB7XG5saXN0LXN0eWxlLXR5cGU6IG5vbmU7XG4gIG1hcmdpbi10b3A6IDRweDtcbn1cbmgyIHtcbiAgbWFyZ2luLWxlZnQ6IDEwcHg7XG59Il19 */"] });
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](RetrieveItemsComponent, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"],
        args: [{
                selector: 'app-retrieve-items',
                templateUrl: './retrieve-items.component.html',
                styleUrls: ['./retrieve-items.component.css']
            }]
    }], function () { return [{ type: _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_2__["EPCISIRISService"] }]; }, null); })();


/***/ }),

/***/ "gVBG":
/*!********************************************************!*\
  !*** ./src/app/presentation/presentation.component.ts ***!
  \********************************************************/
/*! exports provided: PresentationComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "PresentationComponent", function() { return PresentationComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");
/* harmony import */ var _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../services/epcis-iris.service */ "bGM6");
/* harmony import */ var _angular_material_button__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/material/button */ "bTqV");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/common */ "ofXK");
/* harmony import */ var _instructions_instructions_component__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ./instructions/instructions.component */ "WUH/");







function PresentationComponent_div_28_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](1, "app-instructions");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} }
class PresentationComponent {
    constructor(urlChecker) {
        this.urlChecker = urlChecker;
        this.showInstructions = false;
    }
    ngOnInit() {
        this.showInstructions = false;
    }
    moveToSelectedTab(tabName) {
        for (let i = 0; i < document.querySelectorAll('.mat-tab-label-content').length; i++) {
            if (document.querySelectorAll('.mat-tab-label-content')[i]
                .innerText == tabName) {
                document.querySelectorAll('.mat-tab-label')[i].click();
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
    openInNewTab(destination) {
        let url = '';
        url = this.urlChecker.getBackendIP();
        if (destination == 'production') {
            url = url + ':52773/csp/healthshare/epcis/EnsPortal.ProductionConfig.zen?PRODUCTION=EPCIS.intersystems.Production';
        }
        else if (destination == 'messages') {
            url = url + ':52773/csp/healthshare/epcis/EnsPortal.MessageViewer.zen';
        }
        else if (destination == 'BPL') {
            url = url + ':52773/csp/healthshare/epcis/EnsPortal.BPLEditor.zen?BP=EPCIS.intersystems.HL7toLocationProcess.bpl';
        }
        window.open(url, '_blank').focus();
    }
}
PresentationComponent.ɵfac = function PresentationComponent_Factory(t) { return new (t || PresentationComponent)(_angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdirectiveInject"](_services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_1__["EPCISIRISService"])); };
PresentationComponent.ɵcmp = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineComponent"]({ type: PresentationComponent, selectors: [["app-presentation"]], features: [_angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵProvidersFeature"]([
            _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_1__["EPCISIRISService"]
        ])], decls: 29, vars: 1, consts: [[1, "container"], ["src", "/assets/img/EPCISPresentation.jpg", 1, "presImg"], [1, "btn"], ["mat-icon-button", "", "type", "button", "color", "transparent", 1, "adtBtn", 3, "click"], ["mat-icon-button", "", "type", "button", "color", "transparent", 1, "pharmBtn", 3, "click"], ["mat-icon-button", "", "type", "button", "color", "transparent", 1, "runBtn", 3, "click"], ["mat-icon-button", "", "type", "button", "color", "transparent", 1, "prodBtn", 3, "click"], [1, "navBtnGroup"], ["mat-raised-button", "", "color", "accent", 3, "click"], ["mat-raised-button", "", "color", "primary", 3, "click"], ["id", "showHideButton", "mat-raised-button", "", "color", "primary", 3, "click"], [4, "ngIf"]], template: function PresentationComponent_Template(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](1, "img", 1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](2, "div", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](3, "button", 3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PresentationComponent_Template_button_click_3_listener() { return ctx.moveToSelectedTab("ADMISSION / DISCHARGE"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](4, "[ ]");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](5, "button", 4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PresentationComponent_Template_button_click_5_listener() { return ctx.moveToSelectedTab("PHARMACY"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](6, "[ ]");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](7, "button", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PresentationComponent_Template_button_click_7_listener() { return ctx.moveToSelectedTab("RUNNER APP"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](8, "[ ]");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](9, "button", 6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PresentationComponent_Template_button_click_9_listener() { return ctx.openInNewTab("production"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](10, "[ ]");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](11, "div", 7);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](12, "button", 8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PresentationComponent_Template_button_click_12_listener() { return ctx.moveToSelectedTab("ADMISSION / DISCHARGE"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](13, "Open ADT");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](14, "button", 8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PresentationComponent_Template_button_click_14_listener() { return ctx.moveToSelectedTab("PHARMACY"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](15, "Open Pharmacy UI");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](16, "button", 8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PresentationComponent_Template_button_click_16_listener() { return ctx.moveToSelectedTab("RUNNER APP"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](17, "Open Runner App");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](18, "button", 8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PresentationComponent_Template_button_click_18_listener() { return ctx.moveToSelectedTab("REST CALL LOGS"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](19, "Open Logs");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](20, "button", 9);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PresentationComponent_Template_button_click_20_listener() { return ctx.openInNewTab("production"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](21, "Open Production");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](22, "button", 9);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PresentationComponent_Template_button_click_22_listener() { return ctx.openInNewTab("messages"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](23, "Open Messages");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](24, "button", 9);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PresentationComponent_Template_button_click_24_listener() { return ctx.openInNewTab("BPL"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](25, "Open BPL");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](26, "button", 10);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PresentationComponent_Template_button_click_26_listener() { return ctx.onShowHide(); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](27, "Show Instructions");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](28, PresentationComponent_div_28_Template, 2, 0, "div", 11);
    } if (rf & 2) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](28);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngIf", ctx.showInstructions);
    } }, directives: [_angular_material_button__WEBPACK_IMPORTED_MODULE_2__["MatButton"], _angular_common__WEBPACK_IMPORTED_MODULE_3__["NgIf"], _instructions_instructions_component__WEBPACK_IMPORTED_MODULE_4__["InstructionsComponent"]], styles: [".container[_ngcontent-%COMP%] {\n  position:relative;\n}\n.page-heading[_ngcontent-%COMP%] {\n  \n  font-size:24pt;\n  font-weight: bold;\n  margin-left: 0%;\n  margin-bottom: 20px;\n}\n.presImg[_ngcontent-%COMP%] {\n  position: relative;\n  max-width:100%;\n  height:auto;\n}\n.btn[_ngcontent-%COMP%] {\n  background: 'transparent';\n}\n.adtBtn[_ngcontent-%COMP%] {\n  position: absolute;\n  background: 'transparent';\n  min-width: 100px!important;\n  font-size:48pt;\n  left: 7%;\n  top: 24%;\n  color: transparent;\n}\n.pharmBtn[_ngcontent-%COMP%] {\n  position: absolute;\n  background: 'transparent';\n  min-width: 100px!important;\n  font-size:48pt;\n  left:32%;\n  top:24%;\n  color: transparent;\n}\n.runBtn[_ngcontent-%COMP%] {\n  position: absolute;\n  background: 'transparent';\n  min-width: 100px!important;\n  font-size:48pt;\n  left:65%;\n  top:25%;\n  color: transparent;\n}\n.prodBtn[_ngcontent-%COMP%] {\n  position: absolute;\n  background: 'transparent';\n  min-width: 100px!important;\n  font-size:48pt;\n  left:50%;\n  top:65%;\n  color: transparent;  \n}\n.navBtnGroup[_ngcontent-%COMP%] {\n  margin: auto;\n  display: flex;\n  flex-direction: row;\n  justify-content: center;\n}\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvcHJlc2VudGF0aW9uL3ByZXNlbnRhdGlvbi5jb21wb25lbnQuY3NzIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiJBQUFBO0VBQ0UsaUJBQWlCO0FBQ25CO0FBQ0E7RUFDRTtlQUNhO0VBQ2IsY0FBYztFQUNkLGlCQUFpQjtFQUNqQixlQUFlO0VBQ2YsbUJBQW1CO0FBQ3JCO0FBRUE7RUFDRSxrQkFBa0I7RUFDbEIsY0FBYztFQUNkLFdBQVc7QUFDYjtBQUVBO0VBQ0UseUJBQXlCO0FBQzNCO0FBRUE7RUFDRSxrQkFBa0I7RUFDbEIseUJBQXlCO0VBQ3pCLDBCQUEwQjtFQUMxQixjQUFjO0VBQ2QsUUFBUTtFQUNSLFFBQVE7RUFDUixrQkFBa0I7QUFDcEI7QUFFQTtFQUNFLGtCQUFrQjtFQUNsQix5QkFBeUI7RUFDekIsMEJBQTBCO0VBQzFCLGNBQWM7RUFDZCxRQUFRO0VBQ1IsT0FBTztFQUNQLGtCQUFrQjtBQUNwQjtBQUVBO0VBQ0Usa0JBQWtCO0VBQ2xCLHlCQUF5QjtFQUN6QiwwQkFBMEI7RUFDMUIsY0FBYztFQUNkLFFBQVE7RUFDUixPQUFPO0VBQ1Asa0JBQWtCO0FBQ3BCO0FBRUE7RUFDRSxrQkFBa0I7RUFDbEIseUJBQXlCO0VBQ3pCLDBCQUEwQjtFQUMxQixjQUFjO0VBQ2QsUUFBUTtFQUNSLE9BQU87RUFDUCxrQkFBa0I7QUFDcEI7QUFFQTtFQUNFLFlBQVk7RUFDWixhQUFhO0VBQ2IsbUJBQW1CO0VBQ25CLHVCQUF1QjtBQUN6QiIsImZpbGUiOiJzcmMvYXBwL3ByZXNlbnRhdGlvbi9wcmVzZW50YXRpb24uY29tcG9uZW50LmNzcyIsInNvdXJjZXNDb250ZW50IjpbIi5jb250YWluZXIge1xuICBwb3NpdGlvbjpyZWxhdGl2ZTtcbn1cbi5wYWdlLWhlYWRpbmcge1xuICAvKmNvbG9yOiAjM0Y1MUI1O1xuICBjb2xvcjogZ3JleTsqL1xuICBmb250LXNpemU6MjRwdDtcbiAgZm9udC13ZWlnaHQ6IGJvbGQ7XG4gIG1hcmdpbi1sZWZ0OiAwJTtcbiAgbWFyZ2luLWJvdHRvbTogMjBweDtcbn1cblxuLnByZXNJbWcge1xuICBwb3NpdGlvbjogcmVsYXRpdmU7XG4gIG1heC13aWR0aDoxMDAlO1xuICBoZWlnaHQ6YXV0bztcbn1cblxuLmJ0biB7XG4gIGJhY2tncm91bmQ6ICd0cmFuc3BhcmVudCc7XG59XG5cbi5hZHRCdG4ge1xuICBwb3NpdGlvbjogYWJzb2x1dGU7XG4gIGJhY2tncm91bmQ6ICd0cmFuc3BhcmVudCc7XG4gIG1pbi13aWR0aDogMTAwcHghaW1wb3J0YW50O1xuICBmb250LXNpemU6NDhwdDtcbiAgbGVmdDogNyU7XG4gIHRvcDogMjQlO1xuICBjb2xvcjogdHJhbnNwYXJlbnQ7XG59XG5cbi5waGFybUJ0biB7XG4gIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgYmFja2dyb3VuZDogJ3RyYW5zcGFyZW50JztcbiAgbWluLXdpZHRoOiAxMDBweCFpbXBvcnRhbnQ7XG4gIGZvbnQtc2l6ZTo0OHB0O1xuICBsZWZ0OjMyJTtcbiAgdG9wOjI0JTtcbiAgY29sb3I6IHRyYW5zcGFyZW50O1xufVxuXG4ucnVuQnRuIHtcbiAgcG9zaXRpb246IGFic29sdXRlO1xuICBiYWNrZ3JvdW5kOiAndHJhbnNwYXJlbnQnO1xuICBtaW4td2lkdGg6IDEwMHB4IWltcG9ydGFudDtcbiAgZm9udC1zaXplOjQ4cHQ7XG4gIGxlZnQ6NjUlO1xuICB0b3A6MjUlO1xuICBjb2xvcjogdHJhbnNwYXJlbnQ7XG59XG5cbi5wcm9kQnRuIHtcbiAgcG9zaXRpb246IGFic29sdXRlO1xuICBiYWNrZ3JvdW5kOiAndHJhbnNwYXJlbnQnO1xuICBtaW4td2lkdGg6IDEwMHB4IWltcG9ydGFudDtcbiAgZm9udC1zaXplOjQ4cHQ7XG4gIGxlZnQ6NTAlO1xuICB0b3A6NjUlO1xuICBjb2xvcjogdHJhbnNwYXJlbnQ7ICBcbn1cblxuLm5hdkJ0bkdyb3VwIHtcbiAgbWFyZ2luOiBhdXRvO1xuICBkaXNwbGF5OiBmbGV4O1xuICBmbGV4LWRpcmVjdGlvbjogcm93O1xuICBqdXN0aWZ5LWNvbnRlbnQ6IGNlbnRlcjtcbn0iXX0= */"] });
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](PresentationComponent, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"],
        args: [{
                providers: [
                    _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_1__["EPCISIRISService"]
                ],
                selector: 'app-presentation',
                templateUrl: './presentation.component.html',
                styleUrls: ['./presentation.component.css']
            }]
    }], function () { return [{ type: _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_1__["EPCISIRISService"] }]; }, null); })();


/***/ }),

/***/ "kiQV":
/*!**********************!*\
  !*** ./package.json ***!
  \**********************/
/*! exports provided: name, version, scripts, private, dependencies, devDependencies, default */
/***/ (function(module) {

module.exports = JSON.parse("{\"name\":\"epcis-app\",\"version\":\"1.0.1\",\"scripts\":{\"ng\":\"ng\",\"start\":\"ng serve\",\"build\":\"ng build\",\"test\":\"ng test\",\"lint\":\"ng lint\",\"e2e\":\"ng e2e\"},\"private\":true,\"dependencies\":{\"@angular/animations\":\"~10.1.3\",\"@angular/cdk\":\"^10.2.7\",\"@angular/common\":\"~10.1.3\",\"@angular/compiler\":\"~10.1.3\",\"@angular/core\":\"~10.1.3\",\"@angular/forms\":\"~10.1.3\",\"@angular/material\":\"^10.2.7\",\"@angular/platform-browser\":\"~10.1.3\",\"@angular/platform-browser-dynamic\":\"~10.1.3\",\"@angular/router\":\"~10.1.3\",\"rxjs\":\"~6.6.0\",\"tslib\":\"^2.0.0\",\"zone.js\":\"~0.10.2\"},\"devDependencies\":{\"@angular-devkit/build-angular\":\"~0.1001.3\",\"@angular/cli\":\"~10.1.3\",\"@angular/compiler-cli\":\"~10.1.3\",\"@types/node\":\"^12.11.1\",\"@types/jasmine\":\"~3.5.0\",\"@types/jasminewd2\":\"~2.0.3\",\"codelyzer\":\"^6.0.0\",\"jasmine-core\":\"~3.6.0\",\"jasmine-spec-reporter\":\"~5.0.0\",\"karma\":\"~5.0.0\",\"karma-chrome-launcher\":\"~3.1.0\",\"karma-coverage-istanbul-reporter\":\"~3.0.2\",\"karma-jasmine\":\"~4.0.0\",\"karma-jasmine-html-reporter\":\"^1.5.0\",\"protractor\":\"~7.0.0\",\"ts-node\":\"~8.3.0\",\"tslint\":\"~6.1.0\",\"typescript\":\"~4.0.2\"}}");

/***/ }),

/***/ "pHsH":
/*!*********************************************************!*\
  !*** ./src/app/shared/scan.component/scan.component.ts ***!
  \*********************************************************/
/*! exports provided: ScanComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ScanComponent", function() { return ScanComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");
/* harmony import */ var _animation__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ../animation */ "w2QH");
/* harmony import */ var _angular_forms__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/forms */ "3Pt+");
/* harmony import */ var _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! ../../services/epcis-iris.service */ "bGM6");
/* harmony import */ var _angular_material_button__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/material/button */ "bTqV");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @angular/common */ "ofXK");
/* harmony import */ var _angular_material_form_field__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! @angular/material/form-field */ "kmnG");
/* harmony import */ var _angular_material_input__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! @angular/material/input */ "qFsG");











function ScanComponent_div_5_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](1, "form", 3);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](2, "mat-form-field", 4);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](3, "mat-label");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](4, "Location Friendly Name");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](5, "input", 5);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} if (rf & 2) {
    const ctx_r0 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵnextContext"]();
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("formGroup", ctx_r0.scanForm);
} }
class ScanComponent {
    constructor(epcisIRISservice) {
        this.epcisIRISservice = epcisIRISservice;
        this.scanForm = new _angular_forms__WEBPACK_IMPORTED_MODULE_2__["FormGroup"]({
            locFrName: new _angular_forms__WEBPACK_IMPORTED_MODULE_2__["FormControl"]('')
        });
        this.choice = 2;
        this.state = 'out';
        this.counter = 0;
        this.enableAnimation = false;
        this.imageSource = '';
        this.isScanLocation = false;
        this.dischargeImageSource = 'assets/img/DischargeSummary.jpg';
        this.TTABagImageSource = 'assets/img/LocationBarcode.jpg';
        this.pigeonholeBarcodeImageSource = 'assets/img/PigeonHoleForWardBarcode.jpg';
        this.scanForm.setValue({ 'locFrName': '' });
    }
    ngOnInit() {
        this.imageSource = '';
        this.setAttributes();
    }
    onClick() {
        this.chooseImage();
        this.enableAnimation = true;
        //this.counter = 0;
        this.toggleState();
    }
    setAttributes() {
        let scanButtonElem = document.getElementById("scanButton");
        let scanDocElem = document.getElementById("scanDoc");
        //console.log("button", scanButtonElem);
        //console.log("doc", scanDocElem);
        console.log(this.function, "Scan function...");
        if (this.function == "discharge") {
            scanDocElem.setAttribute("width", "400px");
            scanButtonElem.style.marginLeft = "270px";
        }
        else if (this.function == "pigeonHole") {
            scanDocElem.setAttribute("width", "400px");
            scanButtonElem.style.marginLeft = "270px";
        }
        else if (this.function == "scanLocation") {
            scanDocElem.setAttribute("width", "150px");
            scanButtonElem.style.marginLeft = "145px";
        }
    }
    chooseImage() {
        let scanButtonElem = document.getElementById("scanButton");
        let scanDocElem = document.getElementById("scanDoc");
        if (this.function == "discharge") {
            this.imageSource = this.dischargeImageSource;
            scanDocElem.setAttribute("width", "400px");
            scanButtonElem.style.marginLeft = "270px";
        }
        else if (this.function == "pigeonHole") {
            this.imageSource = this.TTABagImageSource;
            scanDocElem.setAttribute("width", "400px");
            scanButtonElem.style.marginLeft = "270px";
        }
        else if (this.function == "scanLocation") {
            this.imageSource = this.pigeonholeBarcodeImageSource;
            scanDocElem.setAttribute("width", "150px");
            scanButtonElem.style.marginLeft = "145px";
        }
    }
    toggleState() {
        if (this.counter < 2) {
            this.state = this.state === 'in' ? 'out' : 'in';
            this.counter++;
            document.getElementById("scanButton").innerText = "Capture";
        }
        if (this.counter == 2) {
            this.submit();
        }
    }
    onSubmit() {
        if (this.function == "discharge") {
            this.epcisIRISservice.linkDischarge().subscribe((data) => {
                //this.reset()
                console.log("Link Discharge", data, "success");
            }, error => {
                console.warn("There was an error in link discharge process", error);
            });
        }
        else if (this.function == "pigeonHole") {
            this.epcisIRISservice.linkPigeonHole().subscribe((data) => {
                //this.reset()
                console.log("Link Pigeonhole", data, "success");
            }, error => {
                console.warn("There was an error in link pigeonhole process", error);
            });
        }
        else if (this.function == "scanLocation") {
            var JSONString = JSON.stringify({ "testVal": "1" });
            this.epcisIRISservice.scanLocation(JSONString).subscribe((data) => {
                //this.reset()
                let locFriendlyName = this.extractLocationFriendlyName(data);
                console.log("Scan location", locFriendlyName, "success");
                this.scanForm.setValue({ 'locFrName': locFriendlyName });
            }, error => {
                let locFriendlyName = this.extractLocationFriendlyName(error.error.text);
                console.warn("There is something weird in scan location process", locFriendlyName);
                this.scanForm.setValue({ 'locFrName': locFriendlyName });
            });
            this.isScanLocation = true;
        }
    }
    submit() {
        this.onSubmit();
    }
    extractLocationFriendlyName(response) {
        let startLocPos = response.indexOf("\"friendlyDescriptionPurpose\":\"");
        let startTagsPos = response.indexOf("\",\"tags\"");
        let lenOfIdentifier = ("\"friendlyDescriptionPurpose\":\"").length;
        return response.substr(startLocPos + lenOfIdentifier, startTagsPos - startLocPos - lenOfIdentifier);
    }
}
ScanComponent.ɵfac = function ScanComponent_Factory(t) { return new (t || ScanComponent)(_angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdirectiveInject"](_services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_3__["EPCISIRISService"])); };
ScanComponent.ɵcmp = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineComponent"]({ type: ScanComponent, selectors: [["scan"]], inputs: { function: "function" }, features: [_angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵProvidersFeature"]([
            _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_3__["EPCISIRISService"]
        ])], decls: 6, vars: 4, consts: [["id", "scanButton", "mat-raised-button", "", "color", "primary", 1, "scan-button", 3, "disabled", "click"], ["id", "scanDoc", 1, "scan-doc", 3, "src"], [4, "ngIf"], [3, "formGroup"], ["appearance", "outline", 1, "full-width"], ["matInput", "", "formControlName", "locFrName", "placeholder", "wait", "readonly", ""]], template: function ScanComponent_Template(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](1, "button", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function ScanComponent_Template_button_click_1_listener() { return ctx.onClick(); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](2, "Scan");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](3, "div");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](4, "img", 1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](5, ScanComponent_div_5_Template, 6, 1, "div", 2);
    } if (rf & 2) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("disabled", ctx.counter == 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("@fade", ctx.state)("src", ctx.imageSource, _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵsanitizeUrl"]);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngIf", ctx.isScanLocation);
    } }, directives: [_angular_material_button__WEBPACK_IMPORTED_MODULE_4__["MatButton"], _angular_common__WEBPACK_IMPORTED_MODULE_5__["NgIf"], _angular_forms__WEBPACK_IMPORTED_MODULE_2__["ɵangular_packages_forms_forms_y"], _angular_forms__WEBPACK_IMPORTED_MODULE_2__["NgControlStatusGroup"], _angular_forms__WEBPACK_IMPORTED_MODULE_2__["FormGroupDirective"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_6__["MatFormField"], _angular_material_form_field__WEBPACK_IMPORTED_MODULE_6__["MatLabel"], _angular_material_input__WEBPACK_IMPORTED_MODULE_7__["MatInput"], _angular_forms__WEBPACK_IMPORTED_MODULE_2__["DefaultValueAccessor"], _angular_forms__WEBPACK_IMPORTED_MODULE_2__["NgControlStatus"], _angular_forms__WEBPACK_IMPORTED_MODULE_2__["FormControlName"]], styles: [".scan-doc[_ngcontent-%COMP%] {\n  margin-top: 20px;\n  border: 10px solid #999;\n  border-radius: 4px;\n  margin-left: 90px;\n  }\n.scan-button[_ngcontent-%COMP%] {\n  margin-top: 20px;\n  margin-left: 270px;\n}\n.full-width[_ngcontent-%COMP%] {\n  width: 95%;\n  color: grey;\n  margin-left: 2%;\n}\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvc2hhcmVkL3NjYW4uY29tcG9uZW50L3NjYW4uY29tcG9uZW50LmNzcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTtFQUNFLGdCQUFnQjtFQUNoQix1QkFBdUI7RUFDdkIsa0JBQWtCO0VBQ2xCLGlCQUFpQjtFQUNqQjtBQUNGO0VBQ0UsZ0JBQWdCO0VBQ2hCLGtCQUFrQjtBQUNwQjtBQUVBO0VBQ0UsVUFBVTtFQUNWLFdBQVc7RUFDWCxlQUFlO0FBQ2pCIiwiZmlsZSI6InNyYy9hcHAvc2hhcmVkL3NjYW4uY29tcG9uZW50L3NjYW4uY29tcG9uZW50LmNzcyIsInNvdXJjZXNDb250ZW50IjpbIi5zY2FuLWRvYyB7XG4gIG1hcmdpbi10b3A6IDIwcHg7XG4gIGJvcmRlcjogMTBweCBzb2xpZCAjOTk5O1xuICBib3JkZXItcmFkaXVzOiA0cHg7XG4gIG1hcmdpbi1sZWZ0OiA5MHB4O1xuICB9XG4uc2Nhbi1idXR0b24ge1xuICBtYXJnaW4tdG9wOiAyMHB4O1xuICBtYXJnaW4tbGVmdDogMjcwcHg7XG59XG5cbi5mdWxsLXdpZHRoIHtcbiAgd2lkdGg6IDk1JTtcbiAgY29sb3I6IGdyZXk7XG4gIG1hcmdpbi1sZWZ0OiAyJTtcbn0iXX0= */"], data: { animation: _animation__WEBPACK_IMPORTED_MODULE_1__["fade"] } });
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](ScanComponent, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"],
        args: [{
                providers: [
                    _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_3__["EPCISIRISService"]
                ],
                selector: 'scan',
                templateUrl: './scan.component.html',
                styleUrls: ['./scan.component.css'],
                animations: _animation__WEBPACK_IMPORTED_MODULE_1__["fade"]
            }]
    }], function () { return [{ type: _services_epcis_iris_service__WEBPACK_IMPORTED_MODULE_3__["EPCISIRISService"] }]; }, { function: [{
            type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Input"]
        }] }); })();


/***/ }),

/***/ "qAUw":
/*!*******************************************!*\
  !*** ./src/app/shared/material-module.ts ***!
  \*******************************************/
/*! exports provided: MaterialModule */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "MaterialModule", function() { return MaterialModule; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");
/* harmony import */ var _angular_material_autocomplete__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/material/autocomplete */ "/1cH");
/* harmony import */ var _angular_material_badge__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/material/badge */ "TU8p");
/* harmony import */ var _angular_material_bottom_sheet__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/material/bottom-sheet */ "2ChS");
/* harmony import */ var _angular_material_button__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! @angular/material/button */ "bTqV");
/* harmony import */ var _angular_material_button_toggle__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! @angular/material/button-toggle */ "jaxi");
/* harmony import */ var _angular_material_card__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! @angular/material/card */ "Wp6s");
/* harmony import */ var _angular_material_checkbox__WEBPACK_IMPORTED_MODULE_7__ = __webpack_require__(/*! @angular/material/checkbox */ "bSwM");
/* harmony import */ var _angular_material_chips__WEBPACK_IMPORTED_MODULE_8__ = __webpack_require__(/*! @angular/material/chips */ "A5z7");
/* harmony import */ var _angular_material_stepper__WEBPACK_IMPORTED_MODULE_9__ = __webpack_require__(/*! @angular/material/stepper */ "xHqg");
/* harmony import */ var _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_10__ = __webpack_require__(/*! @angular/material/datepicker */ "iadO");
/* harmony import */ var _angular_material_dialog__WEBPACK_IMPORTED_MODULE_11__ = __webpack_require__(/*! @angular/material/dialog */ "0IaG");
/* harmony import */ var _angular_material_divider__WEBPACK_IMPORTED_MODULE_12__ = __webpack_require__(/*! @angular/material/divider */ "f0Cb");
/* harmony import */ var _angular_material_expansion__WEBPACK_IMPORTED_MODULE_13__ = __webpack_require__(/*! @angular/material/expansion */ "7EHt");
/* harmony import */ var _angular_material_grid_list__WEBPACK_IMPORTED_MODULE_14__ = __webpack_require__(/*! @angular/material/grid-list */ "zkoq");
/* harmony import */ var _angular_material_icon__WEBPACK_IMPORTED_MODULE_15__ = __webpack_require__(/*! @angular/material/icon */ "NFeN");
/* harmony import */ var _angular_material_input__WEBPACK_IMPORTED_MODULE_16__ = __webpack_require__(/*! @angular/material/input */ "qFsG");
/* harmony import */ var _angular_material_list__WEBPACK_IMPORTED_MODULE_17__ = __webpack_require__(/*! @angular/material/list */ "MutI");
/* harmony import */ var _angular_material_menu__WEBPACK_IMPORTED_MODULE_18__ = __webpack_require__(/*! @angular/material/menu */ "STbY");
/* harmony import */ var _angular_material_core__WEBPACK_IMPORTED_MODULE_19__ = __webpack_require__(/*! @angular/material/core */ "FKr1");
/* harmony import */ var _angular_material_paginator__WEBPACK_IMPORTED_MODULE_20__ = __webpack_require__(/*! @angular/material/paginator */ "M9IT");
/* harmony import */ var _angular_material_progress_bar__WEBPACK_IMPORTED_MODULE_21__ = __webpack_require__(/*! @angular/material/progress-bar */ "bv9b");
/* harmony import */ var _angular_material_progress_spinner__WEBPACK_IMPORTED_MODULE_22__ = __webpack_require__(/*! @angular/material/progress-spinner */ "Xa2L");
/* harmony import */ var _angular_material_radio__WEBPACK_IMPORTED_MODULE_23__ = __webpack_require__(/*! @angular/material/radio */ "QibW");
/* harmony import */ var _angular_material_select__WEBPACK_IMPORTED_MODULE_24__ = __webpack_require__(/*! @angular/material/select */ "d3UM");
/* harmony import */ var _angular_material_sidenav__WEBPACK_IMPORTED_MODULE_25__ = __webpack_require__(/*! @angular/material/sidenav */ "XhcP");
/* harmony import */ var _angular_material_slider__WEBPACK_IMPORTED_MODULE_26__ = __webpack_require__(/*! @angular/material/slider */ "5RNC");
/* harmony import */ var _angular_material_slide_toggle__WEBPACK_IMPORTED_MODULE_27__ = __webpack_require__(/*! @angular/material/slide-toggle */ "1jcm");
/* harmony import */ var _angular_material_snack_bar__WEBPACK_IMPORTED_MODULE_28__ = __webpack_require__(/*! @angular/material/snack-bar */ "dNgK");
/* harmony import */ var _angular_material_sort__WEBPACK_IMPORTED_MODULE_29__ = __webpack_require__(/*! @angular/material/sort */ "Dh3D");
/* harmony import */ var _angular_material_table__WEBPACK_IMPORTED_MODULE_30__ = __webpack_require__(/*! @angular/material/table */ "+0xr");
/* harmony import */ var _angular_material_tabs__WEBPACK_IMPORTED_MODULE_31__ = __webpack_require__(/*! @angular/material/tabs */ "wZkO");
/* harmony import */ var _angular_material_toolbar__WEBPACK_IMPORTED_MODULE_32__ = __webpack_require__(/*! @angular/material/toolbar */ "/t3+");
/* harmony import */ var _angular_material_tooltip__WEBPACK_IMPORTED_MODULE_33__ = __webpack_require__(/*! @angular/material/tooltip */ "Qu3c");
/* harmony import */ var _angular_material_tree__WEBPACK_IMPORTED_MODULE_34__ = __webpack_require__(/*! @angular/material/tree */ "8yBR");




































class MaterialModule {
}
MaterialModule.ɵmod = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineNgModule"]({ type: MaterialModule });
MaterialModule.ɵinj = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineInjector"]({ factory: function MaterialModule_Factory(t) { return new (t || MaterialModule)(); }, imports: [_angular_material_autocomplete__WEBPACK_IMPORTED_MODULE_1__["MatAutocompleteModule"],
        _angular_material_badge__WEBPACK_IMPORTED_MODULE_2__["MatBadgeModule"],
        _angular_material_bottom_sheet__WEBPACK_IMPORTED_MODULE_3__["MatBottomSheetModule"],
        _angular_material_button__WEBPACK_IMPORTED_MODULE_4__["MatButtonModule"],
        _angular_material_button_toggle__WEBPACK_IMPORTED_MODULE_5__["MatButtonToggleModule"],
        _angular_material_card__WEBPACK_IMPORTED_MODULE_6__["MatCardModule"],
        _angular_material_checkbox__WEBPACK_IMPORTED_MODULE_7__["MatCheckboxModule"],
        _angular_material_chips__WEBPACK_IMPORTED_MODULE_8__["MatChipsModule"],
        _angular_material_stepper__WEBPACK_IMPORTED_MODULE_9__["MatStepperModule"],
        _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_10__["MatDatepickerModule"],
        _angular_material_dialog__WEBPACK_IMPORTED_MODULE_11__["MatDialogModule"],
        _angular_material_divider__WEBPACK_IMPORTED_MODULE_12__["MatDividerModule"],
        _angular_material_expansion__WEBPACK_IMPORTED_MODULE_13__["MatExpansionModule"],
        _angular_material_grid_list__WEBPACK_IMPORTED_MODULE_14__["MatGridListModule"],
        _angular_material_icon__WEBPACK_IMPORTED_MODULE_15__["MatIconModule"],
        _angular_material_input__WEBPACK_IMPORTED_MODULE_16__["MatInputModule"],
        _angular_material_list__WEBPACK_IMPORTED_MODULE_17__["MatListModule"],
        _angular_material_menu__WEBPACK_IMPORTED_MODULE_18__["MatMenuModule"],
        _angular_material_core__WEBPACK_IMPORTED_MODULE_19__["MatNativeDateModule"],
        _angular_material_paginator__WEBPACK_IMPORTED_MODULE_20__["MatPaginatorModule"],
        _angular_material_progress_bar__WEBPACK_IMPORTED_MODULE_21__["MatProgressBarModule"],
        _angular_material_progress_spinner__WEBPACK_IMPORTED_MODULE_22__["MatProgressSpinnerModule"],
        _angular_material_radio__WEBPACK_IMPORTED_MODULE_23__["MatRadioModule"],
        _angular_material_core__WEBPACK_IMPORTED_MODULE_19__["MatRippleModule"],
        _angular_material_select__WEBPACK_IMPORTED_MODULE_24__["MatSelectModule"],
        _angular_material_sidenav__WEBPACK_IMPORTED_MODULE_25__["MatSidenavModule"],
        _angular_material_slider__WEBPACK_IMPORTED_MODULE_26__["MatSliderModule"],
        _angular_material_slide_toggle__WEBPACK_IMPORTED_MODULE_27__["MatSlideToggleModule"],
        _angular_material_snack_bar__WEBPACK_IMPORTED_MODULE_28__["MatSnackBarModule"],
        _angular_material_sort__WEBPACK_IMPORTED_MODULE_29__["MatSortModule"],
        _angular_material_table__WEBPACK_IMPORTED_MODULE_30__["MatTableModule"],
        _angular_material_tabs__WEBPACK_IMPORTED_MODULE_31__["MatTabsModule"],
        _angular_material_toolbar__WEBPACK_IMPORTED_MODULE_32__["MatToolbarModule"],
        _angular_material_tooltip__WEBPACK_IMPORTED_MODULE_33__["MatTooltipModule"],
        _angular_material_tree__WEBPACK_IMPORTED_MODULE_34__["MatTreeModule"]] });
(function () { (typeof ngJitMode === "undefined" || ngJitMode) && _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵsetNgModuleScope"](MaterialModule, { exports: [_angular_material_autocomplete__WEBPACK_IMPORTED_MODULE_1__["MatAutocompleteModule"],
        _angular_material_badge__WEBPACK_IMPORTED_MODULE_2__["MatBadgeModule"],
        _angular_material_bottom_sheet__WEBPACK_IMPORTED_MODULE_3__["MatBottomSheetModule"],
        _angular_material_button__WEBPACK_IMPORTED_MODULE_4__["MatButtonModule"],
        _angular_material_button_toggle__WEBPACK_IMPORTED_MODULE_5__["MatButtonToggleModule"],
        _angular_material_card__WEBPACK_IMPORTED_MODULE_6__["MatCardModule"],
        _angular_material_checkbox__WEBPACK_IMPORTED_MODULE_7__["MatCheckboxModule"],
        _angular_material_chips__WEBPACK_IMPORTED_MODULE_8__["MatChipsModule"],
        _angular_material_stepper__WEBPACK_IMPORTED_MODULE_9__["MatStepperModule"],
        _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_10__["MatDatepickerModule"],
        _angular_material_dialog__WEBPACK_IMPORTED_MODULE_11__["MatDialogModule"],
        _angular_material_divider__WEBPACK_IMPORTED_MODULE_12__["MatDividerModule"],
        _angular_material_expansion__WEBPACK_IMPORTED_MODULE_13__["MatExpansionModule"],
        _angular_material_grid_list__WEBPACK_IMPORTED_MODULE_14__["MatGridListModule"],
        _angular_material_icon__WEBPACK_IMPORTED_MODULE_15__["MatIconModule"],
        _angular_material_input__WEBPACK_IMPORTED_MODULE_16__["MatInputModule"],
        _angular_material_list__WEBPACK_IMPORTED_MODULE_17__["MatListModule"],
        _angular_material_menu__WEBPACK_IMPORTED_MODULE_18__["MatMenuModule"],
        _angular_material_core__WEBPACK_IMPORTED_MODULE_19__["MatNativeDateModule"],
        _angular_material_paginator__WEBPACK_IMPORTED_MODULE_20__["MatPaginatorModule"],
        _angular_material_progress_bar__WEBPACK_IMPORTED_MODULE_21__["MatProgressBarModule"],
        _angular_material_progress_spinner__WEBPACK_IMPORTED_MODULE_22__["MatProgressSpinnerModule"],
        _angular_material_radio__WEBPACK_IMPORTED_MODULE_23__["MatRadioModule"],
        _angular_material_core__WEBPACK_IMPORTED_MODULE_19__["MatRippleModule"],
        _angular_material_select__WEBPACK_IMPORTED_MODULE_24__["MatSelectModule"],
        _angular_material_sidenav__WEBPACK_IMPORTED_MODULE_25__["MatSidenavModule"],
        _angular_material_slider__WEBPACK_IMPORTED_MODULE_26__["MatSliderModule"],
        _angular_material_slide_toggle__WEBPACK_IMPORTED_MODULE_27__["MatSlideToggleModule"],
        _angular_material_snack_bar__WEBPACK_IMPORTED_MODULE_28__["MatSnackBarModule"],
        _angular_material_sort__WEBPACK_IMPORTED_MODULE_29__["MatSortModule"],
        _angular_material_table__WEBPACK_IMPORTED_MODULE_30__["MatTableModule"],
        _angular_material_tabs__WEBPACK_IMPORTED_MODULE_31__["MatTabsModule"],
        _angular_material_toolbar__WEBPACK_IMPORTED_MODULE_32__["MatToolbarModule"],
        _angular_material_tooltip__WEBPACK_IMPORTED_MODULE_33__["MatTooltipModule"],
        _angular_material_tree__WEBPACK_IMPORTED_MODULE_34__["MatTreeModule"]] }); })();
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](MaterialModule, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["NgModule"],
        args: [{
                exports: [
                    _angular_material_autocomplete__WEBPACK_IMPORTED_MODULE_1__["MatAutocompleteModule"],
                    _angular_material_badge__WEBPACK_IMPORTED_MODULE_2__["MatBadgeModule"],
                    _angular_material_bottom_sheet__WEBPACK_IMPORTED_MODULE_3__["MatBottomSheetModule"],
                    _angular_material_button__WEBPACK_IMPORTED_MODULE_4__["MatButtonModule"],
                    _angular_material_button_toggle__WEBPACK_IMPORTED_MODULE_5__["MatButtonToggleModule"],
                    _angular_material_card__WEBPACK_IMPORTED_MODULE_6__["MatCardModule"],
                    _angular_material_checkbox__WEBPACK_IMPORTED_MODULE_7__["MatCheckboxModule"],
                    _angular_material_chips__WEBPACK_IMPORTED_MODULE_8__["MatChipsModule"],
                    _angular_material_stepper__WEBPACK_IMPORTED_MODULE_9__["MatStepperModule"],
                    _angular_material_datepicker__WEBPACK_IMPORTED_MODULE_10__["MatDatepickerModule"],
                    _angular_material_dialog__WEBPACK_IMPORTED_MODULE_11__["MatDialogModule"],
                    _angular_material_divider__WEBPACK_IMPORTED_MODULE_12__["MatDividerModule"],
                    _angular_material_expansion__WEBPACK_IMPORTED_MODULE_13__["MatExpansionModule"],
                    _angular_material_grid_list__WEBPACK_IMPORTED_MODULE_14__["MatGridListModule"],
                    _angular_material_icon__WEBPACK_IMPORTED_MODULE_15__["MatIconModule"],
                    _angular_material_input__WEBPACK_IMPORTED_MODULE_16__["MatInputModule"],
                    _angular_material_list__WEBPACK_IMPORTED_MODULE_17__["MatListModule"],
                    _angular_material_menu__WEBPACK_IMPORTED_MODULE_18__["MatMenuModule"],
                    _angular_material_core__WEBPACK_IMPORTED_MODULE_19__["MatNativeDateModule"],
                    _angular_material_paginator__WEBPACK_IMPORTED_MODULE_20__["MatPaginatorModule"],
                    _angular_material_progress_bar__WEBPACK_IMPORTED_MODULE_21__["MatProgressBarModule"],
                    _angular_material_progress_spinner__WEBPACK_IMPORTED_MODULE_22__["MatProgressSpinnerModule"],
                    _angular_material_radio__WEBPACK_IMPORTED_MODULE_23__["MatRadioModule"],
                    _angular_material_core__WEBPACK_IMPORTED_MODULE_19__["MatRippleModule"],
                    _angular_material_select__WEBPACK_IMPORTED_MODULE_24__["MatSelectModule"],
                    _angular_material_sidenav__WEBPACK_IMPORTED_MODULE_25__["MatSidenavModule"],
                    _angular_material_slider__WEBPACK_IMPORTED_MODULE_26__["MatSliderModule"],
                    _angular_material_slide_toggle__WEBPACK_IMPORTED_MODULE_27__["MatSlideToggleModule"],
                    _angular_material_snack_bar__WEBPACK_IMPORTED_MODULE_28__["MatSnackBarModule"],
                    _angular_material_sort__WEBPACK_IMPORTED_MODULE_29__["MatSortModule"],
                    _angular_material_table__WEBPACK_IMPORTED_MODULE_30__["MatTableModule"],
                    _angular_material_tabs__WEBPACK_IMPORTED_MODULE_31__["MatTabsModule"],
                    _angular_material_toolbar__WEBPACK_IMPORTED_MODULE_32__["MatToolbarModule"],
                    _angular_material_tooltip__WEBPACK_IMPORTED_MODULE_33__["MatTooltipModule"],
                    _angular_material_tree__WEBPACK_IMPORTED_MODULE_34__["MatTreeModule"],
                ]
            }]
    }], null, null); })();


/***/ }),

/***/ "t9WN":
/*!******************************************************!*\
  !*** ./src/app/pharmacy-ui/pharmacy-ui.component.ts ***!
  \******************************************************/
/*! exports provided: PharmacyUiComponent */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "PharmacyUiComponent", function() { return PharmacyUiComponent; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");
/* harmony import */ var _angular_material_button__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @angular/material/button */ "bTqV");
/* harmony import */ var _angular_material_menu__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! @angular/material/menu */ "STbY");
/* harmony import */ var _angular_common__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/common */ "ofXK");
/* harmony import */ var _shared_scan_component_scan_component__WEBPACK_IMPORTED_MODULE_4__ = __webpack_require__(/*! ../shared/scan.component/scan.component */ "pHsH");
/* harmony import */ var _shared_comingsoon_component_comingsoon_component__WEBPACK_IMPORTED_MODULE_5__ = __webpack_require__(/*! ../shared/comingsoon.component/comingsoon.component */ "Ac80");
/* harmony import */ var _gen_label_gen_label_component__WEBPACK_IMPORTED_MODULE_6__ = __webpack_require__(/*! ./gen-label/gen-label.component */ "NdOf");








function PharmacyUiComponent_div_32_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](1, "scan", 11);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} }
function PharmacyUiComponent_div_33_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](1, "scan", 12);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} }
function PharmacyUiComponent_div_34_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](1, "comingsoon", 13);
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} }
function PharmacyUiComponent_div_35_Template(rf, ctx) { if (rf & 1) {
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelement"](1, "pharmacy-gen-label");
    _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
} }
class PharmacyUiComponent {
    constructor() {
        this.isScanDischarge = false;
        this.isScanPigeonHole = false;
        this.isComingSoon = false;
        this.isGenLabel = false;
    }
    ngOnInit() {
    }
    loadContent(selection) {
        if (selection == 'scanDischarge') {
            this.isComingSoon = false;
            this.isScanPigeonHole = false;
            this.isScanDischarge = true;
            this.isGenLabel = false;
        }
        else if (selection == 'scanPigeonHole') {
            this.isScanPigeonHole = true;
            this.isScanDischarge = false;
            this.isComingSoon = false;
            this.isGenLabel = false;
        }
        else if (selection == 'comingsoon') {
            this.isScanPigeonHole = false;
            this.isScanDischarge = false;
            this.isComingSoon = true;
            this.isGenLabel = false;
        }
        else if (selection == 'genlabel') {
            this.isScanPigeonHole = false;
            this.isScanDischarge = false;
            this.isComingSoon = false;
            this.isGenLabel = true;
        }
    }
}
PharmacyUiComponent.ɵfac = function PharmacyUiComponent_Factory(t) { return new (t || PharmacyUiComponent)(); };
PharmacyUiComponent.ɵcmp = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineComponent"]({ type: PharmacyUiComponent, selectors: [["app-pharmacy-ui"]], decls: 36, vars: 9, consts: [[1, "tablet"], [1, "content"], ["mat-button", "", 3, "matMenuTriggerFor"], ["xPosition", "after"], ["stockMenu", "matMenu"], ["mat-menu-item", "", 3, "click"], ["xPosition", "after", 3, "overlapTrigger"], ["linkMenu", "matMenu"], ["lookupMenu", "matMenu"], ["aboutMenu", "matMenu"], [4, "ngIf"], ["function", "discharge"], ["function", "pigeonHole"], ["component", "tablet"]], template: function PharmacyUiComponent_Template(rf, ctx) { if (rf & 1) {
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](0, "div", 0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](1, "div", 1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](2, "button", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](3, "Stock");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](4, "mat-menu", 3, 4);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](6, "button", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PharmacyUiComponent_Template_button_click_6_listener() { return ctx.loadContent("comingsoon"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](7, "Inventory");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](8, "button", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PharmacyUiComponent_Template_button_click_8_listener() { return ctx.loadContent("comingsoon"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](9, "On Order");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](10, "button", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](11, "Link");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](12, "mat-menu", 6, 7);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](14, "button", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PharmacyUiComponent_Template_button_click_14_listener() { return ctx.loadContent("scanDischarge"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](15, "Discharge Document");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](16, "button", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PharmacyUiComponent_Template_button_click_16_listener() { return ctx.loadContent("scanPigeonHole"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](17, "Pigeon-hole");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](18, "button", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](19, "Dispense");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](20, "mat-menu", 3, 8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](22, "button", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PharmacyUiComponent_Template_button_click_22_listener() { return ctx.loadContent("genlabel"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](23, "Generate Label");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](24, "button", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PharmacyUiComponent_Template_button_click_24_listener() { return ctx.loadContent("comingsoon"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](25, "Print");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](26, "button", 2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](27, "About");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](28, "mat-menu", 3, 9);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementStart"](30, "button", 5);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵlistener"]("click", function PharmacyUiComponent_Template_button_click_30_listener() { return ctx.loadContent("comingsoon"); });
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtext"](31, "EPCIS Demo");
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](32, PharmacyUiComponent_div_32_Template, 2, 0, "div", 10);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](33, PharmacyUiComponent_div_33_Template, 2, 0, "div", 10);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](34, PharmacyUiComponent_div_34_Template, 2, 0, "div", 10);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵtemplate"](35, PharmacyUiComponent_div_35_Template, 2, 0, "div", 10);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵelementEnd"]();
    } if (rf & 2) {
        const _r0 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵreference"](5);
        const _r1 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵreference"](13);
        const _r2 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵreference"](21);
        const _r3 = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵreference"](29);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("matMenuTriggerFor", _r0);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("matMenuTriggerFor", _r1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("overlapTrigger", false);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("matMenuTriggerFor", _r2);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](8);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("matMenuTriggerFor", _r3);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](6);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngIf", ctx.isScanDischarge);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngIf", ctx.isScanPigeonHole);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngIf", ctx.isComingSoon);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵadvance"](1);
        _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵproperty"]("ngIf", ctx.isGenLabel);
    } }, directives: [_angular_material_button__WEBPACK_IMPORTED_MODULE_1__["MatButton"], _angular_material_menu__WEBPACK_IMPORTED_MODULE_2__["MatMenuTrigger"], _angular_material_menu__WEBPACK_IMPORTED_MODULE_2__["_MatMenu"], _angular_material_menu__WEBPACK_IMPORTED_MODULE_2__["MatMenuItem"], _angular_common__WEBPACK_IMPORTED_MODULE_3__["NgIf"], _shared_scan_component_scan_component__WEBPACK_IMPORTED_MODULE_4__["ScanComponent"], _shared_comingsoon_component_comingsoon_component__WEBPACK_IMPORTED_MODULE_5__["ComingSoonComponent"], _gen_label_gen_label_component__WEBPACK_IMPORTED_MODULE_6__["GenLabelComponent"]], styles: ["body[_ngcontent-%COMP%] {\n    background: #fff;\n  }\n  \n  \n  \n  .tablet[_ngcontent-%COMP%] {\n    position: relative;\n    width: 600px;\n    height: 800px;\n    margin: auto;\n    border: 16px silver solid;\n    border-top-width: 60px;\n    border-bottom-width: 60px;\n    border-radius: 36px;\n  }\n  \n  \n  \n  .tablet[_ngcontent-%COMP%]:before {\n    content: '';\n    display: block;\n    width: 60px;\n    height: 5px;\n    position: absolute;\n    top: -30px;\n    left: 50%;\n    transform: translate(-50%, -50%);\n    background: #fff;\n    border-radius: 10px;\n  }\n  \n  \n  \n  .tablet[_ngcontent-%COMP%]:after {\n    content: '';\n    display: block;\n    width: 35px;\n    height: 35px;\n    position: absolute;\n    left: 50%;\n    bottom: -65px;\n    transform: translate(-50%, -50%);\n    background: #fff;\n    border-radius: 50%;\n  }\n  \n  \n  \n  .tablet[_ngcontent-%COMP%]   .content[_ngcontent-%COMP%] {\n    width: 601px;\n    height: 36px;\n    background: #3F51B5;\n    color:#fff;\n    margin: -1px;\n  }\n/*# sourceMappingURL=data:application/json;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbInNyYy9hcHAvcGhhcm1hY3ktdWkvcGhhcm1hY3ktdWkuY29tcG9uZW50LmNzcyJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiQUFBQTtJQUNJLGdCQUFnQjtFQUNsQjs7RUFFQSw0QkFBNEI7O0VBQzVCO0lBQ0Usa0JBQWtCO0lBQ2xCLFlBQVk7SUFDWixhQUFhO0lBQ2IsWUFBWTtJQUNaLHlCQUF5QjtJQUN6QixzQkFBc0I7SUFDdEIseUJBQXlCO0lBQ3pCLG1CQUFtQjtFQUNyQjs7RUFFQSxpREFBaUQ7O0VBQ2pEO0lBQ0UsV0FBVztJQUNYLGNBQWM7SUFDZCxXQUFXO0lBQ1gsV0FBVztJQUNYLGtCQUFrQjtJQUNsQixVQUFVO0lBQ1YsU0FBUztJQUNULGdDQUFnQztJQUNoQyxnQkFBZ0I7SUFDaEIsbUJBQW1CO0VBQ3JCOztFQUVBLDJDQUEyQzs7RUFDM0M7SUFDRSxXQUFXO0lBQ1gsY0FBYztJQUNkLFdBQVc7SUFDWCxZQUFZO0lBQ1osa0JBQWtCO0lBQ2xCLFNBQVM7SUFDVCxhQUFhO0lBQ2IsZ0NBQWdDO0lBQ2hDLGdCQUFnQjtJQUNoQixrQkFBa0I7RUFDcEI7O0VBRUEsMENBQTBDOztFQUMxQztJQUNFLFlBQVk7SUFDWixZQUFZO0lBQ1osbUJBQW1CO0lBQ25CLFVBQVU7SUFDVixZQUFZO0VBQ2QiLCJmaWxlIjoic3JjL2FwcC9waGFybWFjeS11aS9waGFybWFjeS11aS5jb21wb25lbnQuY3NzIiwic291cmNlc0NvbnRlbnQiOlsiYm9keSB7XG4gICAgYmFja2dyb3VuZDogI2ZmZjtcbiAgfVxuICBcbiAgLyogVGhlIGRldmljZSB3aXRoIGJvcmRlcnMgKi9cbiAgLnRhYmxldCB7XG4gICAgcG9zaXRpb246IHJlbGF0aXZlO1xuICAgIHdpZHRoOiA2MDBweDtcbiAgICBoZWlnaHQ6IDgwMHB4O1xuICAgIG1hcmdpbjogYXV0bztcbiAgICBib3JkZXI6IDE2cHggc2lsdmVyIHNvbGlkO1xuICAgIGJvcmRlci10b3Atd2lkdGg6IDYwcHg7XG4gICAgYm9yZGVyLWJvdHRvbS13aWR0aDogNjBweDtcbiAgICBib3JkZXItcmFkaXVzOiAzNnB4O1xuICB9XG4gIFxuICAvKiBUaGUgaG9yaXpvbnRhbCBsaW5lIG9uIHRoZSB0b3Agb2YgdGhlIGRldmljZSAqL1xuICAudGFibGV0OmJlZm9yZSB7XG4gICAgY29udGVudDogJyc7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgd2lkdGg6IDYwcHg7XG4gICAgaGVpZ2h0OiA1cHg7XG4gICAgcG9zaXRpb246IGFic29sdXRlO1xuICAgIHRvcDogLTMwcHg7XG4gICAgbGVmdDogNTAlO1xuICAgIHRyYW5zZm9ybTogdHJhbnNsYXRlKC01MCUsIC01MCUpO1xuICAgIGJhY2tncm91bmQ6ICNmZmY7XG4gICAgYm9yZGVyLXJhZGl1czogMTBweDtcbiAgfVxuICBcbiAgLyogVGhlIGNpcmNsZSBvbiB0aGUgYm90dG9tIG9mIHRoZSBkZXZpY2UgKi9cbiAgLnRhYmxldDphZnRlciB7XG4gICAgY29udGVudDogJyc7XG4gICAgZGlzcGxheTogYmxvY2s7XG4gICAgd2lkdGg6IDM1cHg7XG4gICAgaGVpZ2h0OiAzNXB4O1xuICAgIHBvc2l0aW9uOiBhYnNvbHV0ZTtcbiAgICBsZWZ0OiA1MCU7XG4gICAgYm90dG9tOiAtNjVweDtcbiAgICB0cmFuc2Zvcm06IHRyYW5zbGF0ZSgtNTAlLCAtNTAlKTtcbiAgICBiYWNrZ3JvdW5kOiAjZmZmO1xuICAgIGJvcmRlci1yYWRpdXM6IDUwJTtcbiAgfVxuICBcbiAgLyogVGhlIHNjcmVlbiAob3IgY29udGVudCkgb2YgdGhlIGRldmljZSAqL1xuICAudGFibGV0IC5jb250ZW50IHtcbiAgICB3aWR0aDogNjAxcHg7XG4gICAgaGVpZ2h0OiAzNnB4O1xuICAgIGJhY2tncm91bmQ6ICMzRjUxQjU7XG4gICAgY29sb3I6I2ZmZjtcbiAgICBtYXJnaW46IC0xcHg7XG4gIH0iXX0= */"] });
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](PharmacyUiComponent, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Component"],
        args: [{
                selector: 'app-pharmacy-ui',
                templateUrl: './pharmacy-ui.component.html',
                styleUrls: ['./pharmacy-ui.component.css']
            }]
    }], function () { return []; }, null); })();


/***/ }),

/***/ "tZre":
/*!*********************************************!*\
  !*** ./src/app/services/message.service.ts ***!
  \*********************************************/
/*! exports provided: MessageService */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "MessageService", function() { return MessageService; });
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");


class MessageService {
    constructor() {
        this.messages = [];
    }
    add(message) {
        this.messages.push(new Date().toISOString() + ': ' + message);
    }
    clear() {
        this.messages = [];
    }
}
MessageService.ɵfac = function MessageService_Factory(t) { return new (t || MessageService)(); };
MessageService.ɵprov = _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵɵdefineInjectable"]({ token: MessageService, factory: MessageService.ɵfac, providedIn: 'root' });
/*@__PURE__*/ (function () { _angular_core__WEBPACK_IMPORTED_MODULE_0__["ɵsetClassMetadata"](MessageService, [{
        type: _angular_core__WEBPACK_IMPORTED_MODULE_0__["Injectable"],
        args: [{
                providedIn: 'root',
            }]
    }], null, null); })();


/***/ }),

/***/ "w2QH":
/*!*************************************!*\
  !*** ./src/app/shared/animation.ts ***!
  \*************************************/
/*! exports provided: fade */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "fade", function() { return fade; });
/* harmony import */ var _angular_animations__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/animations */ "R0Ic");

const fade = [
    Object(_angular_animations__WEBPACK_IMPORTED_MODULE_0__["trigger"])('fade', [
        Object(_angular_animations__WEBPACK_IMPORTED_MODULE_0__["state"])('in', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_0__["style"])({ 'opacity': '1' })),
        Object(_angular_animations__WEBPACK_IMPORTED_MODULE_0__["state"])('out', Object(_angular_animations__WEBPACK_IMPORTED_MODULE_0__["style"])({ 'opacity': '0' })),
        Object(_angular_animations__WEBPACK_IMPORTED_MODULE_0__["transition"])('* <=> *', [
            Object(_angular_animations__WEBPACK_IMPORTED_MODULE_0__["animate"])(1000)
        ])
    ])
];


/***/ }),

/***/ "zUnb":
/*!*********************!*\
  !*** ./src/main.ts ***!
  \*********************/
/*! no exports provided */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _angular_core__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @angular/core */ "fXoL");
/* harmony import */ var _environments_environment__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! ./environments/environment */ "AytR");
/* harmony import */ var _app_app_module__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./app/app.module */ "ZAI4");
/* harmony import */ var _angular_platform_browser__WEBPACK_IMPORTED_MODULE_3__ = __webpack_require__(/*! @angular/platform-browser */ "jhN1");




if (_environments_environment__WEBPACK_IMPORTED_MODULE_1__["environment"].production) {
    Object(_angular_core__WEBPACK_IMPORTED_MODULE_0__["enableProdMode"])();
}
_angular_platform_browser__WEBPACK_IMPORTED_MODULE_3__["platformBrowser"]().bootstrapModule(_app_app_module__WEBPACK_IMPORTED_MODULE_2__["AppModule"])
    .catch(err => console.error(err));


/***/ }),

/***/ "zn8P":
/*!******************************************************!*\
  !*** ./$$_lazy_route_resource lazy namespace object ***!
  \******************************************************/
/*! no static exports found */
/***/ (function(module, exports) {

function webpackEmptyAsyncContext(req) {
	// Here Promise.resolve().then() is used instead of new Promise() to prevent
	// uncaught exception popping up in devtools
	return Promise.resolve().then(function() {
		var e = new Error("Cannot find module '" + req + "'");
		e.code = 'MODULE_NOT_FOUND';
		throw e;
	});
}
webpackEmptyAsyncContext.keys = function() { return []; };
webpackEmptyAsyncContext.resolve = webpackEmptyAsyncContext;
module.exports = webpackEmptyAsyncContext;
webpackEmptyAsyncContext.id = "zn8P";

/***/ })

},[[0,"runtime","vendor"]]]);
//# sourceMappingURL=main.js.map