import { Component } from '@angular/core';

@Component({
  selector: 'app-products',
  templateUrl: './products.component.html',
  styleUrls: ['./products.component.css']
})
export class ProductsComponent {
products=[
  {id:1,name:'Minimalists Analog Watch',price:'109',color:'Black',available:'Available',image:'./assets/products/product-image-1.jpg'},
  {id:2,name:'Misense Ultra HD Smart TV',price:'3339',color:'Black',available:'Not Available',image:'./assets/products/product-image-2.jpg'},
  {id:3,name:'APPLE iPhone 12',price:'1855',color:'Black',available:'Available',image:'./assets/products/product-image-3.jpg'},
  {id:4,name:'LG Fully Automatic Washing Machine',price:'1222',color:'Black',available:'Available',image:'./assets/products/product-image-4.jpg'},
  {id:5,name:'LG Refrigerator with Door Cooling',price:'1999',color:'Black',available:'Not Available',image:'./assets/products/product-image-5.jpg'},
  {id:6,name:'Dell Inspirion One 27 Ryzen 7',price:'1099',color:'Black',available:'Available',image:'./assets/products/product-image-6.jpg'}
];
}
