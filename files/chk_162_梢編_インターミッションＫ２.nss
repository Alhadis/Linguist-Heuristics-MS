//<continuation number="40">

chapter main
{

	$PreGameName = "boot_梢ルート";

	if($GameStart != 1)
	{
		$GameName = "chk_162_梢編_インターミッションＫ２";
		$GameContiune = 1;
		$梢ルート=true;
		$RouteON=true;
		Reset();
	}

	chk_162_梢編_インターミッションＫ２();
}


function chk_162_梢編_インターミッションＫ２()
{

	$構文名 = $SYSTEM_present_process;
	SystemInit();
	SystemSet();

//★梢編
//■インターミッションＫ２

//ＢＧ//学校校門・昼（モブなし）
//ＳＥ//ヒュンヒュンという機械的な音

//■アイキャッチIN
	IntermissionIn();

	DeleteAll();

//ＢＧ//学校校門・昼（モブなし）
	CreateTexture360("back01", 100, 0, 0, "cg/bg/bg016_02_0_学校校門_a.jpg");


//■アイキャッチOUT
	IntermissionIn2();

	CreateSE("SE01","SE_擬音_きかい_ひゅんひゅん2_LOOP");
	MusicStart("SE01", 2000, 700, 0, 1000, null, true);

	Wait(1000);

	Stand("st護_スーツ_通常","normal", 200, @+150);
	FadeStand("st護_スーツ_通常_normal", 500, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text001]
諏訪護は、私立翠明学園の校門に立って、校舎を眺めていた。

運転してきた車を門の前に横付けし、その車に背をもたせかけている。
スーツ姿なのに背にはリュックを背負っていて、その中からは奇妙な機械音が鳴り響いていた。

校内が騒然とした雰囲気になっているのを、この場所からも感じ取ることができて、たまらず諏訪の口から笑いがこみ上げた。

//【諏訪】
<voice name="諏訪" class="諏訪" src="voice/chn04/01400010su">
「今日こそ、西條拓巳のＣＯＤＥサンプルを手に入れなきゃッスからねえ」

誰に対して言うわけでもなく、ひとりごちる。

彼の周囲には、他に数人の男たちがいた。
諏訪とは違っていずれもラフな服装だが、共通しているのは全員がリュックを背負っていること。

彼らは明らかに不審者そのもので、校内へと目を向けたままたたずんでいる。互いに会話などを交わす気配はない。それは諏訪も同様だった。彼のつぶやきはあくまで独り言だ。

//【諏訪】
<voice name="諏訪" class="諏訪" src="voice/chn04/01400020su">
「そのためにこの学校を実験場にしたんスから。ま、もともとここはそのために希が作ったんスけどね」

私立翠明学園の設立者は、希テクノロジー及び天成神光会の息がかかった学校法人である。

故に、この学校に何人ものギガロマニアックスが在籍しているのは、偶然集まってきたのではなく、必然的に“集められた”のだった。彼女たちが気付かないままに。

それにしても――諏訪は小さくため息をついた。

これまでも様々な方法で西條拓巳を追い詰めてきた。

すべては西條のＣＯＤＥサンプル入手のために仕掛けてきたことだが、予想以上にダメ人間だったせいで、ギガロマニアックスとしてまるで覚醒しようとしない。

まさかこれほど面倒くさい男だったとは思いもしなかった。

だがそれも今日で終わらせる。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

	Stand("st護_スーツ_通常","cool", 200, @+150);
	FadeStand("st護_スーツ_通常_cool", 300, true);
	DeleteStand("st護_スーツ_通常_normal", 0, true);

	CreateSE("SE3601","SE_じん体_動作_手_冷蔵庫を開ける");
	CreateSE("SE3602","SE_じん体_動作_のぞく");


//――――――――――――――――――――――――――――――――――――――
<PRE box00>
[text002]
//【諏訪】
<voice name="諏訪" class="諏訪" src="voice/chn04/01400030su">
「もう回りくどいことはなしで、とっておきの祭りを提供してやるッスよ」

おそらく多くの無関係の人間が死ぬだろう。
だが何人死のうと構わない。
諏訪が信奉する天成神光会教祖からは、そう言われていた。

いずれにせよ今日の午後には、サードメルトで渋谷は崩壊する。
だからこの学校の生徒が何人死のうと、“地震で犠牲になった”ということにされ、殺し合いがあったという事実は闇に葬られる。

{	DeleteStand("st護_スーツ_通常_cool", 500, true);}
//【諏訪】
<voice name="諏訪" class="諏訪" src="voice/chn04/01400040su">
「さてと、じゃあ行きまスかね」

{	MusicStart("SE3601",0,1000,0,1000,null,false);}
諏訪は車のトランクを開けると、そこにしまってあったダーススパイダーのヘルメットを取り出した。

{	MusicStart("SE3602",0,1000,0,1000,null,false);}
おもむろにそれをかぶる。
スーツ姿で背にリュック、頭にダーススパイダーのヘルメットという出で立ちは、近寄りがたい異様さだった。

しかし彼自身は気にすることなく、悠然とした足取りで校内へと足を踏み入れた。

その諏訪の行動を合図にして、リュックを背負った男たちも無言で後に続いた。

</PRE>
	SetText($SYSTEM_present_preprocess,$SYSTEM_present_text);
	TypeBegin();//――――――――――――――――――――――――――――――

//〜〜Ｆ・Ｏ
	SetVolume("SE01", 2000, 0, null);

//■インターミッションＫ２終了

//アイキャッチ
//※拓巳視点に戻る

	ClearAll(2000);
	Wait(1000);
}

