//<continuation number="170">

chapter main
{

	$PreGameName = "boot_第一章";

	if($GameStart != 1)
	{
		$GameName = "ch01_009r_★梨深編_インターミッション０２Ａ";
		$GameContiune = 1;
		$梨深ルート=true;
		$RouteON=true;
		Reset();
	}

	ch01_009r_★梨深編_インターミッション０２Ａ();
}


function ch01_009r_★梨深編_インターミッション０２Ａ()
{

	$構文名 = $SYSTEM_present_process;
	SystemInit();
	SystemSet();

//★梨深編
//２周目梨深編追加インターミッション０２Ａ

//梨深編突入フラグが立っている場合、“ch01_009_インターミッション０２”を、以下のものに差し替え

//アイキャッチ
//■インターミッション０２Ａ

//■アイキャッチIN
	IntermissionIn();

	DeleteAll();
	Request("レンズ１", UnLock);
	Delete("レンズ１");
	Request("レンズプロセス１", UnLock);
	Delete("レンズプロセス１");

//ＢＧ//ナースステーション
	CreateTexture360("back01", 100, 0, 0, "cg/bg/bg106_01_2_ナースステーション_a.jpg");
	Fade("back01", 0, 1000, null, true);

	CreateSE("SE02","SE_はいけい_びょういん_LOOP");
	MusicStart("SE02", 2000, 600, 0, 1000, null, true);

	IntermissionIn2();

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text001]
代々木にある総合病院。その病棟は今、一斉回診の時間であり、ほぼすべての看護師が出払っていた。

//看護師＝葉月
ナースステーションには唯一、若い女性の看護師が１人いるだけだ。

彼女は無表情のままノートパソコンに向かっている。しかも、昼休みというわけでもないのに、ケータイを耳に当てて誰かと話していた。
病院ではケータイは使用禁止にもかかわらず、堂々と。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//▼べー：ＢＧ：要差し替え
//ＢＧ//ログプリント改訂版（ナイトハルトと将軍の発言時間が、時間通りになっている。どちらも９月２８日午前３時過ぎの発言）
	CreateTexture360("ログプリント１", 200, 0, 0, "cg/bg/bg042_02_2_chnログプリントb_a.jpg");
	Fade("ログプリント１", 0, 0, null, true);
	Fade("ログプリント１", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text3601001]
看護師の感情のない瞳には、ＰＣモニタに映し出された、とあるチャットのログが映っている。

//◆小声
//【葉月】
<voice name="葉月" class="葉月" src="voice/chn01/00300010hd">
「……ええ、そう、現れたのよ。“ニシジョウタクミ”が」

//ＶＦ//電話の声
//【諏訪】
<voice name="諏訪" class="諏訪" src="voice/chn01/00300020su">
「間違いないッスか？」

//◆小声
//【葉月】
<voice name="葉月" class="葉月" src="voice/chn01/00300030hd">
「たぶん」

電話の相手は男。仕事の用件でないのは、互いの口調から明らかだ。

//◆小声
//【葉月】
<voice name="葉月" class="葉月" src="voice/chn01/00300040hd">
「名前は、ハンドルネームを使っているけれど。あの公式のことを知っていたもの」

//◆小声
//【葉月】
<voice name="葉月" class="葉月" src="voice/chn01/00300050hd">
「ログをコピーして送るわ」

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//ＢＧ//ナースステーション
	FadeDelete("ログプリント１", 1000, true);
	CreateTextureEX("ログプリント２", 200, 0, 0, "cg/bg/bg042_03_2_chnログプリントc_a.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text002]
看護師は機械的に、ＰＣに繋げられた外付けマウスを動かし、画面のログをコピーしようとする。
だがふと手を止め、眉をひそめた。

//◆小声
//【葉月】
<voice name="葉月" class="葉月" src="voice/chn01/00300060hd">
「あ……ら……？」

//ＶＦ//電話の声
//【諏訪】
<voice name="諏訪" class="諏訪" src="voice/chn01/00300070su">
「どうしたんス？」

看護師は電話の向こうの問いかけには答えず、目を細めて、モニタに顔を近づけた。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//▼べー：ＢＧ：要差し替え
//ＢＧ//ログプリント（ナイトハルトと将軍がかみ合っていないものに変化）
	Fade("ログプリント２", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text3602002]
液晶モニタには、相変わらずチャットのログが表示されている。
だが、ほんの数秒前とは、なにかが違っていた。

変化などするわけはない。これはログであり、リアルタイムのチャットではないのだから。

それなのに――
少し前まではどこもおかしなところはなかったのに――

今は、はっきりと感じる違和感。

//◆小声
//【葉月】
<voice name="葉月" class="葉月" src="voice/chn01/00300080hd">
「……ログの書き込み時間が……変わってる」

//ＶＦ//電話の声
//【諏訪】
<voice name="諏訪" class="諏訪" src="voice/chn01/00300090su">
「……どういうことだ？」

看護師の言葉から異常を敏感に察知したのか、電話の向こうから聞こえる声も、押し殺したものになった。

//◆小声
//【葉月】
<voice name="葉月" class="葉月" src="voice/chn01/00300100hd">
「ついさっきまでは、不自然なところなんてなかったのに。これ、いったいどうなって……」

//ＶＦ//電話の声
//【諏訪】
<voice name="諏訪" class="諏訪" src="voice/chn01/00300110su">
「落ち着け。相手は化け物級のギガロマニアックスだ」

//◆小声
//【葉月】
<voice name="葉月" class="葉月" src="voice/chn01/00300120hd">
「……細工されたのかしら？」

//ＶＦ//電話の声
//【諏訪】
<voice name="諏訪" class="諏訪" src="voice/chn01/00300130su">
「自分の実在を知られたくないためだろ」

//◆小声
//【葉月】
<voice name="葉月" class="葉月" src="voice/chn01/00300140hd">
「書き込み時間が変化したことで、自作自演のように見えてくるわ」

//ＶＦ//電話の声
//【諏訪】
<voice name="諏訪" class="諏訪" src="voice/chn01/00300150su">
「そう見えるなら、それが狙いってことだ。現実を、妄想にした」

//ＶＦ//電話の声
//【諏訪】
<voice name="諏訪" class="諏訪" src="voice/chn01/00300160su">
「気を付けろ、志乃。見られているぞ。……ヤツに」

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//▼べー：ＢＧ：要差し替え
//ＢＧ//ナースステーション
	FadeDelete("ログプリント２", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text3601002]
志乃、と呼ばれた看護師は、ふと、うなじのあたりにこそばゆい感覚を覚えた。

首筋を手で覆い隠すようにしつつ、視線を背後へと向ける。
けれど、ナースステーションにはやはり彼女以外に誰の姿もなく――

//◆小声
//【葉月】
<voice name="葉月" class="葉月" src="voice/chn01/00300170hd">
「……神光の救いあれ」

恐怖を打ち払おうとでもするかのように、彼女は自らの信仰に対して祈りの言葉をささやいていた。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――


	SetVolume360("SE02", 1000, 0, null);


//アイキャッチ
//※拓巳視点に戻る

//この後、“ch01_10_９月３０日火”へ
	ClearAll(1000);
	Wait(2000);
}

