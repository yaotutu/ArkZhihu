@Component
export default struct TitleComponent {
  build() {
    Row() {
      Row() {
        Image($r('app.media.arrow_left'))
          .width(20)
          .height(20)
      }
      .borderRadius(20)
      .backgroundColor('#f6f6f6')
      .width(30)

      Text("评论回复")
        .textAlign(TextAlign.Center)
        // .backgroundColor(Color.Yellow)
        .layoutWeight(1)

    }
    .width("100%")
    .height(50)
    .border({
      width: {
        bottom:1
      },
      color: "#f6f6f6"
    })
    .padding({
      left:15,
      right:45
    })

  }
}