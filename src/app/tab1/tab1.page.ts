import { Component } from '@angular/core';
import { HttpClient, HttpHeaders} from '@angular/common/http';

@Component({
  selector: 'app-tab1',
  templateUrl: 'tab1.page.html',
  styleUrls: ['tab1.page.scss']
})
export class Tab1Page {

  
  aduanlist:any;
  headers:HttpHeaders;
  //import { HttpClient, HttpHeaders} from '@angular/common/http';
  success:any;
  error:any;
  key:any;//key carian
  urllisting:any;

  constructor(private http:HttpClient) {
    this.getdata();
  }

  getdata(){
    //filter carian key
    this.urllisting= 'http://192.168.1.104/ionicjsondbphp/jsonphpdb/aduanlisting.php?key='+this.key;
    
    this.headers=new HttpHeaders();
    this.headers.append('ContentType', 'application/json');
    //transmit to server
    this.http.get(this.urllisting,this.key)
      .subscribe(data=>{
        this.aduanlist = data['aduanlist'];
        console.log('berjaya');
        console.log(this.aduanlist);
        //console.log(this.error);
    },error=> {
        console.log('error');
        //console.log(this.success);
        console.log(this.error);
    });

  }//hantaraduan

  ngOnInit() {
  }


}
