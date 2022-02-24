/* XDASEA_Xm8R_SPsX */ 
//
//	�L�����y�[���V�[�P���X
//

function initCampaignThread() {
	RunScriptFunction( SQ_THREAD_GAME, "startCampaignThread" );
	SetPatternThreadId( SQ_THREAD_GAME, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );		// �f�o�b�O���j���[����� 
}

function startCampaignThread() {
	// �Z���N�^�[���풓������ 
	IncludeScriptFile( "nut\\sq_thread_ini_selector.nut" );
	RunScriptFunction( SQ_THREAD_INI_SELECTOR, "iniSelectorThread" );
	EnableForcusThreadId( SQ_THREAD_INI_SELECTOR, true );

	runDemoCampaign(0,SQ_THREAD_GAME,true);
}

function loadMissionScript() {
	// �~�b�V�����X�N���v�g�̃��[�h
	local campaign_name = GetRunningCampaignName();
	
	// �Ƃ肠�����j��
	MissionBresDestroyRequest();
	// �j���҂�
	while ( false == MissionBresIsDestroyComplete() )
	{
		suspend();
	}
	
	MissionBresLoadRequest( campaign_name );
	// ���[�h�I���҂�
	while ( false == MissionBresIsLoadComplete() )
	{
		suspend();
	}
	
//	local mission_name = GetRunningMissionName();
//	local mission_file_name = "campaign/default/" + campaign_name + "/" + mission_name + "/" + mission_name + ".nut";
//	IncludeScriptFile( mission_file_name );
}





function SetupDemo()
{
	// �Q�[���̃��\�[�X�ƃ��j���[�̃��\�[�X�����ւ���
	changeResourceForMenu();

	local startUpSceneIds = SetupMenu( SQ_THREAD_GAME );

	StartMenuBG();
}


function SetupViewerCampaignDemo()
{
	// �L�����y�[���̊J�n
	RequestCampaign();
	suspend();

	// ���������҂�
	while( !IsRunningCampaign() )
	{
		suspend();
	}
	suspend();
}

function PlayStartDemo()
{
	GeminiNowLoadingStart();
	while(!GeminiIsNowLoadingStart())
	{
		suspend();
	}
	
	// �L�����y�[���̊J�n
	StartOpeningCampaignDemo();

	RequestMenu( SQ_THREAD_GAME );
}

function PlayEndDemo()
{
	if(IsRunningMissionSuccess())
	{
		GeminiNowLoadingStop();
		while(!GeminiIsNowLoadingStop())
		{
			suspend();
		}
		GeminiNowLoadingEnd();
	
		// �f���J�n
		StartClosingCampaignDemo();
	}

	ReleaseCampaignDemo();
}

function PlayGameDemo(mode, thread_id, is_debug_mode)
{
	// �Q�[���J�n
	// ���j���[�̃��\�[�X�ƃQ�[���̃��\�[�X�����ւ�
	changeResourceForGame();

	SetDispList(true);

	// �Q�[���v���C 
	ezGamePlay( mode, thread_id, is_debug_mode );

	GeminiNowLoadingPut(1);

	SetDispList(true);

	// �I�[�g�Z�[�u
	if( IsGameResultFinished() ) {
		ezSaveData( false, true );
	}
}




function runDemoCampaign( mode, thread_id, is_debug_mode ) {

	GeminiNowLoadingStart();
	GeminiNowLoadingPut(0);

	ezBackgroundLoadAndConfig( thread_id, false, false, false );

	// �f���J�n
	// �Q�[���̃��\�[�X�ƃ��j���[�̃��\�[�X�����ւ���
	
	SetupDemo();

	local releaseFlags = (1<<SCENE_GROUP_MENU) | (1<<SCENE_GROUP_HUD) | (1<<SCENE_GROUP_MENUBG);

	// ���[�v 
	while (true)
	{
		GeminiNowLoadingEnd();

		SetupViewerCampaignDemo();

		PlayStartDemo();

		GeminiNowLoadingPut(0);
		
		// �V�[�����������
		SceneManagerOrderRelaseSceneByGroup(releaseFlags);
		
		SceneManagerDelCurrentScene("menu_bg");

		// �O�̂���Sync���Ă��� 
		loadResidentResourceThreadSync();

		PlayGameDemo( mode, thread_id, is_debug_mode );

		GraphicsCatalogDestroy();
		DestroyScaleformMenu(false);

		// �V�[�����������B
		SceneManagerOrderRelaseSceneByGroup(releaseFlags);

		SetupDemo();

		PlayEndDemo();
	}
}


