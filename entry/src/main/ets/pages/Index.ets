import TitleComponent from "./component/TitleComponent"
import ContentComponent from  "./component/ContentComponent"

@Entry
@Component
struct Index {

  build() {
    Column({space: 0}){
      TitleComponent()
      ContentComponent()
    }
  }
}