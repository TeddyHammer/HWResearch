/* XDASEA_Xm8R_SPsX */ 
//
//	ActionCommandViewer�̃V�[�P���X
//

function ActionCommandViewerStart()
{
	RunScriptFunction( SQ_THREAD_GAME, "startActionCommandViewerThread" );
	SetPatternThreadId( SQ_THREAD_GAME, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );
}

function startActionCommandViewerThread()
{
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
	suspend();
	
	// BOT�̃��[�h 
	JsonLoadBotAll();			// BOT�ݒ�
	suspend();
		
	// ActionFuncs [�� : JsonLoadPlayerAll()�̌�Ŏ��s]
	LoadActorFunction();
	suspend();
	
	// Body��Talent�̐��� 
	// ������3��ł͂Ȃ��A���̒���3��body����� 
	CreateActionCommandViewer(0, 0);
	CreateActionCommandViewer(1, 0);
	CreateActionCommandViewer(2, 0);

//	local windowSample_ = WindowBase( 64, 608, 256, 64 );
//	windowSample_.setWindowText( "Title Press BACK to Abort" );
	while(true)
	{
		suspend();

//		windowSample_.exec();
//		windowSample_.draw();
		grahicsMouse();

		if(DebugPadIsTrigger(::PAD_BACK) || ihp.GetGameKeyboard().IsPush( 'X' ) )
		{
			break;
		}
	}

	// Body��Talent�̔j��
	DestroyActionCommandViewer();
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
	DestroyCharacterAll();

	debugMenuWakeup();
}
