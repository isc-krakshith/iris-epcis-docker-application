import { ComponentFixture, TestBed } from '@angular/core/testing';

import { RunnerAppComponent } from './runner-app.component';

describe('RunnerAppComponent', () => {
  let component: RunnerAppComponent;
  let fixture: ComponentFixture<RunnerAppComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ RunnerAppComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(RunnerAppComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
