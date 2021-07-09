/* XDASEA_Xm8R_SPsX */ 
//
//	���j���[���܂߂���ʑJ�ڂ̃V�[�P���X
//

//-----------------------------------------------------------------------------
//	�O���[�o���ϐ� 
gGeminiDebugMode <- false;


//-----------------------------------------------------------------------------
//	������
function initDemoP1Thread() {
	RunScriptFunction( SQ_THREAD_GAME, "startDemoP1Thread" );
	SetPatternThreadId( SQ_THREAD_GAME, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );		// �f�o�b�O���j���[����� 
}
function startDemoP1Thread() {
	// �Z���N�^�[���풓������ 
	IncludeScriptFile( "nut\\sq_thread_ini_selector.nut" );
	RunScriptFunction( SQ_THREAD_INI_SELECTOR, "iniSelectorThread" );
	EnableForcusThreadId( SQ_THREAD_INI_SELECTOR, true );

	gGeminiDebugMode = true;
	runMainLoop();
}

//-----------------------------------------------------------------------------
//	���j���[�p���\�[�X���[�h
function loadMenu( scene )
{
	//���͕��򖳂�. �z���g��scene�ɂ���āA�K�v�ł���Γǂݍ���bres��ς���(?).
	JsonLoadItemAll();
	LoadCharacterAll();
	LoadScaleformMenu();
}
function releaseMenu()
{
	ReleaseScaleformMenu();
}

//-----------------------------------------------------------------------------
//	���C�����[�v
function runMainLoop() {

	local gameResourceOnMemory = false;
	local menuResourceOnMemory = false;	//bres�̊Ǘ����o������v�C��(?)
	local nextScene = GetFirstScene();

	//	�풓���\�[�X�̃��[�h
	loadResidentResource();
	
	//	���C�����[�v
	while (true)
	{
		suspend();
		switch( nextScene )
		{
		//�Q�[���V�[��
		case "game":
			{
				//	���j���[���\�[�X�̊J��
				if( menuResourceOnMemory )
				{
					releaseMenu();
					menuResourceOnMemory = false;
				}
			
				//	�Q�[���p���\�[�X�̃��[�h	//�ŏI�I�ɂ̓Q�[���N���V�[�P���X�̂ǂ����ŗ��ǂ݂�...
				if( !gameResourceOnMemory )
				{
					loadGameResource();
					gameResourceOnMemory = true;
				}
		
				//	�Q�[�����s
				DemoP1_RunGame( SQ_THREAD_GAME );

				//	�Q�[���p���\�[�X�̊J��
				//...(�J�����Ȃ��H)
				SceneManagerSetNextSceneName( "title" );
			} break;
		//���j���[�V�[��
		default:
			{
				if( gameResourceOnMemory )
				{
					releaseGameResource();
					gameResourceOnMemory = false;
				}

				//	���j���[�p���\�[�X�̃��[�h
				if( !menuResourceOnMemory )
				{
					loadMenu( nextScene );
					menuResourceOnMemory = true;
				}

				//	���j���[���s
				DemoP1_RunMenu( SQ_THREAD_GAME, nextScene );

				//	���j���[�p���\�[�X�̊J��
				//...(�J�����Ȃ��H)
			} break;
		}

		nextScene = GetNextScene();
		if( ("" == nextScene) || ("exit" == nextScene) )
			break;
	}
	
	// Menu, HUD �̊J��.
	DestroyScaleformMenu();
	DestroyScaleformHUD();

	GeminiPostEscape();
	while(1){ suspend(); }
}

//-----------------------------------------------------------------------------
//	���j���[���s 
//	���^�C�g�����S�̂�
function DemoP1_RunMenu( thread_id, scene ) {
	DebugConsoleOff();

	EnableForcusThreadId( thread_id, true );
	SetPatternThreadId( thread_id, SQ_THREAD_PATTERN_DEBUG_FOCUS );
	ChangeForcusThreadId( thread_id );

	CreateScaleformMenu();

	//// �f�[�^�̃��[�h
	//ezLoadData( true, true );

	// ���j���[�p�̃��C���[�ݒ�
	SetupLayerForMenu();
	
	// �V�[����g�ݗ��Ă�(�����킽���ł��Q�Ƃ킽���Ă邱�ƂɂȂ�̂ő��v�����A�܂��`���[�g���A�I�ȈӖ���
	local startUpSceneIds = clone buildSceneForMenu();

	// �V�[�����J�n
	foreach(id in startUpSceneIds)
	{
		SceneManagerAddCurrentScene(id);
	}

	while( true ) {
		suspend();
		
		//if( !IsPlayingScaleformMenu( scene ) )
		//if( SceneManagerGetCurrentSceneNum()==0 )
		//{
		//	break;
		//}
		grahicsMouse();
	}
	
	//ScreenFadeSet( 0xff000000);
	suspend();
	
	GraphicsCatalogDestroy();
	DestroyScaleformMenu();

	EnableForcusThreadId( thread_id, false );
	SetPatternThreadId( thread_id, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );
	
	suspend();
}


//-----------------------------------------------------------------------------
//	�Q�[�����s
function DemoP1_RunGame( thread_id ) {

	// GameConfig�쐬 
	ezDebugGameConfig( thread_id );

	// �Q�[���v���C 
	ezGamePlay( 0, thread_id, true );

	SceneManagerAddCurrentScene("go_game");

}



