/// 
Class TTA.MedicinesTracking Extends %DeepSee.CubeDefinition [ DependsOn = EPCIS.intersystems.DocumentRequest, ProcedureBlock ]
{

/// Cube definition from Architect.
XData Cube [ XMLNamespace = "http://www.intersystems.com/deepsee" ]
{
<cube xmlns="http://www.intersystems.com/deepsee" name="MedicinesTracking" displayName="Medicines Tracking" disabled="false" abstract="false" sourceClass="EPCIS.intersystems.DocumentRequest" namedFactNums="true" countMeasureName="%COUNT" bucketSize="8" bitmapChunkInMemory="false" precompute="0" disableListingGroups="false" enableSqlRestrict="false">
  <dimension name="bizStepField" disabled="false" hasAll="false" allCaption="All bizStepField" allDisplayName="bizStepField" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="bizStepField" disabled="false" sourceProperty="bizStepField" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="2">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="eventTimeField" disabled="false" hasAll="false" allCaption="All eventTimeField" allDisplayName="eventTimeField" sourceProperty="eventTimeField" type="time" calendar="gregorian" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="eventTimeField" disabled="false" timeFunction="DayMonthYear" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="3">
      </level>
    </hierarchy>
  </dimension>
  <dimension name="epcFieldCount" disabled="false" hasAll="false" allCaption="All epcFieldCount" allDisplayName="epcFieldCount" type="data" hidden="false" showHierarchies="default">
    <hierarchy name="H1" disabled="false" hidden="false">
      <level name="epcFieldCount" disabled="false" sourceProperty="epcFieldCount" list="false" useDisplayValue="true" useAsFilter="true" hidden="false" factNumber="4">
      </level>
    </hierarchy>
  </dimension>
</cube>
}

Parameter DOMAIN;

}
