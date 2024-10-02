import TitleComponent from "./component/TitleComponent"
import ContentComponent from "./component/ContentComponent"
import CommentComponent from  "./component/CommentComponent"
@Entry
@Component
struct Index {
  build() {
    Column() {
      TitleComponent()
      ContentComponent()
      Divider()
        .strokeWidth(8)
        .color("#f4f5f6")

      Column(){
        Scroll() {
          Column() {
            ContentComponent()
            ContentComponent()
            ContentComponent()
            ContentComponent()
            ContentComponent()
            ContentComponent()
          }
        }
      }
      .layoutWeight(1)
      .justifyContent(FlexAlign.Start)
      CommentComponent()
    }

  }
}