import { Component } from '@angular/core';
import { BaseService } from '../base.service';

@Component({
  selector: 'app-employee',
  templateUrl: './employee.component.html',
  styleUrls: ['./employee.component.css'],
})
export class EmployeeComponent {
  employee: any;
  oszlopok = ['id', 'gondozo'];
  ujEmployee: any = {};

  constructor(private base: BaseService) {
    this.base.get().subscribe({
      next: (adatok) => {
        this.employee = adatok;
        console.log(this.employee);
      },
      error: (e) => console.log(e),
    });
  }
}
