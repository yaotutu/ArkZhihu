@Component
export default struct CommentComponent {
  build() {
    Row() {
      TextInput({
        placeholder: "回复"
      })
        .layoutWeight(1)

      Button("发布")
        .width(70)
    }
    .padding({
      left: 10,
      right: 10
    })
  }
}