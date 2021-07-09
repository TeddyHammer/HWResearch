/* XDASEA_Xm8R_SPsX */ 
//
//	DemoViewer�̃V�[�P���X
//


gDemoViewerLangage <- 0; // �f�t�H���g�͓��{�� 

function DemoViewerStart()
{
	RunScriptFunction( SQ_THREAD_GAME, "startActionCommandViewerThread" );
	SetPatternThreadId( SQ_THREAD_GAME, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );
}

function SetUpLangage( lang )
{
	ScaleformSetLanguage( lang ); // 0...Japanese 1...English
	while( false == ScaleformLanguageReady() )
	{
		suspend();
	}
}

function startActionCommandViewerThread()
{
	//if( ihp.GetGameKeyboard().IsPush( 'E' ) )
	if( DebugPadIsLevel(::PAD_LB) )
		gDemoViewerLangage = 1; // English 

	// �G�t�F�N�g�S���[�h 
	LoadGfxAll();
	suspend();
	
	// �A�C�e�����[�h 
	JsonLoadItemAll();
	suspend();
	
	// �L�����N�^�|���f���ƃ��[�V������ǂݍ��� 
	LoadCharacterAll();
	suspend();
	
	// �v���C���[�S���[�h 
	JsonLoadPlayerAll();		// �v���C���[�̃p�����[�^�����[�h 
	// ��JsonDemo���܂� 
	suspend();

	//LoadGimmickAll(); // ���f���ł͖��g�p. 
	//suspend();


	// HUD���[�h 
	ScaleformBresLoadRequest( "UI_common.bres", true );
	while( false == ScaleformBresIsLoadComplete() )
	{
		suspend();
	}
	SetUpLangage( gDemoViewerLangage );
	ScaleformLoadHUDJson();


	LoadScaleformHUD();

	// ActionFuncs [�� : JsonLoadPlayerAll()�̌�Ŏ��s]
	LoadActorFunction();
	suspend();
	
	// HUD�쐬 ( createDemoCharacter�̑O ) 
	CreateScaleformHUD();

	// BGM�Đ�
	//local bgm_no = game_seed.getStageSeed().getStageBgm();
	//PlayBgmForce( bgm_no, 1.0 );

	// Body��Talent�̐��� 
	CreateDemoCharacter(); // DemoCharacterManager���N���G�C�g 

	InitMoviePlayerCache();

	{
		// demo 
		local scene = SceneManagerAddScene("go_demo",SCENE_GROUP_HUD);
		//scene.addMoviePlayer("go_demo");
		SceneManagerAddCurrentScene("go_demo");
	}

	SetHudPlayStatus(true);

//	local windowSample_ = WindowBase( 64, 608, 256, 64 );
//	windowSample_.setWindowText( "Title Press BACK to Abort" );
	while(true)
	{
		suspend();

//		windowSample_.exec();
//		windowSample_.draw();
		grahicsMouse();

		// ����؂�ւ� 
		if( DebugPadIsTrigger(::PAD_LB) )
		{
			gDemoViewerLangage++;
			if( gDemoViewerLangage >1 ) gDemoViewerLangage=0;
			SetUpLangage( gDemoViewerLangage );
		}
		// �����ă��j���[�ɖ߂� 
		if(DebugPadIsTrigger(::PAD_BACK) || ihp.GetGameKeyboard().IsPush( 'X' ) )
		{
			break;
		}
	}

	SetHudPlayStatus(false);

	// Body��Talent�̔j��
	DestroyDemoCharacter();
	suspend();

	// �G�t�F�N�g�̔j�� 
	StageEffectDestroy();
	for (local i=0; i<8; ++i) { suspend(); }
	GfxEraseAll();
	for (local i=0; i<8; ++i) { suspend(); }
	GfxBresDestroyRequest(); // ���\�[�X���� 
	while ( false == GfxBresIsDestroyComplete() )
	{
		suspend();
	}
	
	// �L�����̔j�� 
	//CharaModelDestroy();
	DestroyCharacterAll();
	DestroyGimmickAll();
	
	ScaleformBresDestroyRequest();

	// HUD�폜 
	DestroyScaleformHUD();
	ReleaseScaleformHUD();

	debugMenuWakeup();
}
