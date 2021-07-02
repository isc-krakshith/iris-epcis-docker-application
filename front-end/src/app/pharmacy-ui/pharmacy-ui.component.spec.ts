import { ComponentFixture, TestBed } from '@angular/core/testing';

import { PharmacyUiComponent } from './pharmacy-ui.component';

describe('ParmacyUiComponent', () => {
  let component: PharmacyUiComponent;
  let fixture: ComponentFixture<PharmacyUiComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ PharmacyUiComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(PharmacyUiComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
