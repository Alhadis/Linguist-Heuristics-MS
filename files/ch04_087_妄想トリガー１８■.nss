//<continuation number="200">




chapter main
{

	$PreGameName = "boot_第四章";

	if($GameStart != 1)
	{
		$GameName = "ch04_087_妄想トリガー１８■";
		$GameContiune = 1;
		Reset();
	}

		ch04_087_妄想トリガー１８■();
}


function ch04_087_妄想トリガー１８■()
{

	$構文名 = $SYSTEM_present_process;
	SystemInit();
	SystemSet();

//おがみ：ビデオロック
	XBOX360_LockVideo(true);

	CreateBG( 100, 0, 0, 0, "cg/bg/bg083_02_3_宮下公園_a.jpg");

//おがみ：ビデオロック
	XBOX360_LockVideo(false);


//☆☆☆
//妄想トリガー分岐
//ポジティブ妄想→分岐１０へ
//ネガティブ妄想→分岐１１へ
//妄想しない→分岐１２へ

if($妄想トリガー通過１８ == 0)
{
	SetChoice03("ポジティブ妄想","ネガティブ妄想","妄想しない");
	select
	{
		if($SYSTEM_skip||$SYSTEM_text_auto)
		{
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１:
		{
			ChoiceA03();
			$妄想トリガー１８ = 2;
		}
		case @選択肢２:
		{
			ChoiceB03();
			$妄想トリガー１８ = 1;
		}
		case @選択肢３:
		{
			ChoiceC03();
			$妄想トリガー１８ = 0;
		}
	}
}



//=============================================================================//

if($妄想トリガー１８ == 2)
{
//☆☆☆
//分岐１０

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text001]
いや、気のせいだよ。

僕が警察に疑われてるなんて、そんなことあるはずがない。
だって僕は人殺しなんてしてない、人畜無害な人間なんだから。

とにかく、もう少しだけ休憩しよう。
まだ胸の動悸はおさまらない。

//【拓巳】
<voice name="拓巳" class="拓巳" src="voice/ch04/08700010ta">
「はあ、はあ、はあ……」

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	CreateTextureEX("back13", 100, 0, -80, "cg/bg/bg206_01_3_夜空_a.jpg");
	Request("back13", Smoothing);
	Move("back13", 1000, 0, 0, Dxl1, false);
	Fade("back13", 500, 1000, null, true);
	Delete("back0*");

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text3601001]
なんとなく夜空を見上げながら、浅い呼吸を繰り返す。

星は見えない。地上で爛々としている人工の光によって、
渋谷の空には薄いヴェールが貼られているようなものだ。

何十年、何百年と旅してきたかすかな星の光を遮って、夜空をのっぺりとした暗黒に変えてしまっている。

なんて、安っぽい空だろう。
でも渋谷ではこれが普通。
これが、渋谷に住む僕にとっての空。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	CreateTextureEX("back03", 100, 0, 80, "cg/bg/bg083_02_3_宮下公園_a.jpg");
	Request("back03", Smoothing);
	Move("back03", 1000, 0, 0, DxlAuto, false);
	Fade("back03", 500, 1000, null, true);
	Delete("back13");
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text3602001]
さっきの警官の方へと視線を戻す。
ギクリとした。

{	BGMPlay360("CH01", 500, 1000, true);}
警官が、こっちに歩いてくる。
目を合わせないようにしないと。

{	CreateSE("SE01","SE_じん体_動作_尻餅");
	MusicStart("SE01", 0, 1000, 0, 1000, null, false);
	CreateColor("back04", 100, 0, 0, 1280, 720, "Black");
	Fade("back04", 0, 0, null, false);
	Fade("back04", 500, 1000, null, true);
	Delete("back03");}
僕は立ち上がり、陸橋の下の道路をのぞき込む。

{	CreateSE("SE10","SE_じん体_心臓_鼓動_LOOP");
	MusicStart("SE10", 500, 1000, 0, 1000, null, true);}
足音は徐々に近づいてくる。<k>
通り過ぎてくれ、と心の中で祈る。

でも――

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginDX(200,0);//――――――――――――――――――――――――――――――

	SetVolume("SE10", 0, 0, NULL);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text002]
//【警官】
<voice name="警官" class="警官" src="voice/ch04/08700020po">
「キミ」

声をかけられた。
明らかに僕に対してだ。

//【警官】
<voice name="警官" class="警官" src="voice/ch04/08700030po">
「ちょっといいか？」

せっかくおさまりかけた心臓の鼓動が、今度は緊張のせいで激しくなる。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	CreateBG(100, 500, 0, 0, "cg/bg/bg083_02_3_宮下公園_a.jpg");
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text3601002]
//【拓巳】
<voice name="拓巳" class="拓巳" src="voice/ch04/08700040ta">
「す、すいません、急いでるんで……」

//【警官】
<voice name="警官" class="警官" src="voice/ch04/08700050po">
「そうは見えないな」

この警官が話しかけてきた理由はなんだ？
脳内で箇条書きにしてみる。

�@夜にこんな場所でひとりでいるから。<k>
�A僕が不審者に見えたから。

�B誰彼構わず職務質問をしているから。<k>
�C警察が僕をニュージェネ事件の容疑者と見ているから。

//【警官】
<voice name="警官" class="警官" src="voice/ch04/08700060po">
「身分を証明するもの……そうだな、生徒手帳を見せてくれないか」

くそぅ、こんなことに付き合ってる場合じゃないのに。
一刻も早く、もっと目立たない場所に隠れなくちゃ。
また優愛に見つかってしまう。

でも警官から逃げれば、公務執行妨害で逮捕されるかもしれない。

それどころか、もしさっきの箇条書きの�Cが理由だったなら、逃げることでますますまずい立場に追いやられる。

とにかくさっさとこの警官をやり過ごすしかない。

僕は仕方なく、制服の内ポケットから生徒手帳を取り出し、警官に手渡した。

受け取った警官は、生徒手帳を開いて僕の名前と顔写真を確認する。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text003]
直後、その顔色が変わった。
表情が引きつっている。

なんだ……？

なんでそんなリアクションするんだよ。

僕の名前がそんなに問題あるの？

――やっぱり僕はニュージェネの容疑者にされてるのかもしれない。

それは警察の誤解だ。

僕はやってない。

――優愛は僕を殺人犯だと決めつけていた。僕に自覚がないだけだって。

そんなはずない。

僕は夢遊病じゃない。
多重人格でもない。

ふざけるのもいい加減にしてよ。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginEX();//――――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text004]
//【警官】
<voice name="警官" class="警官" src="voice/ch04/08700070po">
「……ありがとう」

意外にも警官はあっさりと生徒手帳を返してくれた。

そしてそそくさと、逃げるように公園の方に引き返していく。

思わせぶりな態度。
すごく、イヤな感じだ。

僕は……ホントに疑われてるんだろうか……。

じっと警官の後ろ姿を見つめる。

すると、警官がふとベンチに座っているおっさんに
小さく頭を下げた……ように見えた。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginEX();//――――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text005]
――変だ。

気のせい……かな？

でも、ベンチのおっさんの方を見たのは間違いない。

それが頭を下げたのか、単にそう見えただけなのか、判断が付かない。

警官はそのまま公園を出て行った。

ベンチのおっさんは、相変わらずケータイをいじっている……ように見える。

でも、指が動いてない……ようにも見える。

暗くてはっきりとは分からない。

普通なら、ケータイの液晶ディスプレイは光っているはずだけど、おっさんの手許は暗いまま。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginEX();//――――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text006]
――なにかが、変だ。

公園内にいる他の人物にも注意を払ってみる。

//※↓このホームレスは波多野
ホームレスのひとりが、他の人たちとは離れて大きな木の根元に座っている。

ピクリとも動かない。
妙なボードを持っているだけで、顔もずっと下を向いている。

ブルーシートで覆われた小屋の前にいる３人くらいのホームレスは、特に会話をしているようには見えない。
ただ車座になっている。

そのうちのひとりが、口に手を当てている。

少しわざとらしく見えるくらいに、服の襟と手で口許を隠している……ようにも見える。

――はっきりとは分からないけど、変だ。

この公園には、妙な緊張感が漂っている。
それすらも気のせいかもしれないけど。

まさか――<k>
ここにいる連中は全員、変装した刑事だったりして。

そんな妄想が浮かび、ゾッとした。

しょせん妄想だと必死に自分に言い聞かせた。

ただ、とにかくこれ以上ここにいたくなかった。

逃げよう……。

走り出す。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	CreateSE("SE02","SE_じん体_動作_足_走る_LOOP");
	MusicStart("SE02", 100, 1000, 0, 1000, null, true);
	CreateColor("back05", 100, 0, 0, 1280, 720, "Black");
	DrawTransition("back05", 500, 0, 1000, 100, null, "cg/data/right2.png", true);
	Delete("back04");

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text3601006]
陸橋を渡りきり、明治通りに降りる階段へ。
手前で立ち止まり、公園の方を振り返った。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	SetVolume("SE02", 500, 0, NULL);

	CreateTexture360("back04", 100, 0, 0, "cg/bg/bg083_02_3_宮下公園_a.jpg");
	DrawTransition("back04", 300, 0, 1000, 100, null, "cg/data/right2.png", true);
	Delete("back05");

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text007]
ベンチのおっさんが立ち上がっていた。
他の連中は誰も動かない。

おっさんはこっちに身体を向けている。
でも顔は横を向いていた。

こっちに歩いてこようとしている。
少し早歩きをしているように僕には感じる。

追ってきている。
あのおっさんは刑事だ。

やけに体格ががっしりしているようにも見えるし。

そもそも職業不詳なんだ。外見からさっぱり予測できないんだ。

――それだけじゃ刑事かどうか分からない。

……いや、刑事だ。
刑事に決まってる。

僕を尾行してるんだ！

{	CreateSE("SE02","SE_じん体_動作_足_走る_LOOP");
	MusicStart("SE02", 100, 1000, 0, 1000, null, true);}
ここにいるのはまずい。
僕は階段を駆け下りる。

クソ！　クソ！　クソ！

優愛だけじゃなく警察にまで追われるなんて！

しかも僕はなにも悪くないのに！
なにもしてないのに！

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//ＢＧ//渋谷駅ガード下//夜
	CreateTexture360("back03", 100, 0, 0, "cg/bg/bg091_01_3_渋谷ガード下_a.jpg");
	DrawTransition("back03", 300, 0, 1000, 100, null, "cg/data/right2.png", true);
	CreateBG(100, 0, 0, 0, "cg/bg/bg091_01_3_渋谷ガード下_a.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text008]
無実を主張するべきか！？

だけど僕は今、結果的に警察から逃げてしまった。

それにどうせ警察は、あれこれと適当な理由を付けて僕に罪をなすりつけるに決まってる。

あいつらは僕みたいなキモオタのことなんて信じてくれないんだ……！

この先どうなるのかなんて考える余裕はなかった。

今はとにかく、優愛と警察から逃げなくちゃ――その気持ちだけが僕の心を支配していた。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	PositiveHuman();

//合流７へ


}


//=============================================================================//

if($妄想トリガー１８ == 1)
{

//☆☆☆
//分岐１１
//フラグ【４章エンドフラグ�A】ＯＮ
	$４章エンドフラグ�A = true;

	BGMPlay360("CH01", 1000, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text009]
イヤな想像が脳裏を駆け巡る。

腰を上げ、改めて周囲を見回す。

さっきからベンチに座ってケータイを眺めているおっさんが、チラチラと僕の方を見ている――ような気がする。

たった今、公園に入ってきたいかつい顔の男は、パイプのような簡素な柵に腰掛けたかと思うとおもむろに新聞を広げ、読み始める。

こんな街灯がほとんどない暗い場所で、だ。

公園内を足早に歩いていたサラリーマン風の男は、今は陸橋の端にたたずんで眼下の通りを眺めている。

ホームレスに話しかけていた警官が、僕の方を見ながら警察無線でどこかへ連絡を取っている。

冷たい汗が、背中を流れ落ちた。

まさか――

{	CreateSE("SE10","SE_じん体_心臓_鼓動_LOOP");
	MusicStart("SE10", 500, 1000, 0, 1000, null, true);}
こいつら、刑事……？<k>
僕を尾行しているのかも……

だとしたら……僕は今、完全に囲まれてる。

優愛は僕を殺人犯のように決めつけていた。
だからその妄想を元に、警察にチクったかもしれない。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginEX();//――――――――――――――――――――――――――――――

	SetVolume("SE10", 0, 0, NULL);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text010]
//◆小声
//【拓巳】
<voice name="拓巳" class="拓巳" src="voice/ch04/08700080ta">
「ふ、ふざけんな……」

誰にも聞こえないぐらいの小声で、たまらずつぶやいていた。

これも『将軍』の陰謀か！？

僕はやってない！
殺してない！
犯人じゃない！

なんで気弱で人と話すのも苦手な僕が、殺人犯扱いされて警察に追われなくちゃならないんだ……！

なんで優愛の誇大妄想に僕が巻き込まれなくちゃいけないんだ……！

とにかくここにいるのはまずい。

まだ動悸はおさまってなくて息苦しいけど、移動しなくちゃ。

できるだけ不自然に見えないように、僕は歩いて陸橋を渡る。先には、明治通りへ降りる階段。

そこを降りて、明治通り沿いに逃げよう。

陸橋の中ほどまで来たところで、その階段から新たな人影が現れた。

それは女性で、ＯＬ風のスーツを着ていた。

ケータイを耳に当て、無表情で話をしながら階段を上ってくる。

まさかこの女も刑事か……？
僕はドキドキしながら、その女とすれ違った。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginEX();//――――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text011]
//【ＯＬ】
<voice name="ＯＬ" class="ＯＬ" src="voice/ch04/08700090ol">
「――その目だれの目？」

{
//おがみ：実績：その目
	Eyes();
}
//◆棒読みっぽく
//【ＯＬ】
<voice name="ＯＬ" class="ＯＬ" src="voice/ch04/08700100ol">
「っていうＴシャツが流行ってるわよ」

//◆棒読みっぽく
//【ＯＬ】
<voice name="ＯＬ" class="ＯＬ" src="voice/ch04/08700110ol">
「今度の日曜日に買いにいくわ。原宿の竹下通りに売っているから」

違和感を覚えた。
女の話し方がぎこちない。妙に芝居がかっている。

この女と喋っている電話の相手は、いったい誰だ？　本当にそんなヤツは存在するのか？

でも、結局女は僕に対してなんのアクションも起こさなかった。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginEX();//――――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text012]
僕は無事に階段まで辿り着く。
そこで公園の方を振り返ってみた。

警官は追ってきていない。

さっきと同じ場所に立ったまま、まだ警察無線に向かってなにか言っている。

車座になっていたホームレスのひとりが、ちょうど立ち上ろうとしていた。他のホームレスは動かない。

ベンチのおっさんと、新聞を読んでいたおっさんも、いつの間にか立ち上がり、２人ともこっちに歩いてくるところだった。

と、その２人が互いをチラリと一瞥した。
目配せをした……ようにも見えた。

さらに、もう一度ＯＬへ視線を投げかけてみる。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginEX();//――――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text013]
すれ違ったばかりのＯＬが、ちょうど首を巡らせて僕へと振り向いた。

目が合った途端、女はギクリとしたように顔をそらす。

ケータイは耳に当てたままだけど、もう喋っていない。

得体の知れない恐怖に襲われ、僕は階段を駆け下りた。

{	CreateSE("SE02","SE_じん体_動作_足_走る_LOOP");
	MusicStart("SE02", 100, 1000, 0, 1000, null, true);}
明治通りを駅の方へ走りながら、陸橋の上を振り仰ぐ。

ＯＬが身を乗り出して僕を指差していた。

おっさん２人が走って陸橋を渡ってくるのも見えた。

やっぱりあいつら、刑事だ……！

全員刑事だった！

くそ！　くそ！　くそ！

優愛のせいだ！
あいつが僕をまた罠にはめたんだ！

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//ＢＧ//渋谷駅ガード下//夜
	CreateTexture360("back03", 100, 0, 0, "cg/bg/bg091_01_3_渋谷ガード下_a.jpg");
	DrawTransition("back03", 300, 0, 1000, 100, null, "cg/data/right2.png", true);
	CreateBG(100, 0, 0, 0, "cg/bg/bg091_01_3_渋谷ガード下_a.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text014]
無実を主張するべきか！？

だけど僕は今、結果的に警察から逃げてしまった。

それにどうせ警察は、あれこれと適当な理由を付けて僕に罪をなすりつけるに決まってる。

あいつらは僕みたいなキモオタのことなんて信じてくれないんだ……！

この先どうなるのかなんて考える余裕はなかった。

今はとにかく、優愛と警察から逃げなくちゃ――その気持ちだけが僕の心を支配していた。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	NegativeHuman();

//合流７へ


}


//=============================================================================//

if($妄想トリガー１８ == 0)
{

//☆☆☆
//分岐１２

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text015]
考えすぎだよ、と思いつつも、警官の動きを注意深く凝視してみる。

でも、あからさますぎたせいか、警官は今度ははっきりとこっちを見た。

先に顔を伏せたのは僕だった。
警官とのにらみ合いじゃ、勝てる気がしない。

あの警官は、
僕を見たのか。

僕が見たから見つめ返してきたのか。

――どっちだ？

分からない。
どっちとも取れる。

少ししてから、顔を上げてもう一度警官の様子を窺ってみた。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginDX(200,0);//――――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text016]
//【拓巳】
<voice name="拓巳" class="拓巳" src="voice/ch04/08700120ta">
「……っ」

{	BGMPlay360("CH01", 1000, 1000, true);}
警官はまだ僕を見ていて、だからまた慌ててうつむかざるを得なかった。

まずい、今のは明らかに挙動不審だ。

優愛に追い詰められている状況で、警察にまで目を付けられるわけにはいかない。

なんとかやり過ごさなくちゃ……。

額に浮き出た冷や汗を拭う。

僕はその場に座り込んだまま、バッグから教科書を取り出した。それを読むフリをしつつ、さりげなく警官の動向を探る。

と、警官はおもむろに、警察無線らしき黒い物体を口許に添えた。

なにか報告してるんだろうか。

でもこの場所からじゃ、下の明治通りを通る車の音がうるさくて、声はまったく聞こえない。

よくない展開だ……。
そんな気がする。

この場から離れるべきだったかもしれないって思ったけど、後の祭りだ。

迂闊な行動を取るのは自殺行為。

本を読んでいるフリをしちゃった以上、ある程度の時間はそのフリを続けないと、逆に怪しまれる。

せめて警官がこっちを見るのをやめるまでは、この状態を維持しないと……。

そう思った矢先だった。

人影が、公園内に入ってきたかと思うと、まっすぐ警官に駆け寄った。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginEX();//――――――――――――――――――――――――――――――


//おがみ：演出：ここ間が空きすぎです。何か入れないと

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text017]
//【拓巳】
<voice name="拓巳" class="拓巳" src="voice/ch04/08700130ta">
「あ……っ」

横目でそれを確認して、僕は目を剥いた。

優愛だ……！
なんていう最悪のタイミングなんだ……！

冷や汗が、額だけじゃなく全身からにじみ出す。

まずい。すごくまずい状況だ。

優愛はまだ僕に気付いてないみたいだから、そのまま気付かずに立ち去ってくれることを祈りたい。

でも、その祈りは聞き届けられることはなかった。

なにしろ、警官の視線が現在進行形で僕へと注がれているんだ。

警官に駆け寄ってなにやら声をかけた優愛が、その視線を追って僕を見つけるのは当然の流れだった。

僕は舌打ちし、教科書をバッグにしまって腰を浮かしかけた。
いつでも逃げられる姿勢を取る。

警官と優愛は一言二言会話を交わした。
そして２人してこっちを見た。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginEX();//――――――――――――――――――――――――――――――

//おがみ：演出：ここ間が空きすぎです。何か入れないと


//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text018]
――僕を見るな。

優愛が、あからさまに僕のことを指差す。警官になにかを説明している。

あの女ぁっ！
ふざけるな！
ふざけるなよぅ！

さすがに、おとなしい僕でも怒りでキレそうだった。

優愛は警察に僕のことをチクったんだ！

しかもそのチクりの内容は、あの女が自分の脳内で勝手にでっち上げたメチャクチャな妄想――西條拓巳がニュージェネの犯人だっていう荒唐無稽な話。

それであの女は満足するのかも知れないけど、冤罪を吹っかけられた僕の身になれよ！

そんな僕の心の叫びが届くはずもなく。

優愛の話を聞いた警官が、肩を怒らせて僕の方へと近づいてくる。

僕は立ち上がった。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginEX();//――――――――――――――――――――――――――――――

//おがみ：演出：ここ間が空きすぎです。何か入れないと

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text019]
くそっ！　くそっ！　くそっ！

罠にはめられた。あの女は僕を破滅させるつもりでいる。

どうする、どうすればいい……。

逆に僕も警官に真実を訴えてみるべきか？

すべてはあの女の妄想だって。

僕はなにもやってない、善良な市民だって。

……ダメだ。ダメに決まってる。

今の時代、キモオタの僕と、健全な女子高生――っぽく見える――優愛とじゃ、警官がどっちの話を信じるかなんて、決まり切ったことじゃないか。

僕の言うことなんて、まともに聞いてもらえない。

だから、今すぐ逃げなくちゃ……！

{	CreateSE("SE02","SE_じん体_動作_足_走る_LOOP");
	MusicStart("SE02", 100, 1000, 0, 1000, null, true);}
そう思った瞬間には、無意識のうちに踵を返し、走り出していた。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	CreateColor("back05", 100, 0, 0, 1280, 720, "Black");
	DrawTransition("back05", 300, 0, 1000, 100, null, "cg/data/right2.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text020]
陸橋を渡りきり、明治通りへ降りる階段へ。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	SetVolume("SE02", 500, 0, NULL);
	CreateTexture360("back04", 100, 0, 0, "cg/bg/bg083_02_3_宮下公園_a.jpg");
	DrawTransition("back04", 300, 0, 1000, 100, null, "cg/data/right2.png", true);
	Delete("back05");

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text3601020]
そこで振り返ると、警官が走って追いかけてくるのが見えた。

さらに、不思議なことにベンチに座っていたおっさんや、ホームレスのひとりまでが、警官を追うようにして走ってくるところだった。

う、嘘でしょ……

最初から、優愛は警察を味方に引き入れていたのか？

あの宮下公園は、変装した刑事だらけだったのか？

どうしたらいいのか分からなくなった。

ただ愕然とした。
あまりの理不尽さに涙が出そうになった。

僕はなにもしてない。なにもやってない。

警察はあの女の狂言に振り回されている。

こんなの無茶苦茶だ。

//◆泣く
//【拓巳】
<voice name="拓巳" class="拓巳" src="voice/ch04/08700140ta">
「うう……っ」

涙を拭い、僕は急いで階段を駆け下りた。

{	CreateSE("SE02","SE_じん体_動作_足_走る_LOOP");
	MusicStart("SE02", 100, 1000, 0, 1000, null, true);}
明治通りを、駅に向かって脇目も振らず走った。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//合流７へ

}

//=============================================================================//

//☆☆☆
//合流７

	SetVolume360("CH01", 500, 0, NULL);

	CreateSE("SE02","SE_じん体_動作_足_走る_LOOP");
	MusicStart("SE02", 0, 1000, 0, 1000, null, true);

//ＢＧ//渋谷駅南口の歩道橋//夜
//玉川通りの交差点にかかる歩道橋
	CreateTexture360("back03", 100, 0, 0, "cg/bg/bg082_01_3_渋谷駅南口歩道橋_a.jpg");
	DrawTransition("back03", 300, 0, 1000, 100, null, "cg/data/right2.png", true);
	CreateBG(100, 0, 0, 0, "cg/bg/bg082_01_3_渋谷駅南口歩道橋_a.jpg");

	BGMPlay360("CH10", 1000, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text021]
ガード下をくぐり、歩道橋の階段を駆け上がる。

いちいち人が多くて、僕の行く手を塞ぐ。

悪意を持って僕の邪魔をしているんじゃないかとさえ思えてくる。

誰もが刑事に見えてくる。
僕はパニック寸前だった。

背後を振り返ると、誰かが走って追いかけてくるのが見えた。

僕と同じように、人ごみをかき分けてくる人影がチラチラと見え隠れしている。

さっきの公園にいた連中の誰かだ。
誰かは分からない。

とにかく、僕を追ってきている。
そのことにゾッとした。
捕まったら僕の人生は終わりだ……！

やってもいない冤罪で死刑を宣告され、何十年も刑務所に収監される。さんざん生き地獄を味わわされた上で、ようやく“じゃあ、そろそろ死ね”って言われるんだ。

そんなのイヤだ。
耐えられない。
そんな人生はイヤだっ！

たとえ最終的に冤罪だって証明できたとしても、一度押されてしまった犯罪者の烙印は消えない。周囲はみんな僕をうさんくさい目で見る。

そんなのイヤだ。
僕はなんにもしてないんだ！

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//ＢＧ//ギガンティス外観（ライブハウス）//夜

	CreateTexture360("back03", 100, 0, 0, "cg/bg/bg063_01_3_ライブハウス外観_a.jpg");
	DrawTransition("back03", 300, 0, 1000, 100, null, "cg/data/right2.png", true);
	CreateBG(100, 0, 0, 0, "cg/bg/bg063_01_3_ライブハウス外観_a.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text022]
人通りのまったくない小さな道に入って、なおも夢中で走った。

でも＠カフェを出てからずっと走りっぱなしだったから、もう息が続かなかった。

肺が酸素を求めている。
足は疲労でもうフラフラだ。

こんなことならもっと運動しておくんだった、なんて後悔しても後の祭りだった。

{	SetVolume("SE02", 1000, 0, NULL);
	CreateSE("SE10","SE_じん体_心臓_鼓動_LOOP");
	MusicStart("SE10", 500, 1000, 0, 1000, null, true);}
ついに走れなくなり、その場で立ち止まって膝に手を突く。

//【拓巳】
<voice name="拓巳" class="拓巳" src="voice/ch04/08700150ta">
「かはぁっ、はぁっ、かはぁっ、ふはぁっ」

そこは見覚えのある場所だった。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginEX();//――――――――――――――――――――――――――――――

	SetVolume360("CH10", 1500, 0, NULL);

	SetVolume("SE10", 1500, 0, NULL);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text023]
//■３６０
特徴的な、赤レンガの外壁。ライトアップされた『ＧＩＧＡＮＴＥＳ』の大きな看板。

//特徴的な、赤レンガの外壁。ライトアップされた『ＧＩＧ−ＡＮＴＩＳ』の大きな看板。

ここ、前に三住くんと一緒に来たことがある。あのときはファンタズムのライブを――正確にはそのボーカルであるＦＥＳを見に来たんだった。

今はひっそりと静まり返っていて人の気配がなく、建物の前に置かれている自販機の光だけが弱々しく周囲を照らし出している。

なかなか元に戻らない呼吸に苛立ちながら、
僕は自分が走ってきた道を振り返った。

薄暗くて狭い道。

すぐ上を東横線の電車が徐行しながら通り過ぎていくと、窓から漏れる車内の明かりがやけに目立つ。でもその明かりも真下にある道にまでは届かない。

僕は道の先に目を凝らした。
警察を――優愛を――撒けたんだろうか。
暗くて、よく分からない。

//◆ささやき
//【あやせ】
<voice name="あやせ" class="あやせ" src="voice/ch04/08700160ay">
「私に付いてきて」

//【拓巳】
<voice name="拓巳" class="拓巳" src="voice/ch04/08700170ta">
「わああああっ！」

{	CreateSE("SE04","SE_じん体_動作_尻餅");
	MusicStart("SE04", 0, 1000, 0, 1000, null, false);
	CreateSE("SE05","SE_衝撃_どすーん");
	MusicStart("SE05", 0, 300, 0, 1000, null, false);}
いきなり耳元から聞こえてきた女の声に、僕は情けない悲鳴を上げてその場にひっくり返った。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//ＣＨ//あやせ//ステージ衣装
	Stand("buあやせ_ステージ衣装_通常","hard", 200, @+150);
	FadeStand("buあやせ_ステージ衣装_通常_hard", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text024]
そこに立っていたのは、ライブ用の派手な服を身に纏ったＦＥＳだった。

僕を見下ろして闇の中に静かにたたずむその姿は、ステージ上での弾けるような力強さとは違って儚げに見える。

暗いから、表情を窺うことはできない。

僕が驚きのあまり放心していると、ＦＥＳはそっと手を差しのべてきた。

//【あやせ】
<voice name="あやせ" class="あやせ" src="voice/ch04/08700180ay">
「立って。早く」

淡々とした口調。

でも有無を言わせない雰囲気を感じた。

ＦＥＳは手を差し出したまま、ゆっくりと首を巡らせて、闇の向こうをすかし見るように目を細める。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginDX(200,0);//――――――――――――――――――――――――――――――

	Stand("buあやせ_ステージ衣装_通常","angry", 200, @+150);
	FadeStand("buあやせ_ステージ衣装_通常_angry", 300, true);
	DeleteStand("buあやせ_ステージ衣装_通常_hard", 0, true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text025]
//【あやせ】
<voice name="あやせ" class="あやせ" src="voice/ch04/08700190ay">
「逃げないと」

どうして――

僕が、警察や優愛から逃げていることを知ってるんだろう……。

一瞬、警戒したけど、今の僕にとっては文字通り救いの手だった。

だから僕はすがるようにＦＥＳの手を取っていた。

その手はひんやりと冷たかった。

{	DeleteStand("buあやせ_ステージ衣装_通常_angry", 200, true);
	CreateSE("SE02","SE_じん体_動作_足_走る_LOOP");
	MusicStart("SE02", 0, 1000, 0, 1000, null, true);
	WaitAction("SE02", 300);
	CreateSE("SE03","SE_じん体_動作_足_走る_LOOP");
	MusicStart("SE03", 0, 1000, 0, 1000, null, true);}
僕が立ち上がると同時に、ＦＥＳは走り出す。

すでに疲れ切っていた僕にしてみれば恨めしく思ったけど、もしＦＥＳがいなかったらあの場で二度と立ち上がれずに警察に追いつかれていたかもしれない。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//ＢＧ//東急線ガード沿い//夜
	CreateColor("back04", 100, 0, 0, 1280, 720, "Black");
	DrawTransition("back04", 500, 0, 1000, 100, null, "cg/data/right2.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text026]
できれば水分を補給したかった。
でも、そんな余裕がないのも分かっていた。

ＦＥＳは僕の手を引いてどんどん進んでいく。

狭い路地に入り、何度も交差点を曲がる。

自分がどこを走っているのかまったく分からなくなった。

ただでさえ渋谷の地理には疎い。
こうなったらＦＥＳにどこまでも付いていくしかない。

もしこれも『将軍』の罠だったら――って考えそうになったけど、首を振ってその考えを吹き消した。

例えＦＥＳが『将軍』の手下だったとしても、
もうどうしようもない……。

足は乳酸がたまって重くなっていたし、走りすぎで脳に酸素が行き届かないのか、意識ももうろうとしてきた。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//ＢＧ//渋谷路地裏//夜
	CreateTexture360("back03", 100, 0, 0, "cg/bg/bg020_01_3_渋谷路地裏_a.jpg");
	DrawTransition("back03", 500, 0, 1000, 100, null, "cg/data/right2.png", true);
	CreateBG(100, 0, 0, 0, "cg/bg/bg020_01_3_渋谷路地裏_a.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text027]
もう走れない……って弱音を吐きそうになった。

実際に無意識のうちに何度か口走ったかもしれない。

それでもＦＥＳは僕を一度として振り返ることなく、ただひたすら進み続けた。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//ＢＧ//渋谷ガード下（玉川通り）//夜
	CreateTexture360("back03", 100, 0, 0, "cg/bg/bg091_01_3_渋谷ガード下_a.jpg");
	DrawTransition("back03", 300, 0, 1000, 100, null, "cg/data/right2.png", true);
	CreateBG(100, 0, 0, 0, "cg/bg/bg091_01_3_渋谷ガード下_a.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text028]
気が付けば首都高が頭上を走る道に出ていた。

渋谷駅が目と鼻の先なのに、この辺はあまり人がいない。

ＦＥＳは迷うことなく、地下へとぽっかりと口を開けている階段を降り始める。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, NULL);

	CreateSE("SE10","SE_はいけい_玉川通ち下道_LOOP");
	MusicStart("SE10", 1000, 700, 0, 1000, null, true);

//ＢＧ//玉川通り地下道
	CreateTexture360("back03", 100, 0, 0, "cg/bg/bg092_01_3_玉川通り地下道_a.jpg");
	DrawTransition("back03", 500, 0, 1000, 100, null, "cg/data/right2.png", true);
	CreateBG(100, 0, 0, 0, "cg/bg/bg092_01_3_玉川通り地下道_a.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text029]
階段を降りきったところで、ようやく止まってくれた。

僕はゼイゼイと息をつきながら、ＦＥＳの手を離し階段にしゃがみ込む。

今日一日でいったいどれだけ走っただろう。

こんなに運動したのは生まれて初めてかもしれない……。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	Stand("buあやせ_ステージ衣装_自分抱きしめ","ero", 200, @+150);
	FadeStand("buあやせ_ステージ衣装_自分抱きしめ_ero", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text030]
//◆少し荒い吐息
//【あやせ】
<voice name="あやせ" class="あやせ" src="voice/ch04/08700200ay">
「はぁ……っ……はぁ……」

しばらく、薄暗くて陰鬱な雰囲気の地下道に、僕とＦＥＳの呼吸音だけが聞こえていた。

今僕たちが降りてきた出入り口の方を見上げてみたけど、追っ手が来る気配はない。

なんとか逃げ延びた……っていうことなのかな……。

それにしても――

{	DeleteStand("buあやせ_ステージ衣装_自分抱きしめ_ero", 500, true);}
こんな地下道があるなんて、初めて知った。

しかもけっこう駅から近いはずなのに、人がまったく通らない。

トンネル内を照らす蛍光灯のひとつが消えかけていて、せわしなく明滅を繰り返している。

かすかに漂う、生ゴミの腐ったような匂い。

渋谷のアングラな側面を象徴したような場所。

もしここで誰かに襲われたとして、大声を出しても外にまで届かないかもしれない。
ひとりじゃ来たくないところだ。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	Stand("buあやせ_ステージ衣装_自分抱きしめ","ero", 200, @+150);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text3601030]
僕はなおも荒い呼吸を繰り返しながら、ＦＥＳの横顔をそっと窺った。

{	FadeStand("buあやせ_ステージ衣装_自分抱きしめ_ero", 500, true);}
いまや渋谷の若者たちを虜にしている、インディーズ界のカリスマ歌姫。
予言者とまで言われる人……。

そんなＦＥＳが、僕みたいなキモオタ野郎と一緒にいる。なんだか変な感じだ。

彼女の額には汗がにじみ、頬を雫となって流れ落ちている。
それを手の甲で拭っていた。

インナーのキャミソールから露わになっている胸元は、呼吸をするたびに上下している。

アンニュイな雰囲気の中に垣間見える健康的なエロさ。

萌え……という表現とは微妙に違う。やっぱり言葉として表すならエロいっていうのが最適だろう。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	SetTrigger("１９");
	TypeBegin();//――――――――――――――――――――――――――――――

	EndTrigger();

//	Request("SE10", Lock);
//	PrintBG(100);
//	Request("SE10", UnLock);

}