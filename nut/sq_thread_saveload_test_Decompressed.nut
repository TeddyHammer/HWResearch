/* XDASEA_Xm8R_SPsX */ 
//
//	SaveLoadTest�̃V�[�P���X
//

function initSaveLoadTest() {
	RunScriptFunction( SQ_THREAD_GAME, "startSaveLoadThread" );
	SetPatternThreadId( SQ_THREAD_GAME, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );		// �f�o�b�O���j���[����� 
}

function startSaveLoadThread() {
	
	loadJsonResource();
	
	suspend();
	
	InitializeGameRule();	// �Q�[�����[��
	InitializeSaveData();	// �Z�[�u�f�[�^
	suspend();
	
	SaveLoadTool_Initialize();

	while( true ) {
		suspend();
		
		SaveLoadTool_Execute();
		SaveLoadTool_Draw();
		
		if( SaveLoadTool_IsExit() )
		{
			suspend();
			break;
		}
	}

	debugMenuWakeup();
}
