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
      Scroll() {
        Column() {
          ContentComponent()
          // ContentComponent()
          // ContentComponent()
          // ContentComponent()
          // ContentComponent()
          // ContentComponent()
          // ContentComponent()
          // ContentComponent()
          // ContentComponent()
          // ContentComponent()
          // ContentComponent()
          // ContentComponent()
        }
        .justifyContent(FlexAlign.Start)
        // .height("100%")
      }
      .layoutWeight(1)
      CommentComponent()
    }

  }
}