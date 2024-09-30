import TitleComponent from "./component/TitleComponent"

@Entry
@Component
struct Index {

  build() {
    Column({space: 0}){
      TitleComponent()
    }
  }
}