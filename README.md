# SwiftTest

## Tips


### appdelegate.swift で "Thread 1: signal SIGABRT" というエラーが出る
- コードと部品の関連付けがうまくできていないから出ている可能性
- ストーリーボード上部、黄色い丸を、control+click すると、黒い View Controller というウインドウが
- 警告マークが付いている部品が、コードとうまく関連付けができていない可能性が高い
- 再度、Storyboard から Code 画面へ、Control+drag で関連付けしてもいいが、解消されないことがお多いので、一旦警告が出ているパーツを削除し、再度関連付けを行うと、絵エラーが解消されることがある
