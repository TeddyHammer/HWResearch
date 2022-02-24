/* XDASEA_Xm8R_SPsX */ 

function initNetworkMatchingTest() {
	RunScriptFunction( SQ_THREAD_GAME, "startNetworkMatchingTestThread" );
	SetPatternThreadId( SQ_THREAD_GAME, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );		// �f�o�b�O���j���[����� 
}


function startNetworkMatchingTestThread() {
	ezNetworkMainMenu( false );
	debugMenuWakeup();
}

function initNetworkBattleTest() {
	RunScriptFunction( SQ_THREAD_GAME, "startNetworkBattleTestThread" );
	SetPatternThreadId( SQ_THREAD_GAME, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );		// �f�o�b�O���j���[����� 
}

function startNetworkBattleTestThread() {

	local create_player_mode = 2;		// 2:�l�b�g���[�N���[�h 
	local thread_id = SQ_THREAD_GAME;
	local is_debug_mode = true;

	if (ezBackgroundLoadAndConfig( thread_id, true, true, true ))
	{
		buildSceneForGame();	
		
		// ���[�v 
		while (true)
		{
			// �Q�[���v���C 
			ezGamePlay( create_player_mode, thread_id, is_debug_mode );

			// �l�b�g���[�N�I�� 
			ezNetworkEnd();
				
			// ���̃R���t�B�M�����[�V�������� 
			ezDebugGameConfig( thread_id );
			
			// �l�b�g���[�N�ڑ� 
			if (false==ezNetworkMainMenu( true ))
			{
				break;
			}
	
			SceneManagerAddCurrentScene("go_game");
		}
	}

	debugMenuWakeup();
}

