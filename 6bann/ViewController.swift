//
//  ViewController.swift
//  6bann
//
//  Created by 橋目　那桜 on 2019/07/05.
//  Copyright © 2019 橋目　那桜. All rights reserved.
//

import UIKit
import SCLAlertView



class ViewController: UIViewController {
    
    var redflowerArray: [Mentor] = []
    var blueflowerArray: [Mentor] = []
    var yellowflowerArray: [Mentor] = []
    var pinkflowerArray: [Mentor] = []
    var orangeflowerArray: [Mentor] = []
    var greenflowerArray: [Mentor] = []
    var purpleflowerArray: [Mentor] = []
    var WhiteflowerArray: [Mentor] = []
    var blackflowerArray: [Mentor] = []
    var mametisiki: String!
    
    var flowerArray: [Mentor] = []
    var flowerColor: String!
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var courseLadel: UILabel!
    @IBOutlet var s: UILabel!
    @IBOutlet var t: UILabel!
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        pinkflowerArray.append(Mentor(name: "ソメイヨシノ", imageName: "someiyoshino.jpeg", course: "「純潔」「優れた美人」", s: "3月下旬〜5月上旬", t: "ソメイヨシノはエドヒガン系のサクラ（桜）と、日本固有種のオオシマザクラの雑種の交配で生まれた日本産の園芸品種のサクラ", mame:"桜にはたくさんの種類がありますが、開花予想に使われる木の大半はソメイヨシノ"))
        pinkflowerArray.append(Mentor(name: "ヤエザクラ", imageName: "yaezakura.jpeg", course: "「しとやか」「豊かな教養」「善良な教育」", s: "4月中旬～5月上旬頃", t: "バラ科サクラ属の落葉広葉樹で、花びらがたくさんある桜の総称。通常の桜の花びらは5枚なのに対し、八重桜は何枚もの花びらを重ねてつける", mame:"ヤエザクラ（八重桜）は一つのサクラの品種ではなく、サクラの中でも八重咲きになるものの総称"))
        pinkflowerArray.append(Mentor(name: "シダレザクラ", imageName: "shdarezakura.jpg", course: "「優美、円熟した美人」「ごまかし」", s: "3月下旬～4月", t: "小輪の一重咲きで、花の色は白か淡い紅色。", mame:"昔、桜は縁起が悪いものとされていた"))
        redflowerArray.append(Mentor(name: "赤バラ", imageName: "akabara.jpg", course: "「あなたを愛してます」「愛情」「美」「情熱」「熱烈な恋」「美貌」", s: "５月中旬から6月中旬と１０月中旬から１１月下旬", t: "バラ属の成形は、灌木、低木、または木本性のつる植物で、葉や茎に棘を持つものが多い", mame:"花束の本数の意味 1本＝一目ぼれ、あなたしかいない/365本＝あなたが毎日恋しい"))
        WhiteflowerArray.append(Mentor(name: "白バラ", imageName: "shirobara.jpg", course: "「純潔」「私はあなたにふさわしい」「深い尊敬」「純潔」「清純」", s: "５月中旬から6月中旬と１０月中旬から１１月下旬", t: "バラ属の成形は、灌木、低木、または木本性のつる植物で、葉や茎に棘を持つものが多い", mame:"花束の本数の意味 100本＝100％の愛"))
        pinkflowerArray.append(Mentor(name: "ピンクローズ", imageName: "pinkbara.jpg", course: "「しとやか」「上品」「可愛い人」「美しい少女」「愛の誓い」", s: "５月中旬から6月中旬と１０月中旬から１１月下旬", t: "バラ属の成形は、灌木、低木、または木本性のつる植物で、葉や茎に棘を持つものが多い", mame:"花束の本数の意味 15本＝永遠の友情、ごめんなさい"))
        blueflowerArray.append(Mentor(name: "青バラ", imageName: "aobara.jpeg", course: "「夢かなう」「奇跡」「神の祝福」", s: "５月中旬から6月中旬と１０月中旬から１１月下旬", t: "バラ属の成形は、灌木、低木、または木本性のつる植物で、葉や茎に棘を持つものが多い", mame:"花束の本数の意味 3本＝愛しています、告白/999本＝何度生まれ変わってもあなたを愛する"))
        yellowflowerArray.append(Mentor(name: "黄バラ", imageName: "kibara.jpeg", course: "「友情」「平和」「愛の告白」", s: "５月中旬から6月中旬と１０月中旬から１１月下旬", t: "バラ属の成形は、灌木、低木、または木本性のつる植物で、葉や茎に棘を持つものが多い", mame:"花束の本数の意味 12本＝付き合ってください"))
        orangeflowerArray.append(Mentor(name: "オレンジローズ", imageName: "orangebara.jpg", course: "「無邪気」「魅惑」「絆」「信頼」", s: "５月中旬から6月中旬と１０月中旬から１１月下旬", t: "バラ属の成形は、灌木、低木、または木本性のつる植物で、葉や茎に棘を持つものが多い", mame:"花束の本数の意味 99本＝永遠の愛、ずっと好きだった"))
        blackflowerArray.append(Mentor(name: "黒バラ", imageName: "kurobara.jpeg", course: "「貴方はあくまで私のもの」「決して滅びることのない愛、永遠の愛」", s: "５月中旬から6月中旬と１０月中旬から１１月下旬", t: "バラ属の成形は、灌木、低木、または木本性のつる植物で、葉や茎に棘を持つものが多い", mame:"花束の本数の意味 108本＝結婚して下さい"))
        redflowerArray.append(Mentor(name: "アマリリス", imageName: "amaririu.jpeg", course: "「誇り」「おしゃべり」「輝くばかりの美しさ」", s: "4月下旬～6月（春咲き品種）、10月（秋咲き品種）", t: "春に花茎（蕾）と葉がほぼ同時に地上に現れ、その後開花し、夏は葉が30～50cmに伸び、冬になると枯れて地上部がなくなる", mame:"アマリリスという本当の植物は実はベラドンナ・リリーというのだが、現在はヒツペアストルム（ギリシャ語で騎士の星）属の植物すべてをアマリリスという"))
        pinkflowerArray.append(Mentor(name: "アマリリス", imageName: "amaririsu2.jpg", course: "「誇り」「おしゃべり」「輝くばかりの美しさ」", s: "4月下旬～6月（春咲き品種）、10月（秋咲き品種）", t: "春に花茎（蕾）と葉がほぼ同時に地上に現れ、その後開花し、夏は葉が30～50cmに伸び、冬になると枯れて地上部がなくなる", mame:"日本には江戸時代の終わり頃の嘉永年間にインドネシアのジャワかわ輸入された"))
        WhiteflowerArray.append(Mentor(name: "アマリリス", imageName: "amaririsu１.jpg", course: "「誇り」「おしゃべり」「輝くばかりの美しさ」", s: "4月下旬～6月（春咲き品種）、10月（秋咲き品種）", t: "春に花茎（蕾）と葉がほぼ同時に地上に現れ、その後開花し、夏は葉が30～50cmに伸び、冬になると枯れて地上部がなくなる", mame:"生け花（盛り花）では扱い難い花材の一つ"))
        yellowflowerArray.append(Mentor(name: "アマリリス", imageName: "amaririsu3.jpg", course: "「誇り」「おしゃべり」「輝くばかりの美しさ」", s: "4月下旬～6月（春咲き品種）、10月（秋咲き品種）", t: "春に花茎（蕾）と葉がほぼ同時に地上に現れ、その後開花し、夏は葉が30～50cmに伸び、冬になると枯れて地上部がなくなる", mame:"アマリリスの咲き方は一重咲きだけでなく、八重咲きの品種もある"))
        blueflowerArray.append(Mentor(name: "ムスカリ", imageName: "musukari１.jpg", course: "『夢にかける思い』『失望』『失意』『明るい未来』", s: "3月～5月中旬", t: "秋植えの球根で、耐寒性が高い花", mame:"ムスカリの名前は、ギリシャ語の「麝香（じゃこう）」に由来"))
        purpleflowerArray.append(Mentor(name: "ムスカリ", imageName: "musukari.jpeg", course: "『夢にかける思い』『失望』『失意』『明るい未来』", s: "3月～5月中旬", t: "秋植えの球根で、耐寒性が高い花", mame:"英名はグレープヒヤシンス"))
        WhiteflowerArray.append(Mentor(name: "ムスカリ", imageName: "musukari2.jpg", course: "『夢にかける思い』『失望』『失意』『明るい未来』", s: "3月～5月中旬", t: "秋植えの球根で、耐寒性が高い花", mame:"ヨーロッパでは人気の花壇材料"))
        blueflowerArray.append(Mentor(name: "ブルースター", imageName: "bluestar.jpg", course: "『信じ合う心』『幸福な愛』『星の精』『早すぎた恋』『身を切る想い』", s: "5月～10月上旬", t: "関東地方南部などでも霜よけをすれば戸外で冬越しする比較的丈夫な多年草", mame:"ブルースターの名は勿論星型に咲く空色の花姿から付いた"))
        blueflowerArray.append(Mentor(name: "ネモフィラ", imageName: "nemofira.jpg", course: "『どこでも成功』『可憐』『あなたを許す』", s: "4月～5月（ポット苗は2月～3月に流通）", t: "細かく切れ込んだ葉が密に茂り、自然に分枝して咲きながら大きくこんもりと成長する", mame:"ネモフィラは耐寒性一年草(たいかんせいいちねんそう)という種類の花"))
        yellowflowerArray.append(Mentor(name: "ガザニア", imageName: "gazania.jpg", course: "『あなたを誇りに思う』『笑顔で答える』『身近な愛』 「あなたを誇りに思う」", s: "4月～10月上旬", t: "高温乾燥には強いが、多湿には弱い", mame:"クンショウギク（勲章菊）とも呼ばれるキク科の花"))
        WhiteflowerArray.append(Mentor(name: "ガザニア", imageName: "gazania1.jpg", course: "『あなたを誇りに思う』『笑顔で答える』『身近な愛』 「あなたを誇りに思う」", s: "4月～10月上旬", t: "高温乾燥には強いが、多湿には弱い", mame:"薄暗い日や、夜になると花が閉じてほっそりとした控えめな姿になる"))
        orangeflowerArray.append(Mentor(name: "ガザニア", imageName: "gazania2.jpg", course: "『あなたを誇りに思う』『笑顔で答える』『身近な愛』 「あなたを誇りに思う」", s: "4月～10月上旬", t: "高温乾燥には強いが、多湿には弱い", mame:"日当たりの良い場所を好む"))
        pinkflowerArray.append(Mentor(name: "ガザニア", imageName: "gazania3.jpg", course: "『あなたを誇りに思う』『笑顔で答える』『身近な愛』 「あなたを誇りに思う」", s: "4月～10月上旬", t: "高温乾燥には強いが、多湿には弱い", mame:"南アフリカを中心に40種が分布する草花"))
        redflowerArray.append(Mentor(name: "ガザニア", imageName: "gazania4.jpeg", course: "『あなたを誇りに思う』『笑顔で答える』『身近な愛』 「あなたを誇りに思う」", s: "4月～10月上旬", t: "高温乾燥には強いが、多湿には弱い", mame:"高温乾燥には強い一方、多湿には弱い"))
        orangeflowerArray.append(Mentor(name: "アブチロン", imageName: "abuchironn.jpg", course:  "「尊敬」「良い便り」「恵まれた環境」「真実は一つ」", s: "4月中旬～11月上旬", t: "下垂気味に長期間咲く花が魅力の熱帯花木", mame:"開花時期が長い"))
        pinkflowerArray.append(Mentor(name: "アブチロン", imageName: "abuchiron2.jpg", course:  "「尊敬」「良い便り」「恵まれた環境」「真実は一つ」", s: "4月中旬～11月上旬", t: "下垂気味に長期間咲く花が魅力の熱帯花木", mame:"メガポタミクムとストリアツムという品種を交配させた園芸品種"))
        redflowerArray.append(Mentor(name: "アブチロン", imageName: "abuchiron1.jpeg", course:  "「尊敬」「良い便り」「恵まれた環境」「真実は一つ」", s: "4月中旬～11月上旬", t: "下垂気味に長期間咲く花が魅力の熱帯花木", mame:"下に向かって、うなだれるように花がつく"))
        greenflowerArray.append(Mentor(name: "ヤマボウシ", imageName: "yamaboushi1.jpeg", course:  "「友情」", s: "6月中旬～7月中旬", t: "花の観賞期間が長いのが特長", mame:"果実は9～10月頃に赤く熟して甘酸っぱくて美味しい"))
        pinkflowerArray.append(Mentor(name: "ヤマボウシ", imageName: "yamaboshi2.jpg", course:  "「友情」", s: "6月中旬～7月中旬", t: "花の観賞期間が長いのが特長", mame:"総苞弁が淡い紅色の品種をベニヤマボウシと呼ぶ"))
        WhiteflowerArray.append(Mentor(name: "ヤマボウシ", imageName: "yamaboshi.jpeg", course:  "「友情」", s: "6月中旬～7月中旬", t: "花の観賞期間が長いのが特長", mame:"開花期間が比較的長"))
        greenflowerArray.append(Mentor(name: "ヒスイカズラ", imageName: "hisuikazura.jpeg", course:  "「私を忘れないで」", s: "３月〜５月", t: "総状花序（そうじょうかじょ）という房に多くの花が連なってなって咲く", mame:"房の長さは50センチ1ｍほど"))
        purpleflowerArray.append(Mentor(name: "アヤメ", imageName: "ayame.jpeg", course:  "「よい便り」", s: "5月", t: "茎の先端に1～3輪の花を咲かせる多年草", mame:"低山から高原の明るい草原に見られる植物"))
        WhiteflowerArray.append(Mentor(name: "アヤメ", imageName: "ayame2.jpeg", course:  "「よい便り」", s: "5月", t: "茎の先端に1～3輪の花を咲かせる多年草", mame:"低山から高原の明るい草原に見られる植物"))
        
        purpleflowerArray.append(Mentor(name: "シネラリア", imageName: "saineria.jpg", course:  "「いつも快活」「喜び」", s: "11月～5月", t: "", mame:""))
        
        WhiteflowerArray.append(Mentor(name: "スイートアリッサム", imageName: "sweetaiyssum.jpg", course: "「価値あるもの」", s: "", t: "", mame:""))
        blackflowerArray.append(Mentor(name: "チョコレートコスモス", imageName: "chocoiatecosmos.jpeg", course: "『恋の終わり』『恋の思い出』『移り変わらぬ気持ち』", s: "", t: "", mame:""))
        WhiteflowerArray.append(Mentor(name: "ファレノプシス・アフロディテ", imageName: "fuarenopushisu・afurodeite.jpg", course: "幸福が飛んでやってくる", s: "", t: "", mame:""))
        purpleflowerArray.append(Mentor(name: "ブルーベル", imageName: "buruberu.jpg", course:  "「謙遜」「変わらぬ心」", s: "", t: "", mame:""))
        greenflowerArray.append(Mentor(name: "バイモ", imageName: "baimo.jpg", course:  "「謙虚な心」「才能」", s: "", t: "", mame:""))
        yellowflowerArray.append(Mentor(name: "ひまわり(向日葵)", imageName: "himawari.jpg", course: "「憧れ」「あなただけを見つめる」「偽りの愛」「にせ金持ち」", s: "", t: "", mame:""))
        purpleflowerArray.append(Mentor(name: "スミレ(菫)", imageName: "sumire.jpeg", course:  "「謙虚」「誠実」「貞節」「愛」", s: "", t: "", mame:""))
        WhiteflowerArray.append(Mentor(name: "ジャスミン(茉莉花)", imageName: " jasumin.jpeg", course: "「愛想の良い」「愛らしさ」「温順」「柔和」", s: "", t: "", mame:""))
        WhiteflowerArray.append(Mentor(name: "百合(ユリ)", imageName: " jasumin.jpeg", course: "「純粋」「無垢」「純潔」「威厳」「華麗 」「虚栄心 」", s: "", t: "", mame:""))
        yellowflowerArray.append(Mentor(name: "イチョウ", imageName: "icho.jpg", course: "「荘厳」「長寿」「鎮魂」", s: "", t: "", mame:""))
        purpleflowerArray.append(Mentor(name: "ベルフラワー", imageName: "berufurawa.jpg", course:  "「感謝」「誠実」「楽しいおしゃべり」", s: "", t: "", mame:""))
        pinkflowerArray.append(Mentor(name: "ハゲイトウ", imageName: "hageito.jpeg", course: "「不老不死」", s: "", t: "", mame:""))
        yellowflowerArray.append(Mentor(name: "タンポポ", imageName: "tannpopo.jpg", course: "「愛の神託」「神託」「真心の愛」「別離」", s: "", t: "", mame:""))
        greenflowerArray.append(Mentor(name: "グリーンローズ", imageName: "midoribara.jpg", course:  "「穏やか」「あなたは希望を持ちえる」", s: "", t: "", mame:""))
        purpleflowerArray.append(Mentor(name: "パープルローズ", imageName: "papururozu.jpeg", course:  "「誇り」「気品」「尊敬」「エレガント」", s: "", t: "", mame:""))
        pinkflowerArray.append(Mentor(name: "アンズ", imageName: "anzu.jpg", course: "「臆病な愛」「乙女のはにかみ」「疑い」「疑惑」", s: "", t: "", mame:""))
        blueflowerArray.append(Mentor(name: "", imageName: "yagurumagiku.jpeg", course:
            "「繊細」「優美」「教育」「信頼」", s: "", t: "", mame:""))
        yellowflowerArray.append(Mentor(name: "エニシダ", imageName: "enishida.jpeg", course: "「謙遜」「卑下」「清潔」", s: "", t: "", mame:""))
        pinkflowerArray.append(Mentor(name: "アルメリア", imageName: "arumeria.jpg", course: "「「同情」「思いやり」「共感」", s: "", t: "", mame:""))
        redflowerArray.append(Mentor(name: "ゼラニウム", imageName: "zeraniumu.jpeg", course: "「尊敬」「信頼」「真の友情」", s: "", t: "", mame:""))
        purpleflowerArray.append(Mentor(name: "オドントグロッサム", imageName: "odontogurossamu.jpg", course:  "「特別な存在」", s: "", t: "", mame:""))
        redflowerArray.append(Mentor(name: "彼岸花", imageName: "higambana.jpg", course: "『情熱』『独立』『再会』『あきらめ』『転生』『悲しい思い出』『思うはあなた一人』『また会う日を楽しみに』", s: "", t: "", mame:""))
        purpleflowerArray.append(Mentor(name: "ラベンダー", imageName: "rabenda.jpeg", course:  "「沈黙」「私に答えてください」「期待」「不信感」「疑惑」", s: "", t: "", mame:""))
        yellowflowerArray.append(Mentor(name: "フクジュソウ", imageName: "fukujuso.jpeg", course: "「幸せを招く」「永久の幸福」「悲しき思い出」", s: "", t: "", mame:""))
        WhiteflowerArray.append(Mentor(name: "スノードロップ", imageName: "sunodoroppu.jpeg", course: "「希望」「慰め」", s: "", t: "", mame:""))
        WhiteflowerArray.append(Mentor(name: "スノーフレーク", imageName: "sunofureku.jpg", course: "「純粋」「汚れなき心」「慈愛」「美」「皆を惹きつける魅力」", s: "", t: "", mame:""))
        orangeflowerArray.append(Mentor(name: "サンダーソニア", imageName: "sandasonia.jpeg", course:  "「福音」「祝福」「祈り」「信頼」「共感」「可憐」「愛らしい」「望郷」「励まし」「祝福の音色」", s: "", t: "", mame:""))
        purpleflowerArray.append(Mentor(name: "デルフィニウム", imageName: "rabenda.jpeg", course:  "「あなたは幸福をふりまく」「誰もがあなたを慰める」", s: "", t: "", mame:""))
        
        
        
        if flowerColor == "red"{
            flowerArray = redflowerArray
        }
        if flowerColor == "blue"{
            flowerArray = blueflowerArray
            
        }
        if flowerColor == "yellow"{
            flowerArray = yellowflowerArray
        }
        if flowerColor == "pink"{
            flowerArray = pinkflowerArray
            
        }
        if flowerColor == "orange"{
            flowerArray = orangeflowerArray
        }
        if flowerColor == "green"{
            flowerArray = greenflowerArray
            
        }
        if flowerColor == "purple"{
            flowerArray = purpleflowerArray
            
        }
        if flowerColor == "White"{
            flowerArray = WhiteflowerArray
            
        }
        if flowerColor == "black"{
            flowerArray = blackflowerArray
        }
        
        setUI()
        
    }
    
    func setUI() {
        imageView.image = flowerArray[index].getImage()
        nameLabel.text = flowerArray[index].name
        courseLadel.text = flowerArray[index].course
        s.text = flowerArray[index].s
        t.text = flowerArray[index].t
        mametisiki = flowerArray[index].mame
    
    }
    
    @IBAction func mae() {
        if index  == 0 {
            index = flowerArray.count - 1
        }
        else {
            index = index - 1
            
        }
        setUI()
    }
    
    @IBAction func tugi() {
        if index == flowerArray.count - 1 {
            index = 0
        }
        else {
            index = index + 1
        }
        setUI()
        
    }
    
    @IBAction func modoru() {
        self.dismiss(animated: true, completion: nil)
        
        
    }
    @IBAction func tisiki() {
        SCLAlertView().showNotice("豆知識", subTitle: mametisiki)
    }
}





