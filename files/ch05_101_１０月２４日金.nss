//<continuation number="150">




chapter main
{

	$PreGameName = "boot_第五章";

	if($GameStart != 1)
	{
		$GameName = "ch05_101_１０月２４日金";
		$GameContiune = 1;
		$GameDebugSelect = 1;
		Reset();
	}

		ch05_101_１０月２４日金();
}


function ch05_101_１０月２４日金()
{

	$構文名 = $SYSTEM_present_process;
	SystemInit();
	SystemSet();

//※拓巳視点に戻る
//１０月２４日（金）//日付は表示しない



if($GameDebugSelect == 1)
{
	SetChoice03("５章梨深Ｙシャツ","５章梨深私服","どちらでもない");
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
			$５章梨深Ｙシャツ = true;
		}
		case @選択肢２:
		{
			ChoiceB03();
			$５章梨深私服 = true;
		}
		case @選択肢３:
		{
			ChoiceC03();
		}
	}
	$GameDebugSelect = 0;
}



	CreateTextureEX("背景１", 100, 0, 0, "cg/bg/bg118_03_1_掲示板速報_a.jpg");
	Fade("背景１", 1000, 1000, null, true);

	Wait(3000);

/*
//以下、ＢＧイメージのためコメントアウト致します
//イメージＢＧ//ＰＣ画面（＠ちゃんねる）
//以下、ＰＣ画面内＠ちゃんねる掲示板のテキスト

乳ジェネ速報だクマ(ll´（エ）｀ll)

乳ジェネその１＠集団ダイブ　ﾉﾉﾉ---(ollllll´▽｀)oﾉ
乳ジェネその２＠妊娠男　＼(||｀□´||;;＼)
乳ジェネその３＠張り付け　†l†l(＠□＠)l†l†
乳ジェネその４＠ヴァンパイ屋ξ--（;￣ξ￣;)---ξ
乳ジェネその５＠ノータリン　ヘ（´ρ｀）ノ~
乳ジェネその？＠……to be continued!!!(゜ロ)ギョェ
//以上、ＰＣ画面内＠ちゃんねる掲示板のテキスト
//※わざと「乳ジェネ」です
//以上、ＢＧイメージのためコメントアウト致しました
*/


//イメージＢＧ//ＫＵＲＥＮＡＩ会館ビル屋上から見た光景
//※この景色の中に「ディソード」がなんとなく見えていてほしいです
	CreateTextureEX("back05", 100, 0, -72, "cg/bg/bg150_01_0_屋上のディソード_a.jpg");
	Move("back05", 1500, 0, 0, null, false);
	Fade("back05", 1500, 1000, null, true);
	Delete("背景１");

//ＳＥ//カラスの鳴き声
	CreateSE("SE01","SE_自然_動物_カラス_鳴き声_LOOP");
	MusicStart("SE01", 500, 1000, 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text001]
秋の深まりとともに、空気は徐々に冷たくなってきている。
ついこの間まで半袖で過ごせたのがウソみたいだ。

空の色もどこかくすんでいる。色彩が薄れてきているような。
代わりに公園なんかに行くと紅葉が鮮やかだけど。
空の精彩を木々が奪っていってるのかもしれない。

そんな空を見上げながら、僕は歯ブラシを口に突っ込んだ。

僕が住んでいるこのベースのいいところは、屋上っていう開放感のあるスペースを、誰の目も気にすることなく自由に使えることだ。

流し台がコンテナハウスの外にあるから、雨のときは不便だけど、天気のいい日にはこうやって外に出て歯を磨くことにしてる。

眠い目をこすりつつ歯ブラシを動かし、僕は昨日のことを思い出していた。

あの後も梨深は夜遅くまで僕の部屋にいてくれた。
僕が落ち着くまで、だいたい１時間くらいの間、ずっと手を握っててもくれた。

まあ、結局それ以上はなにもないまま帰っていったけど。

年頃の男女が、何時間も狭い部屋にふたりきりでいたのに、色っぽい会話のひとつもなかった。

……僕にそんな会話をできるスキルがあれば、とっくにリア充だよ。

っていうか、下心を抱いている自分に反吐が出る。

梨深は、僕のことを純粋に友達として助けようとしてくれてるのに。

でも、梨深に“一緒にいてあげる”と言ってもらえたことは、僕にはかなり救いになった。

心の支えがあるのとないのとじゃ、全然違う。

『ノータリン』事件で高科先生が殺されるっていう衝撃的なことがあったにもかかわらず、一夜明けた今の僕は比較的安定した精神状態を保っている。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginEX();//――――――――――――――――――――――――――――――

//フラグ判定
//フラグ【５章梨深Ｙシャツ】ＯＮの場合
//分岐１６へ

//フラグ【５章梨深私服】ＯＮの場合
//分岐１７へ

//フラグ【５章梨深Ｙシャツ】【５章梨深私服】どちらもＯＦＦだった場合
//分岐１８へ


//=============================================================================//
//フラグ判定
//フラグ【５章梨深Ｙシャツ】ＯＮの場合
if($５章梨深Ｙシャツ == true)
{
//分岐１６

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text002]
そう言えば、あのエロ梨深はいったいなんだったんだろう。

幻覚と呼ぶにはあまりにリアルすぎた。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginDX2(200,0);//――――――――――――――――――――――――――――――

//ＣＧ//下着にＹシャツだけ着た姿でソファに座りこっちを見ている梨深（回想）

	CreateColor("back14", 500, 0, 0, 1280, 720, "White");
	Fade("back14", 0, 0, null, false);
	Fade("back14", 300, 1000, null, true);
	CreateColor("back15", 300, 0, 0, 1280, 720, "Black");
	Fade("back15", 0, 300, null, false);
	CreateTextureEX("back16", 100, center, Middle, "cg/ev/ev044_01_2_梨深下着Yシャツ_a.jpg");
	Request("back16", Smoothing);
	Zoom("back16", 0, 500, 500, null, false);
	Fade("back16", 0, 1000, null, false);
	FadeDelete("back14", 200, true);


//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text003]
何度思い返してみてもエロいよね……。

別にまじまじと観察したわけじゃないけど……パンツのシワとかまで、ちゃんと見えたんだ。

自称おパンツマイスター（フィギュア限定）の僕としては、あのシワはかなりリアルだった。妄想じゃ再現できないレベルだね、ふひひ。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginDX2(200,0);//――――――――――――――――――――――――――――――

//イメージＢＧ//青空
	CreateColor("back14", 500, 0, 0, 1280, 720, "White");
	Fade("back14", 0, 0, null, false);
	Fade("back14", 300, 1000, null, true);
	Delete("back15");
	Delete("back16");
	FadeDelete("back14", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text3601003]
って、そんなアホなことはどうでもいいんだ。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginDX(200,0);//――――――――――――――――――――――――――――――

//合流６へ
//=============================================================================//

}
else if($５章梨深私服 == true)
{

//=============================================================================//
//分岐１７

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text004]
そう言えば、あの衣装チェンジのような現象はいったいなんだったんだろう。

幻覚と呼ぶにはあまりにリアルすぎた。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginDX2(200,0);//――――――――――――――――――――――――――――――

//ＣＧ//私服姿でソファに座りこっちを見ている梨深（回想）

	CreateColor("back14", 500, 0, 0, 1280, 720, "White");
	Fade("back14", 0, 0, null, false);
	Fade("back14", 300, 1000, null, true);
	CreateColor("back15", 300, 0, 0, 1280, 720, "Black");
	Fade("back15", 0, 300, null, false);
	CreateTextureEX("back16", 100, center, Middle, "cg/ev/ev044_02_2_梨深下着Yシャツ_a.jpg");
	Fade("back16", 0, 1000, null, false);
	FadeDelete("back14", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text005]
梨深が目にも止まらぬ素早さで着替えたって考えるのは、現実的なようで非現実的だ。彼女がそんな意味不明なことをする理由がない。

となるとやっぱり、あやせが分裂したときみたいに、僕の妄想っていうことになる。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginDX2(200,0);//――――――――――――――――――――――――――――――

	CreateColor("back14", 500, 0, 0, 1280, 720, "White");
	Fade("back14", 0, 0, null, false);
	Fade("back14", 300, 1000, null, true);
	Delete("back15");
	Delete("back16");
	FadeDelete("back14", 500, true);

//イメージＢＧ//青空
//合流６へ
//=============================================================================//


}
else
{


//=============================================================================//
//分岐１８

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text006]
昨日調べた特許や裁判記録のことで頭がいっぱい、っていうせいもあるかもしれない。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginDX(200,0);//――――――――――――――――――――――――――――――

//合流６へ

}
//=============================================================================//











//合流６

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text007]
――妄想を現実に投影する力。

そんなもの、ホントにあるのかな……。

それを持ってるから、僕は『将軍』に狙われてるのかな。

もし、僕がその力を持ってるなら――

幼い頃の記憶がよみがえる。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginDX2(200,0);//――――――――――――――――――――――――――――――

	SetVolume("SE01", 1000, 300, NULL);

//画面エフェクト//回想
//ＣＧ//小学４年生の拓巳が実家のリビングで絵を描いている
	CreateColor("back03", 200, 0, 0, 1280, 720, "Black");
	Fade("back03", 0, 0, null, false);
	
	CreateTextureEX("back04", 100, 0, 0, "cg/ev/ev057_01_1_拓巳子供時代_a.jpg");

	Fade("back03", 500, 300, null, false);
	Fade("back04", 500, 1000, null, true);

	Delete("back05");

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text008]
あの、遠足に行けなかった日。
僕だけが、事故に遭わなかった日。

バスが横転して、クラスメイトの子たちがケガをした。

担任の斎藤先生は、死んだ。

それらの映像が、僕の頭の中に鮮明に浮かんでいた。

はっきりと、見えていた。
あれは――

ホントに、ただの“予知”だったんだろうか。

もしも――

あれが、予知なんかじゃなくて。
僕の妄想だったとしたら。

その妄想が、現実に投影されたんだとしたら。

身体が震え出しそうになって、それを抑えるように自分の腕を抱きしめた。

//【拓巳】
<voice name="拓巳" class="拓巳" src="voice/ch05/10100010ta">
「だとしたら僕は……」

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginDX2(200,0);//――――――――――――――――――――――――――――――

//ＢＧ//黒
	CreateColor("back05", 110, 0, 0, 1280, 720, "Black");
	Fade("back05", 0, 0, null, false);
	Fade("back05", 500, 1000, null, true);

	Delete("back03");
	Delete("back04");
	
	SetVolume("SE01", 500, 1000, NULL);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text009]
人殺しだ……

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//３秒ほどウエイト

	Wait(2500);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text010]
//【梨深】
<voice name="梨深" class="梨深" src="voice/ch05/10100020ri">
「おっはよー！」

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//ＢＧ//拓巳の部屋・外観//昼

	CreateBG(150, 200, 0, 0, "cg/bg/bg006_01_1_コンテナ外観_a.jpg");

	Wait(500);

	Stand("st梨深_制服_通常","smile", 200, @100);
	FadeStand("st梨深_制服_通常_smile", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text011]
梨深が、そこにいた。

こんな朝っぱらから元気よく、満面の笑顔を見せてくれる。
その笑みを見たら、身体の震えが止まった。

不思議だな……。

僕は三次元女子が苦手だったはずなのに、梨深と一緒にいるときは、なぜか安心できる。

//【梨深】
<voice name="梨深" class="梨深" src="voice/ch05/10100030ri">
「迎えに来たよ」

//【拓巳】
<voice name="拓巳" class="拓巳" src="voice/ch05/10100040ta">
「…………」

{	Stand("st梨深_制服_通常","normal", 200, @100);
	FadeStand("st梨深_制服_通常_normal", 300, true);
	DeleteStand("st梨深_制服_通常_smile", 0, true);}
//【梨深】
<voice name="梨深" class="梨深" src="voice/ch05/10100050ri">
「なんでポッカーンってしてるの？」

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginDX(200,0);//――――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text012]
あ、そっか。

最低登校シフト表によれば今日も学校に行かなくちゃいけないんだ。
そのことを昨日梨深に話したら――

//【梨深】
<voice name="梨深" class="梨深" src="voice/ch05/10100060ri">
「迎えに来てあげるって言ったよね」

そう。今の僕は『将軍』のせいで、ひとりで外を出歩くことすら恐ろしい。
そんな僕に梨深は“一緒にいてあげる”って言ってくれた。

その約束を、ちゃんと守ってくれてるんだ。

{	Stand("st梨深_制服_通常","rage", 200, @100);
	FadeStand("st梨深_制服_通常_rage", 300, true);
	DeleteStand("st梨深_制服_通常_normal", 0, true);}
//【梨深】
<voice name="梨深" class="梨深" src="voice/ch05/10100070ri">
「まさかホントに来るとは思わなかったとか？」

{	Stand("st梨深_制服_通常ビシッ！","normal", 200, @100);
	DeleteStand("st梨深_制服_通常_rage", 500, false);
	FadeStand("st梨深_制服_通常ビシッ！_normal", 500, true);}
//【梨深】
<voice name="梨深" class="梨深" src="voice/ch05/10100080ri">
「ビシィッ！」

{	Stand("st梨深_制服_通常ビシッ！","happy", 200, @100);
	FadeStand("st梨深_制服_通常ビシッ！_happy", 300, true);
	DeleteStand("st梨深_制服_通常ビシッ！_normal", 0, true);}
//【梨深】
<voice name="梨深" class="梨深" src="voice/ch05/10100090ri">
「ふっふっふー、残念でした。こう見えてもあたし、尽くすタイプなんだー」

そう言って、梨深はいたずらげにウインクした。

う、うーむ……。

これなんてエロゲ？

{	Stand("st梨深_制服_正面","smile", 200, @100);
	DeleteStand("st梨深_制服_通常ビシッ！_happy", 500, false);
	FadeStand("st梨深_制服_正面_smile", 500, true);}
クラスメイトの女の子が、家まで迎えに来てくれるなんて。
現実では滅多に体験できないシチュエーションだよ。

『部屋の中にまで押しかけてきて、寝ているのを無理矢理起こそうとする』

っていうパターンなら、なお最高だったけど。

そんなバカなことを妄想している僕の横で、梨深はふと空を仰ぎ見る。

また、遠い目をする――

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginEX();//――――――――――――――――――――――――――――――

	Stand("st梨深_制服_正面","normal", 200, @100);
	FadeStand("st梨深_制服_正面_normal", 300, true);
	DeleteStand("st梨深_制服_正面_smile", 0, true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text013]
//◆アンニュイな感じで
//【梨深】
<voice name="梨深" class="梨深" src="voice/ch05/10100100ri">
「冬の空が、色褪せたように見えるのは――」

//◆アンニュイな感じで
//【梨深】
<voice name="梨深" class="梨深" src="voice/ch05/10100110ri">
「どうしてだと思う？」

太陽光の色には七色ある。虹でおなじみの色だ。

その七色の色が人の目に届くためには、地球の大気の中を通ってこなくちゃいけない。

そのときに、散乱っていう現象が起きる。

簡単に言うと、空気の分子とぶつかって光がでたらめな方向へと屈折しちゃうんだ。

でたらめな方向へ屈折するっていうことは、
それだけあちこちを飛び回っているっていうこと。
それだけ人の目に入りやすいっていうこと。

中でも一番散乱しやすいのが、紫や青なんだ。

だから、空は青い。

僕は、頭がいい。

でも梨深の答えは、そんなロマンの欠片もない科学的根拠とはかけ離れたものだった。

//◆アンニュイな感じで
//【梨深】
<voice name="梨深" class="梨深" src="voice/ch05/10100120ri">
「きっと、寒くて、みんなが下を向いちゃうから」

//◆アンニュイな感じで
//【梨深】
<voice name="梨深" class="梨深" src="voice/ch05/10100130ri">
「青を望む人の数が減っちゃうの」

前にも、梨深が似たようなことを言っているのを
聞いた気がするけど……それって、いつの話だったっけ。

{	Stand("st梨深_制服_通常","happy", 200, @100);
	DeleteStand("st梨深_制服_正面_normal", 500, false);
	FadeStand("st梨深_制服_通常_happy", 500, true);}
//◆元気いっぱいで
//【梨深】
<voice name="梨深" class="梨深" src="voice/ch05/10100140ri">
「だから、寒くても上を向いて歩こー！」

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	PrintBG(100);

//ＢＧ//円山町の町並み

	CreateColor("back03", 500, 0, 0, 1280, 720, "Black");
	Fade("back03", 0, 0, null, false);
	Fade("back03", 500, 1000, null, true);

	CreateBG(100, 0, 0, 0, "cg/bg/bg024_01_0_円山町_a.jpg");
	DrawTransition("back*", 1000, 0, 1000, 100, null, "cg/data/right3.png", true);

	Stand("bu梨深_制服_通常","smile", 200, @150);
	FadeStand("bu梨深_制服_通常_smile", 500, true);

	CreateSE("SE01","SE_日常_まる山町");
	MusicStart("SE01", 500, 1000, 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text014]
急いで着替えて、梨深と一緒にＫＵＲＥＮＡＩ会館ビルを出る。

{	CreateVOICE("梨深鼻歌","ch05/10100150ri");
	SoundPlay("梨深鼻歌",0,500,false);}
一緒に登校……かぁ。
どう考えてもリア充。

『将軍』や優愛は怖いしウザいし“死ね。氏ねじゃなくて死ね”って感じだけど、おかげでこうしてリア充体験ができる。

ちょっとは感謝してもいいのかも……

と、無理矢理思おうとしたけど――

高科先生の顔が脳裏によみがえり、浮かれた気分はすぐに吹き飛んでしまう。

先生が殺されたのは、僕のせいかもしれない。

『将軍』が、僕への見せしめ、あるいは挑発として、僕に繋がりのある先生を殺した……。

恐怖と不安に襲われる。

{	DeleteStand("bu梨深_制服_通常_smile", 500, true);}
僕は少しずつ梨深の歩調から遅れ始めた。

斜め後ろから、梨深の後頭部をチラリと見る。

梨深はどんな顔をしてるのかな……？

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//ＳＥ化の為、コメントアウト。
//◆鼻歌。可能なら“ファンタズム”の歌でお願いします
//【梨深】
//<voice name="梨深" class="梨深" src="voice/ch05/10100150ri">
//「〜♪」


	CreateVOICE("梨深鼻歌","ch05/10100150ri");
	SoundPlay("梨深鼻歌",0,1000,false);

	Wait(1500);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text015]
鼻歌を奏でていた。

これって昨日ＣＤを貸してあげた『ファンタズム』の曲だ。

梨深の足取りは軽そうに見える。

会話すらしてないのに、どうしてこんなに楽しそうなんだろう……。

そんな彼女の姿を見て、僕の不安は少しだけやわらいだ。

……でも正直な話、なんで梨深はこんなにも僕に優しくしてくれるんだろう。

その理由は、僕が覚えていない梨深との
空白の記憶の中にあるのかな……。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	SetVolume("SE01", 1000, 0, NULL);

	ClearAll(1000);

	Wait(500);

//〜〜Ｆ・Ｏ

}