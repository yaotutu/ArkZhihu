import { CommentItemInterface } from '../Models/CommentItem'

@Component
export default struct ContentComponent {
  item?: CommentItemInterface
  checkFav?: () => void

  build() {
    Row() {
      Image($r("app.media.touxiang"))
        .width(32)
        .aspectRatio(1)
        .borderRadius(16)
      Column() {
        Text(this.item?.author)
          .fontWeight(600)
          .width("100%")
        Text("测试文本测试文本测试文本测试文本测试文本测试文本测试文本")
          .fontSize(14)
          .fontColor("$565656")
        Row() {
          Text("5-15 IP归属地 北京")
            .fontColor("#c3c4c5")
            .fontSize(12)
          Row() {
            Image($r("app.media.ic_public_favor"))
              .width(14)
              .aspectRatio(1)
              .onClick(()=>{
                if(this.checkFav){
                  this.checkFav()
                }
              })
            Text(this.item?.facNum.toString())
          }
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width("100%")
      }
      .layoutWeight(1)
      .padding({
        left: 10
      })
    }
    .justifyContent(FlexAlign.Start)
    .alignItems(VerticalAlign.Top)
    .width("100%")
    .padding(15)
  }
}