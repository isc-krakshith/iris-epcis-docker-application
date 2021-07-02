import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RetrieveItemsComponent } from './retrieve-items.component';

describe('RetrieveItemsComponent', () => {
  let component: RetrieveItemsComponent;
  let fixture: ComponentFixture<RetrieveItemsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RetrieveItemsComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RetrieveItemsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
