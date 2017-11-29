# SwiftTest

## Tips


### appdelegate.swift で "Thread 1: signal SIGABRT" というエラーが出る
- コードと部品の関連付けがうまくできていないから出ている可能性
- ストーリーボード上部、黄色い丸を、control+click すると、黒い View Controller というウインドウが
- 警告マークが付いている部品が、コードとうまく関連付けができていない可能性が高い
- 再度、Storyboard から Code 画面へ、Control+drag で関連付けしてもいいが、解消されないことがお多いので、一旦警告が出ているパーツを削除し、再度関連付けを行うと、絵エラーが解消されることがある

### 外部 API へのアクセス
- info.plist 配下の、Required Deviece Capability を、App Transport Sequlity Settings に変更
- 変更したら、+ を押して、Allow Arbitary Loads を追加
- API リクエストサンプル
```swift
    @IBAction func findSunrise(_ sender: Any) {
        let url = "https://query.yahooapis.com/v1/public/yql?q=select%20astronomy.sunrise%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22\(cityNameInput.text!)%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
        getURL(url: url)
    }
    
    func getURL(url: String) {
        do {
            let apiURL = URL(string: url)!
            let data = try Data(contentsOf: apiURL)
            let json = try JSONSerialization.jsonObject(with: data) as! [String:Any]
            print(json)
        } catch {
            self.sunriseTimeLabel.text = "サーバに接続できません"
        }
    }
```