import TitleComponent from "./component/TitleComponent"
import ContentComponent from "./component/ContentComponent"
import CommentComponent from "./component/CommentComponent"
import { CommentItemInterface } from './Models/CommentItem'
import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct Index {
  listItem: CommentItemInterface[] = [{
    icon: $r('app.media.touxiang'),
    author: "bbb",
    content: "内容区域",
    pubDate: "2008-08-08",
    pubAddress: "北京市",
    facNum: 666
  }, {
    icon: $r('app.media.touxiang'),
    author: "bbb",
    content: "内容区域",
    pubDate: "2008-08-08",
    pubAddress: "北京市",
    facNum: 666
  }]

  checkFav() {
    promptAction.showToast(({
      message: "点赞了"
    }))
  }

  build() {
    Column() {
      TitleComponent()
      ContentComponent({
        item: this.listItem[0]
      })
      Divider()
        .strokeWidth(8)
        .color("#f4f5f6")

      Column() {
        Scroll() {
          Column() {
            ForEach(this.listItem, (item: CommentItemInterface, index: number) => {
              ContentComponent({
                item,
                checkFav: this.checkFav
              })
            })
            ContentComponent({
              item: this.listItem[0]
            })
          }
        }
      }
      .layoutWeight(1)
      .justifyContent(FlexAlign.Start)

      CommentComponent()
    }

  }
}