//<continuation number="30">




chapter main
{

	$PreGameName = "boot_第四章";

	if($GameStart != 1)
	{
		$GameName = "ch04_083_インターミッション１３";
		$GameContiune = 1;
		Reset();
	}

		ch04_083_インターミッション１３();
}


function ch04_083_インターミッション１３()
{

	$構文名 = $SYSTEM_present_process;
	SystemInit();
	SystemSet();

	IntermissionIn();

	Delete("*");

//アイキャッチ
//■インターミッション１３
//ＢＧ//優愛自宅ＰＣ前
	CreateTextureEX("back04", 100, 0, 0, "cg/ev/ev037_01_3_INT13優愛自室でメール書く_a.jpg");
	Fade("back04", 0, 1000, null, true);

	IntermissionIn2();

	CreateSE("SE01","SE_日常_PC_はーどでぃすく_LOOP");
	MusicStart("SE01", 1000, 1000, 0, 1000, null, true);

//ＳＥ//キーボードを叩く音
	CreateSE("SE02","SE_日常_PC_キーたたく_中");
	MusicStart("SE02", 1000, 1000, 0, 1000, null, true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text001]
部屋に、キーボードを叩く音だけが響く。

楠優愛の細くしなやかな指が、踊るような動きを見せる。

彼女の視線はずっとモニタに固定されていた。
ブラインドタッチを平然とこなし、誤字もほとんどない。

書いているのはメールだった。

しかもかなり長い。
すでに優愛は３０分近くに渡って、文面を考えつつ推敲を重ねながら書き続けていた。

{	SetVolume("SE02", 0, 0, NULL);}
と、不意に彼女の指の動きが止まる。

{	CreateSE("SE03","SE_き械_でん化製ひん_ぱそコン_キーボーど_エンター");
	MusicStart("SE03", 0, 1000, 0, 1000, null, false);}
切なそうに小さくため息をつくと、
いきなりＢａｃｋ　ｓｐａｃｅキーを押しっぱなしにした。

モニタ上で点灯していたカーソルが高速で左側へとスクロールしていく。

これまでに書いた長い文章が、そのカーソルの動きに合わせてあっと言う間に消えていった。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	CreateSE("SE03","SE_じん体_動作_のぞく");
	MusicStart("SE03", 0, 500, 0, 1000, null, false);
	CreateBG(100, 500, 0, 0, "cg/bg/bg096_01_1_優愛自宅ＰＣ前_a.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text002]
やがてすべての文章を消してしまうと、優愛はベッドに置いてある『ゲロカエルん』のぬいぐるみを持ってきて、胸元でギュッと抱きしめる。

//※「最近になって」＝双子の妹が死んでから
それは優愛の最近になってできたクセだった。
そうやってなにかを抱きしめていないと、不安で耐えられなくなるのだ。

//【優愛】
<voice name="優愛" class="優愛" src="voice/ch04/08300010yu">
「はあぁ……」

{	SetVolume("SE01", 500, 300, NULL);
	CreateColor("back03", 100, 0, 0, 1280, 720, "Black");
	Fade("back03", 0, 0, null, false);
	Fade("back03", 500, 1000, null, true);
	Delete("back04");}
ぬいぐるみに顎を埋めて、再度のため息とともに優愛は小さくかぶりを振る。

//【優愛】
<voice name="優愛" class="優愛" src="voice/ch04/08300020yu">
「……わたしに勇気を……ください……」

誰にともなく小さくつぶやき、優愛は表情を引き締めた。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	SetVolume("SE01", 500, 1000, NULL);
	CreateSE("SE03","SE_じん体_動作_のぞく");
	MusicStart("SE03", 0, 500, 0, 1000, null, false);
	CreateTextureEX("back04", 100, 0, 0, "cg/ev/ev037_01_3_INT13優愛自室でメール書く_a.jpg");
	Fade("back04", 1000, 1000, null, true);
	Delete("back03");

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text3601002]
ぬいぐるみは膝の上に乗せたまま、キーボードに手を戻す。

{	CreateSE("SE02","SE_日常_PC_キーたたく_中");
	MusicStart("SE02", 500, 1000, 0, 1000, null, true);}
モニタ上に、彼女が流麗な仕草で打ち込む文字のひとつひとつが順に表示されていく。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBeginEX();//――――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
//以下、メール文章のため一時的にコメントアウト致します。
//※以下、優愛が書いているメールの内容

//こんにちは。楠です。
//もう一度だけ、西條くんとお話をしたいです。
//明日の１７時に、あなたの家に行きます。

//※以上、優愛が書いているメールの内容
//以上、メール文章のため一時的にコメントアウト致します。
//――――――――――――――――――――――――――――――――――――――

	SetVolume("SE02", 500, 0, NULL);

//おがみ：シナリオ修正　1220
//そこまで書いて優愛は手を止める。
//さっき消した文章に比べると、いたってシンプルで短い内容だった。
//優愛は少しためらってから、思い切って“送信”のアイコンをクリックする。

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text003]
さっき消した文章に比べると、いたってシンプルで短い、用件を伝えるだけの内容だ。

書き終えると、優愛は少しためらってから、思い切って“送信”のアイコンをクリックした。

{	CreateSE("SE03","SE_日常_PC_マウスくりっく");
	MusicStart("SE03", 0, 1000, 0, 1000, null, false);}

//【優愛】
<voice name="優愛" class="優愛" src="voice/ch04/08300030yu">
「あ……送っちゃった……」

送信を止める間もなく、メールはあっという間に送信済みとなった。

優愛は膝の上のゲロカエルんを強く抱きしめ直し、それから１時間以上モニタを見つめ続けた。

送信した相手からの返事は、期待していなかったとはいえまったく来る気配がなかった――。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);

	ClearAll(2000);
	
	Wait(2000);
//〜〜Ｆ・Ｏ

//■インターミッション１３終了

}