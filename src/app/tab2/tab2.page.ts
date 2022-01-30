import { Component } from '@angular/core';
import { HttpClient, HttpHeaders} from '@angular/common/http';

@Component({
  selector: 'app-tab2',
  templateUrl: 'tab2.page.html',
  styleUrls: ['tab2.page.scss']
})
export class Tab2Page {

  data:any={};
  aduandata:any;
  headers:HttpHeaders;
  urlinsert:any="http://192.168.1.104/ionicjsondbphp/jsonphpdb/aduaninsert.php";
  constructor(private http:HttpClient) { }

  ngOnInit() {
  }
  success:any;
  error:any;
  hantaraduan(){
    this.aduandata={
      'deskripsi':this.data.deskripsi,
      'latitude':this.data.latitude,
      'longitude':this.data.longitude,
      'jenisaduan':this.data.jenisaduan,
    };
    //headers
    
    this.headers=new HttpHeaders();
    this.headers.append('ContentType', 'application/json');
    //transmit to server
    this.http.post(this.urlinsert,this.aduandata,{headers:this.headers})
      .subscribe(data=>{
        this.success = data['success'];
        this.error = data['error'];
        //console.log('berjaya');
        console.log(this.success);
        console.log(this.error);
    },error=> {
      //console.log('error');
        console.log(this.success);
        console.log(this.error);
    });

  }//hantaraduan

}
