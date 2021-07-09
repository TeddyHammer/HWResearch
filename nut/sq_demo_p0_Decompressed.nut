/* XDASEA_Xm8R_SPsX */ 
//
//	P0 �̃^���̃V�[�P���X
//
//	HitViewer���������̂��g���܂� 
//
function initDemoP0Thread() {
	RunScriptFunction( SQ_THREAD_GAME, "startDemoP0Thread" );
	SetPatternThreadId( SQ_THREAD_GAME, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );		// �f�o�b�O���j���[����� 
}

function startDemoP0Thread() {
	// �Z���N�^�[���풓������ 
	IncludeScriptFile( "nut\\sq_thread_ini_selector.nut" );
	RunScriptFunction( SQ_THREAD_INI_SELECTOR, "iniSelectorThread" );
	EnableForcusThreadId( SQ_THREAD_INI_SELECTOR, true );

	runDemo(0,SQ_THREAD_GAME,true);
}

function initHitViewer() {
	RunScriptFunction( SQ_THREAD_GAME, "startStageViwerThread" );
	SetPatternThreadId( SQ_THREAD_GAME, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );		// �f�o�b�O���j���[����� 
}

function startStageViwerThread()
{
	// �Z���N�^�[���풓������ 
	IncludeScriptFile( "nut\\sq_thread_ini_selector.nut" );
	RunScriptFunction( SQ_THREAD_INI_SELECTOR, "iniSelectorThread" );
	EnableForcusThreadId( SQ_THREAD_INI_SELECTOR, true );

	runDemo(1,SQ_THREAD_GAME,true);
}

function runDemo( mode, thread_id, is_debug_mode ) {

	GeminiNowLoadingStart();
	GeminiNowLoadingPut(0);

	ezBackgroundLoadAndConfig( thread_id, false, false, true );

	local releaseFlags = (1<<SCENE_GROUP_MENU) | (1<<SCENE_GROUP_HUD) | (1<<SCENE_GROUP_MENUBG);

	// ���[�v 
	while (true)
	{
		//StartCapture();


		loadGameResource();
		buildSceneForGame();

		// �Q�[���v���C 
		ezGamePlay( mode, thread_id, is_debug_mode );

		// �V�[�����������B
		SceneManagerOrderRelaseSceneByGroup(releaseFlags);
		releaseGameResource();

		// �I�[�g�Z�[�u
		if( IsGameResultFinished() ) {
			ezSaveData( false, true );
		}

		GeminiNowLoadingEnd();

		//EndCapture();
		// ���̃R���t�B�M�����[�V�������� 
		ezDebugGameConfig( thread_id );

		GeminiNowLoadingStart();
		GeminiNowLoadingPut(0);
	}
}
