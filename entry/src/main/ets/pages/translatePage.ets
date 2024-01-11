import http from '@ohos.net.http'
import systemDateTime from '@ohos.systemDateTime';
@Entry
@Component
struct TranslatePage {
  @State message: string = '汇率换算'
  @State @Watch('change') currentExchange : number = 7.0770;
  @State updateDate :string = '2024-1-2';
  @State @Watch('change') cny:number = 0;
  @State @Watch('change') usd:number = 0;
  @State res:number =0;
  @State selected:boolean =false;
  @State numberColor2:string = '#000000';
  @State numberColor1:string = "#FF00FF"
  message2:string ='当前人民币比美元汇率'

  change(){
    if(this.selected){
      this.res = this.currentExchange*this.usd;
    }else{
      this.res = this.cny/this.currentExchange;
    }

  }
  aboutToAppear(){
  }

  build() {
    Column() {
      Column() {
        Text(`${this.message2}`)
        Text(`${this.currentExchange}`)
          .width("300vp")
          .height("60vp")
          .textAlign(TextAlign.Center)
          .fontSize("50fp")
          .fontWeight(FontWeight.Bold)
        Text("更新时间"+this.updateDate+"(点击更新)")
          .onClick(()=>{
            let httpReq = http.createHttp()
            httpReq.request('https://apis.tianapi.com/fxrate/index?key=YOUR_TIANAPI_KEY&fromcoin=USD&tocoin=CNY&money=1',{method:http.RequestMethod.GET,},(err,data)=>{
              if(!err){
                this.currentExchange = JSON.parse(`${data.result}`).result.money
                systemDateTime.getDate((err,val)=>{
                  if(err){
                    return
                  }
                  const  year = val.getFullYear()
                  const  month = val.getMonth()+1
                  const  day = val.getDate()
                  console.log(`year ==>${year}`)
                  console.log(`month ==>${month}`)
                  console.log(`day ==>${day}`)
                  this.updateDate = `${year}-${month}-${day}`;
                })
              }
            }
            )
          })
        Row() {
          Text("人民币-CNY")
            .width("50%")
            .height("100%")
            .fontColor("#e56e61")
            .fontSize("25fp")
          Text(this.selected? this.res.toString():this.cny.toString())
            .width("50%")
            .height("100%")
            .textAlign(TextAlign.End)
            .fontSize("21fp")
            .fontColor(this.numberColor1)
        }
        .height("8%")
        .onClick(()=>{
          this.selected = false;
          this.cny=0;
          this.numberColor1 = "#FF00FF"
          this.numberColor2 = "#000000"
        })
        Row() {
          Text("美元-USD")
            .width("50%")
            .height("100%")
            .fontColor("#e56e61")
            .fontSize("25fp")
          Text(this.selected? this.usd.toString():this.res.toString())
            .width("50%")
            .height("100%")
            .textAlign(TextAlign.End)
            .fontSize("21fp")
            .fontColor(this.numberColor2)
        }
        .height("8%")
        .onClick(()=>{
          this.selected = true;
          this.usd=0;
          this.numberColor2 = "#FF00FF"
          this.numberColor1 = "#000000"
        })
        Grid() {
          GridItem() {
            Button("1")
              .width("100%")
              .height("100%")
              .type(ButtonType.Circle)
              .fontSize("23fp")
              .onClick(()=>{
                if(this.selected){
                  this.usd = this.usd*10+1;
                }else{
                  this.cny = this.cny*10+1;
                }
              })
          }
          .width("80vp")
          .height("80vp")
          GridItem() {
            Button("2")
              .width("100%")
              .height("100%")
              .type(ButtonType.Circle)
              .fontSize("23fp")
              .onClick(()=>{
                if(this.selected){
                  this.usd = this.usd*10+2;
                }else{
                  this.cny = this.cny*10+2;
                }
              })
          }
          .width("80vp")
          .height("80vp")
          GridItem() {
            Button("3")
              .width("100%")
              .height("100%")
              .type(ButtonType.Circle)
              .fontSize("23fp")
              .onClick(()=>{
                if(this.selected){
                  this.usd = this.usd*10+3;
                }else{
                  this.cny = this.cny*10+3;
                }
              })
          }
          .width("80vp")
          .height("80vp")
          GridItem() {
            Button("4")
              .width("100%")
              .height("100%")
              .type(ButtonType.Circle)
              .fontSize("23fp")
              .onClick(()=>{
                if(this.selected){
                  this.usd = this.usd*10+4;
                }else{
                  this.cny = this.cny*10+4;
                }
              })
          }
          .width("80vp")
          .height("80vp")
          GridItem() {
            Button("5")
              .width("100%")
              .height("100%")
              .type(ButtonType.Circle)
              .fontSize("23fp")
              .onClick(()=>{
                if(this.selected){
                  this.usd = this.usd*10+5;
                }else{
                  this.cny = this.cny*10+5;
                }
              })
          }
          .width("80vp")
          .height("80vp")
          GridItem() {
            Button("6")
              .width("100%")
              .height("100%")
              .type(ButtonType.Circle)
              .fontSize("23fp")
              .onClick(()=>{
                if(this.selected){
                  this.usd = this.usd*10+6;
                }else{
                  this.cny = this.cny*10+6;
                }
              })
          }
          .width("80vp")
          .height("80vp")
          GridItem() {
            Button("7")
              .width("100%")
              .height("100%")
              .type(ButtonType.Circle)
              .fontSize("23fp")
              .onClick(()=>{
                if(this.selected){
                  this.usd = this.usd*10+7;
                }else{
                  this.cny = this.cny*10+7;
                }
              })
          }
          .width("80vp")
          .height("80vp")
          GridItem() {
            Button("8")
              .width("100%")
              .height("100%")
              .type(ButtonType.Circle)
              .fontSize("23fp")
              .onClick(()=>{
                if(this.selected){
                  this.usd = this.usd*10+8;
                }else{
                  this.cny = this.cny*10+8;
                }
              })
          }
          .width("80vp")
          .height("80vp")
          GridItem() {
            Button("9")
              .width("100%")
              .height("100%")
              .type(ButtonType.Circle)
              .fontSize("23fp")
              .onClick(()=>{
                if(this.selected){
                  this.usd = this.usd*10+9;
                }else{
                  this.cny = this.cny*10+9;
                }
              })
          }
          .width("80vp")
          .height("80vp")
          GridItem() {
            Button("清")
              .width("100%")
              .height("100%")
              .type(ButtonType.Circle)
              .fontSize("23fp")
              .onClick(()=>{
                this.selected? this.usd=0:this.cny=0;
              })
          }
          .width("80vp")
          .height("80vp")
          GridItem() {
            Button("0")
              .width("100%")
              .height("100%")
              .type(ButtonType.Capsule)
              .fontSize("23fp")
              .onClick(()=>{
                if(this.selected){
                  this.usd *=10;
                }else{
                  this.cny *=10;
                }
              })
          }
          .width("200vp")
          .height("80vp")
          .columnStart(1)
          .columnEnd(2)
        }
        .width("100%")
        .height("50%")
        .columnsTemplate("1fr 1fr 1fr")
        .rowsTemplate("1fr 1fr 1fr 1fr")
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }
    .width("100%")
    .height("100%")
  }
}