import { Component } from '@angular/core';
import { HttpClient, HttpHeaders} from '@angular/common/http';

@Component({
  selector: 'app-tab3',
  templateUrl: 'tab3.page.html',
  styleUrls: ['tab3.page.scss']
})
export class Tab3Page {

  userdata:any;
  headers:HttpHeaders;
  //import { HttpClient, HttpHeaders} from '@angular/common/http';
  success:any;
  error:any;
  urllogin:any;
  data:any={};

  

  constructor(private http:HttpClient) {
    this.getlogin();
  }

  getlogin(){
    //users data to pass to server
    this.userdata={
      'email':this.data.email,
      'password':this.data.password,
    };
    //filter carian key
    this.urllogin= "http://localhost/ionicjsondbphp/jsonphpdb/sahkan_user.php";
    //this.urllisting= "http://192.168.1.104/ionicjsondbphp/jsonphpdb/sahkan_user.php";
    
    this.headers=new HttpHeaders();
    this.headers.append('ContentType', 'application/json');
    //transmit to server
    this.http.post(this.urllogin,this.userdata)
      .subscribe(data=>{
        this.userdata = data['userinfo'];
        console.log('berjaya');
        console.log(this.userdata);
        //console.log(this.error);
    },error=> {
        console.log('error');
        //console.log(this.success);
        console.log(this.error);
    });

  }//getdata()

}
