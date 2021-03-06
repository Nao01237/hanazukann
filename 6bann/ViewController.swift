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
        
        nameLabel.adjustsFontSizeToFitWidth = true
        courseLadel.adjustsFontSizeToFitWidth = true
        s.adjustsFontSizeToFitWidth = true
        t.adjustsFontSizeToFitWidth = true
        
        setupFlowerArrays()
        
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
    
    func setupFlowerArrays() {
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
        redflowerArray.append(Mentor(name: "アマリリス（赤）", imageName: "amaririu.jpeg", course: "「誇り」「おしゃべり」「輝くばかりの美しさ」", s: "4月下旬～6月（春咲き品種）、10月（秋咲き品種）", t: "春に花茎（蕾）と葉がほぼ同時に地上に現れ、その後開花し、夏は葉が30～50cmに伸び、冬になると枯れて地上部がなくなる", mame:"アマリリスという本当の植物は実はベラドンナ・リリーというのだが、現在はヒツペアストルム（ギリシャ語で騎士の星）属の植物すべてをアマリリスという"))
        pinkflowerArray.append(Mentor(name: "アマリリス（ピンク）", imageName: "amaririsu2.jpg", course: "「誇り」「おしゃべり」「輝くばかりの美しさ」", s: "4月下旬～6月（春咲き品種）、10月（秋咲き品種）", t: "春に花茎（蕾）と葉がほぼ同時に地上に現れ、その後開花し、夏は葉が30～50cmに伸び、冬になると枯れて地上部がなくなる", mame:"日本には江戸時代の終わり頃の嘉永年間にインドネシアのジャワかわ輸入された"))
        WhiteflowerArray.append(Mentor(name: "アマリリス（白）", imageName: "amaririsu１.jpg", course: "「誇り」「おしゃべり」「輝くばかりの美しさ」", s: "4月下旬～6月（春咲き品種）、10月（秋咲き品種）", t: "春に花茎（蕾）と葉がほぼ同時に地上に現れ、その後開花し、夏は葉が30～50cmに伸び、冬になると枯れて地上部がなくなる", mame:"生け花（盛り花）では扱い難い花材の一つ"))
        yellowflowerArray.append(Mentor(name: "アマリリス（黄色）", imageName: "amaririsu3.jpg", course: "「誇り」「おしゃべり」「輝くばかりの美しさ」", s: "4月下旬～6月（春咲き品種）、10月（秋咲き品種）", t: "春に花茎（蕾）と葉がほぼ同時に地上に現れ、その後開花し、夏は葉が30～50cmに伸び、冬になると枯れて地上部がなくなる", mame:"アマリリスの咲き方は一重咲きだけでなく、八重咲きの品種もある"))
        blueflowerArray.append(Mentor(name: "ムスカリ（青）", imageName: "musukari１.jpg", course: "『夢にかける思い』『失望』『失意』『明るい未来』", s: "3月～5月中旬", t: "秋植えの球根で、耐寒性が高い花", mame:"ムスカリの名前は、ギリシャ語の「麝香（じゃこう）」に由来"))
        purpleflowerArray.append(Mentor(name: "ムスカリ（紫）", imageName: "musukari.jpeg", course: "『夢にかける思い』『失望』『失意』『明るい未来』", s: "3月～5月中旬", t: "秋植えの球根で、耐寒性が高い花", mame:"英名はグレープヒヤシンス"))
        WhiteflowerArray.append(Mentor(name: "ムスカリ（白）", imageName: "musukari2.jpg", course: "『夢にかける思い』『失望』『失意』『明るい未来』", s: "3月～5月中旬", t: "秋植えの球根で、耐寒性が高い花", mame:"ヨーロッパでは人気の花壇材料"))
        blueflowerArray.append(Mentor(name: "ブルースター", imageName: "bluestar.jpg", course: "『信じ合う心』『幸福な愛』『星の精』『早すぎた恋』『身を切る想い』", s: "5月～10月上旬", t: "関東地方南部などでも霜よけをすれば戸外で冬越しする比較的丈夫な多年草", mame:"ブルースターの名は勿論星型に咲く空色の花姿から付いた"))
        blueflowerArray.append(Mentor(name: "ネモフィラ", imageName: "nemofira.jpg", course: "『どこでも成功』『可憐』『あなたを許す』", s: "4月～5月（ポット苗は2月～3月に流通）", t: "細かく切れ込んだ葉が密に茂り、自然に分枝して咲きながら大きくこんもりと成長する", mame:"ネモフィラは耐寒性一年草(たいかんせいいちねんそう)という種類の花"))
        yellowflowerArray.append(Mentor(name: "ガザニア（黄）", imageName: "gazania.jpg", course: "『あなたを誇りに思う』『笑顔で答える』『身近な愛』 「あなたを誇りに思う」", s: "4月～10月上旬", t: "高温乾燥には強いが、多湿には弱い", mame:"クンショウギク（勲章菊）とも呼ばれるキク科の花"))
        WhiteflowerArray.append(Mentor(name: "ガザニア（白）", imageName: "gazania1.jpg", course: "『あなたを誇りに思う』『笑顔で答える』『身近な愛』 「あなたを誇りに思う」", s: "4月～10月上旬", t: "高温乾燥には強いが、多湿には弱い", mame:"薄暗い日や、夜になると花が閉じてほっそりとした控えめな姿になる"))
        orangeflowerArray.append(Mentor(name: "ガザニア（オレンジ）", imageName: "gazania2.jpg", course: "『あなたを誇りに思う』『笑顔で答える』『身近な愛』 「あなたを誇りに思う」", s: "4月～10月上旬", t: "高温乾燥には強いが、多湿には弱い", mame:"日当たりの良い場所を好む"))
        pinkflowerArray.append(Mentor(name: "ガザニア（ピンク）", imageName: "gazania3.jpg", course: "『あなたを誇りに思う』『笑顔で答える』『身近な愛』 「あなたを誇りに思う」", s: "4月～10月上旬", t: "高温乾燥には強いが、多湿には弱い", mame:"南アフリカを中心に40種が分布する草花"))
        redflowerArray.append(Mentor(name: "ガザニア（赤）", imageName: "gazania4.jpeg", course: "『あなたを誇りに思う』『笑顔で答える』『身近な愛』 「あなたを誇りに思う」", s: "4月～10月上旬", t: "高温乾燥には強いが、多湿には弱い", mame:"高温乾燥には強い一方、多湿には弱い"))
        orangeflowerArray.append(Mentor(name: "アブチロン（オレンジ）", imageName: "abuchironn.jpg", course:  "「尊敬」「良い便り」「恵まれた環境」「真実は一つ」", s: "4月中旬～11月上旬", t: "下垂気味に長期間咲く花が魅力の熱帯花木", mame:"開花時期が長い"))
        pinkflowerArray.append(Mentor(name: "アブチロン（ピンク）", imageName: "abuchiron2.jpg", course:  "「尊敬」「良い便り」「恵まれた環境」「真実は一つ」", s: "4月中旬～11月上旬", t: "下垂気味に長期間咲く花が魅力の熱帯花木", mame:"メガポタミクムとストリアツムという品種を交配させた園芸品種"))
        redflowerArray.append(Mentor(name: "アブチロン（赤）", imageName: "abuchiron1.jpeg", course:  "「尊敬」「良い便り」「恵まれた環境」「真実は一つ」", s: "4月中旬～11月上旬", t: "下垂気味に長期間咲く花が魅力の熱帯花木", mame:"下に向かって、うなだれるように花がつく"))
        greenflowerArray.append(Mentor(name: "ヤマボウシ（緑）", imageName: "yamaboshi1.jpg", course:  "「友情」", s: "6月中旬～7月中旬", t: "花の観賞期間が長いのが特長", mame:"果実は9～10月頃に赤く熟して甘酸っぱくて美味しい"))
        pinkflowerArray.append(Mentor(name: "ヤマボウシ（ピンク）", imageName: "yamaboshi2.jpg", course:  "「友情」", s: "6月中旬～7月中旬", t: "花の観賞期間が長いのが特長", mame:"総苞弁が淡い紅色の品種をベニヤマボウシと呼ぶ"))
        WhiteflowerArray.append(Mentor(name: "ヤマボウシ（白）", imageName: "yamaboshi.jpeg", course:  "「友情」", s: "6月中旬～7月中旬", t: "花の観賞期間が長いのが特長", mame:"開花期間が比較的長"))
        
        purpleflowerArray.append(Mentor(name: "アヤメ（紫）", imageName: "ayame.jpeg", course:  "「よい便り」", s: "5月", t: "茎の先端に1～3輪の花を咲かせる多年草", mame:"低山から高原の明るい草原に見られる植物"))
        WhiteflowerArray.append(Mentor(name: "アヤメ（白）", imageName: "ayame2.jpeg", course:  "「よい便り」", s: "5月", t: "茎の先端に1～3輪の花を咲かせる多年草", mame:"低山から高原の明るい草原に見られる植物"))
        
        
        
        
        
        purpleflowerArray.append(Mentor(name: "シネラリア（紫）", imageName: "saineria.jpg", course:  "「いつも快活」「喜び」", s: "11月～5月", t: "ガーベラに似た小輪から中輪の花を、ドーム状に密集させて咲かせる", mame:"カラフルな花をこんもりと密に咲かせる"))
        blueflowerArray.append(Mentor(name: "シネラリア（青）", imageName: "saineria１.jpeg", course:  "「いつも快活」「喜び」", s: "11月～5月", t: "ガーベラに似た小輪から中輪の花を、ドーム状に密集させて咲かせる", mame:"カラフルな花をこんもりと密に咲かせる"))
        WhiteflowerArray.append(Mentor(name: "シネラリア（白）", imageName: "saineria２.jpg", course:  "「いつも快活」「喜び」", s: "11月～5月", t: "ガーベラに似た小輪から中輪の花を、ドーム状に密集させて咲かせる", mame:"カラフルな花をこんもりと密に咲かせる"))
        pinkflowerArray.append(Mentor(name: "シネラリア（ピンク）", imageName: "saineria３.jpeg", course:  "「いつも快活」「喜び」", s: "11月～5月", t: "ガーベラに似た小輪から中輪の花を、ドーム状に密集させて咲かせる", mame:"カラフルな花をこんもりと密に咲かせる"))
        yellowflowerArray.append(Mentor(name: "シネラリア（黄）", imageName: "saineria４.jpeg", course:  "「いつも快活」「喜び」", s: "11月～5月", t: "ガーベラに似た小輪から中輪の花を、ドーム状に密集させて咲かせる", mame:"カラフルな花をこんもりと密に咲かせる"))
        
        
        
        
        WhiteflowerArray.append(Mentor(name: "スイートアリッサム", imageName: "sweetaiyssum.jpg", course: "「価値あるもの」", s: "2月下旬～6月上旬、9月下旬～12月上旬", t: "本来は多年草ですが、高温多湿に弱く、日本では一年草として扱われる", mame:"ほんのりと甘い香りがある"))
        
        blackflowerArray.append(Mentor(name: "チョコレートコスモス", imageName: "chocoiatecosmos.jpeg", course: "『恋の終わり』『恋の思い出』『移り変わらぬ気持ち』", s: "5月～11月", t: "高温多湿に弱くやや育てにくい", mame:"チョコレートを思わせる香りをもつ"))
        
        WhiteflowerArray.append(Mentor(name: "ファレノプシス（胡蝶蘭）", imageName: "fuarenopushisu・afurodeite.jpg", course: "幸福が飛んでやってくる", s: "不定期（春から夏に比較的多く開花）", t: "肉厚の大きな葉の中に水分や養分をためて成長する", mame:"高級花として広まっている胡蝶蘭はほとんどが人工による交配種"))
        
        purpleflowerArray.append(Mentor(name: "ブルーベル", imageName: "buruberu.jpg", course:  "「謙遜」「変わらぬ心」", s: "4月末から5月上旬", t: "釣り鐘形で花びらの先端が外側に丸くカールする", mame:"多くの北西ヨーロッパの森林床は、群生して咲くブルーベルの青いカーペットに覆われる"))
        
        yellowflowerArray.append(Mentor(name: "ひまわり(向日葵)", imageName: "himawari.jpg", course: "「憧れ」「あなただけを見つめる」「偽りの愛」「にせ金持ち」", s: "7月～9月", t: "草丈30cm程度の矮性品種から3mを超えるロシアヒマワリ、また切り花用など、さまざまな品種がある", mame:"観賞以外にも、タネを炒って食用にしたり、油を搾ったり、飼料に利用する"))
        
        purpleflowerArray.append(Mentor(name: "スミレ(菫)", imageName: "sumire.jpeg", course:  "「謙虚」「誠実」「貞節」「愛」", s: "4月～5月（促成品は2月ごろから）", t: "スミレは日当たりのよい草地や田畑のわき、堤防、道端などに生える多年草", mame:"花が咲いた促成株は2月ごろから出回る"))
        
        WhiteflowerArray.append(Mentor(name: "百合(ユリ)", imageName: "jasumin.jpeg", course: "「純粋」「無垢」「純潔」「威厳」「華麗 」「虚栄心 」", s: "5月下旬～6月上旬（スカシユリ系）、6月中・下旬（テッポウユリ）、7月中・下旬（オリエンタル系）", t: "球根は外皮で覆われていないため乾燥に弱く、市販される球根はピートモスやおがくずなどに包まれている", mame:"ユリは花姿や草姿、開花期などがさまざまで、多くの園芸品種がある"))
        
        yellowflowerArray.append(Mentor(name: "イチョウ", imageName: "icho.jpg", course: "「荘厳」「長寿」「鎮魂」", s: "11月", t: "葉の展開と同時に花をつける", mame:" 葉は夏には鮮やかな緑色となり、晩秋に黄金色に変わって落葉する"))
        
        purpleflowerArray.append(Mentor(name: "ベルフラワー", imageName: "berufurawa.jpg", course:  "「感謝」「誠実」「楽しいおしゃべり」", s: "4月～5月（促成株は3月ごろから）", t: "茎は根元から密に枝分かれして直径30～40cmほどのクッション状の茂みになる", mame:"自生地は石灰岩の崖ですが、栽培に石灰を使用する必要はない"))
        
        pinkflowerArray.append(Mentor(name: "ハゲイトウ", imageName: "hageito.jpeg", course: "「不老不死」", s: "一年草", t: "花は葉のつけ根に固まって咲く", mame:"秋花壇を彩る葉の強烈な色合いが魅力の一年草"))
        
        greenflowerArray.append(Mentor(name: "グリーンローズ", imageName: "midoribara.jpg", course:  "「穏やか」「あなたは希望を持ちえる」", s: "５月中旬から6月中旬と１０月中旬から１１月下旬", t: "バラ属の成形は、灌木、低木、または木本性のつる植物で、葉や茎に棘を持つものが多い", mame:"花弁とおしべが葉のように変化している"))
        
        purpleflowerArray.append(Mentor(name: "パープルローズ", imageName: "papururozu.jpeg", course:  "「誇り」「気品」「尊敬」「エレガント」", s: "５月中旬から6月中旬と１０月中旬から１１月下旬", t: "バラ属の成形は、灌木、低木、または木本性のつる植物で、葉や茎に棘を持つものが多い", mame:"高さ約30cm。１本に５輪前後の花を着ける"))
        
        pinkflowerArray.append(Mentor(name: "アンズ", imageName: "anzu.jpg", course: "「臆病な愛」「乙女のはにかみ」「疑い」「疑惑」", s: "6月中旬～7月上旬", t: "夏に雨の多い気候では、裂果や灰星病、胴枯病などの発生が多くて育てにくい", mame:"無農薬では栽培しにくい"))
        
        yellowflowerArray.append(Mentor(name: "エニシダ", imageName: "enishida.jpeg", course: "「謙遜」「卑下」「清潔」", s: "5月～6月", t: "常緑または落葉性の低木", mame:"寿命は10年ほど"))
        
        pinkflowerArray.append(Mentor(name: "アルメリア", imageName: "arumeria.jpg", course: "「「同情」「思いやり」「共感」", s: "3月～5月", t: "細長い茎の先端に丸いボール状に花が咲く", mame:"かんざしのような個性的な姿が魅力"))
        
        redflowerArray.append(Mentor(name: "彼岸花", imageName: "higambana.jpg", course: "『情熱』『独立』『再会』『あきらめ』『転生』『悲しい思い出』『思うはあなた一人』『また会う日を楽しみに』", s: "7月中旬～10月中旬", t: "光沢のある花弁が美しく、園芸品種も多くつくられている", mame:"出葉時期は種によって異なり、早春に出葉するものと秋に出葉するものがある"))
        
        purpleflowerArray.append(Mentor(name: "ラベンダー", imageName: "rabenda.jpeg", course:  "「沈黙」「私に答えてください」「期待」「不信感」「疑惑」", s: "4月～7月（四季咲き性の系統もある）", t: "ラベンダーは鮮やかな紫色と心地よい香りが魅力のハーブ", mame:"北海道のような寒さには強い反面、高温多湿に弱く、暖地での夏越しは難しいラベンダー"))
        
        yellowflowerArray.append(Mentor(name: "フクジュソウ", imageName: "fukujuso.jpeg", course: "「幸せを招く」「永久の幸福」「悲しき思い出」", s: "2月～4月", t: "フクジュソウは北海道から本州の山野に多く見られる「春植物」", mame:"これまでフクジュソウとされていたものは現在4種類に分類されている"))
        
        WhiteflowerArray.append(Mentor(name: "スノードロップ", imageName: "sunodoroppu.jpeg", course: "「希望」「慰め」", s: "2月～3月", t: "約15種が知られている", mame:"スノードロップは可憐な草姿に白い下向きの花を1輪咲かせる"))
        
        WhiteflowerArray.append(Mentor(name: "スノーフレーク", imageName: "sunofureku.jpg", course: "「純粋」「汚れなき心」「慈愛」「美」「皆を惹きつける魅力」", s: "3月中旬～4月中旬", t: "庭植えであれば、群植すると美しい", mame:"スノーフレークは、スイセンに似たすらりとした葉に、スズランのようなベル形の花を下向きに咲かせる"))
        
        orangeflowerArray.append(Mentor(name: "サンダーソニア", imageName: "sandasonia.jpeg", course:  "「福音」「祝福」「祈り」「信頼」「共感」「可憐」「愛らしい」「望郷」「励まし」「祝福の音色」", s: "6月～7月", t: "サンダーソニアは高温と過湿に弱い", mame:"かわいらしく人気がある"))
        
        
    }
}





