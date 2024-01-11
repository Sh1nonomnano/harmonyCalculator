import router from '@ohos.router';
@Component
struct Child{
  @Prop image:string;
  @Prop name:string;
  build(){
    Row() {
      Image($rawfile(this.image))
        .width("15%")
        .height("100%")
      Text(this.name)
        .width("70%")
        .height("60vp")
        .fontSize("25fp")
      Text(">")
        .width("15%")
        .height("100%")
        .fontColor("#847bc6")
        .textAlign(TextAlign.Center)
        .fontSize("45fp")
    }
    .width("100%")
    .height("100%")
    .alignItems(VerticalAlign.Center)
    .justifyContent(FlexAlign.Start)
  }
}


@Entry
@Component
struct Index {

  build() {
    Column() {
      Column() {
        Text('换算工具')
          .width("300vp")
          .height("60vp")
          .textAlign(TextAlign.Center)
          .fontSize("50fp")
          .fontWeight(FontWeight.Bold)
        List() {
          ListItem() {
            Child({image:'images/currency_icon.png',name:"汇率转换"});
          }
          .width("100%")
          .height("60vp")
          .borderStyle(BorderStyle.Dashed)
          .borderWidth({ top: "1vp", bottom: "1vp" })
          .onClick(()=>{
            router.push({url :'pages/translatePage'})
          })
        }
        .width("100%")
        .height("500vp")
        .borderWidth({ top: "1vp", bottom: "1vp" })
      }
      .width("100%")
      .height("100%")
      .justifyContent(FlexAlign.Center)
    }
    .width("100%")
    .height("100%")
  }
}