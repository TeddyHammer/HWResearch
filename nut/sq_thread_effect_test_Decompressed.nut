/* XDASEA_Xm8R_SPsX */ 
//
//	EffectViewer�̃V�[�P���X
//

function initEffectViewer() {
	RunScriptFunction( SQ_THREAD_GAME, "startEffectViwerThread" );
	SetPatternThreadId( SQ_THREAD_GAME, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );		// �f�o�b�O���j���[����� 
}

// �O���[�o���ϐ� 
gMotionEnable <- false;

function startEffectViwerThread() {

	//ScreenFadeSet( 0xffffffff );
	//suspend();
	
	// �G�t�F�N�g�S���[�h 
	LoadGfxAll();
	suspend();

	JsonLoadPlayerAll();		// �v���C�� for BoneInfos

	// �A�C�e�����[�h 
	JsonLoadItemAll();
	suspend();

	if( !DebugPadIsLevel(::PAD_RB) ) // RB��������Ă��Ȃ� 
	{
		gMotionEnable = true;
	}

	if( gMotionEnable )
	{
		LoadCharacterAll();
		suspend();
	}
			
	// �G�t�F�N�g�e�X�g(Body��talent)�̐��� 
	CreateEffectTest( gMotionEnable );
						
	local windowSample_ = WindowBase( 64, 608, 256, 64 );
	windowSample_.setWindowText( "Title Press X to Abort" );
	while( true ) {
		suspend();
		
		windowSample_.exec();
		windowSample_.draw();
		grahicsMouse();
		
		if (DebugPadIsTrigger(::PAD_X) || ihp.GetGameKeyboard().IsPush( 'X' ) )
		{
			break;
		}
	}

	DestroyEffectTest(); // �G�t�F�N�g�e�X�g(Body��talent)�̔j�� 

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
	
	if( gMotionEnable )
	{
		// �L�����̔j�� 
		//CharaModelDestroy();
		//CharaBresDestroyRequest();
		//while ( false == CharaBresIsDestroyComplete() )
		//{
		//	suspend();
		//}
		DestroyCharacterAll();
		suspend();
	}

	debugMenuWakeup();
}
