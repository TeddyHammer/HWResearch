/* XDASEA_Xm8R_SPsX */ 
//--------------------------------------------------------------
//
// ������.
//
//--------------------------------------------------------------


// ������.
function initSystem() {
	// �ŏ����瓮���������\��X���b�h.
	RunScriptFunction( SQ_THREAD_DEBUGFORCUSLIST,	"debugFocusListThread" );

	// �f�o�b�O���j���[���풓������ 
	IncludeScriptFile( "nut\\sq_thread_test_menu.nut" );
}

function debugMenuStart() {
	debugMenuThreadStart();
}

function startTrap() {

	if (0!=GAME_IS_RELEASE)
	{
		return "Gemini";
	}
	
	if (0!=GAME_IS_DEMO)
	{
		return "Gemini";
	}
	
	local trap_string = [
		[ "game",			function (arg) { return "Game"; } ],
		[ "menu",			function (arg) { return "Menu"; } ],
		[ "hitviewer",		function (arg) { return "HitViewer"; } ],
	]

	local arg = GetAppArgmentString().tolower();
	
	print( "AppArgment:" + arg + "\n" );

	foreach (trap in trap_string)
	{
		if (null != arg.find(trap[0]))
		{
			print("StartTrapArgment:" + trap[0] + "\n");
			return trap[1](arg);
		}
	}
	
	local username = getenv("USERNAME");
	if (null != username)
	{
		foreach (trap in trap_string)
		{
			if (username.tolower() == trap[0])
			{
				print("StartTrapUsername:" + trap[0] + "\n");
				return trap[1](arg);
			}
		}
	}

	print("StartTrap:none -> DebugMenu\n");
	// DEBUG_MENU_MODE = 0;	
	return "DebugMenu";
}

// ----
// �O���X�N���v�g���痘�p���Ă��邽�߁A�ύX���Ȃ��ł��������B 
GAME_PLAYER_MAX <- G_PLAYER_MAX;
GAME_LOCAL_HUMAN_PLAYER_MAX <- G_LOCAL_HUMAN_PLAYER_MAX;
GAME_LOCAL_PLAYER_MAX <- G_LOCAL_PLAYER_MAX;
GAME_LOCAL_SCREEN_MAX <- G_LOCAL_SCREEN_MAX;
GAME_LOCAL_PAD_MAX <- G_LOCAL_PAD_MAX;
GAME_TEAM_PLAYER_MAX <- G_TEAM_PLAYER_MAX;

GAME_START_PLAYER_NUM <- G_START_PLAYER_NUM;
GAME_START_TEAM_PLAYER_NUM <- G_START_TEAM_PLAYER_NUM;

POWER_COLOR_BLACK <- 0;
POWER_COLOR_WHITE <- 1;
POWER_COLOR_UNKNOWN <- 2;

RULE_BUILDING_STATE_COMPLETE	<- 0;		// ����
RULE_BUILDING_STATE_MATERIALS	<- 1;		// ���ޒu���� 
RULE_BUILDING_STATE_BROKEN		<- 2;		// �j��i�Ŕj

GAME_IS_DEMO <- SQ_IS_DEMO
GAME_IS_RELEASE <- SQ_IS_RELEASE
DEBUG_MENU_MODE <- SQ_IS_DEMO;

// �O���X�N���v�g���痘�p���Ă��邽�߁A�ύX���Ȃ��ł��������B 
// ----


// ���ʃp�[�c��F�X�C���N���[�h.
IncludeScriptFile( "nut\\sq_window.nut" );
IncludeScriptFile( "nut\\sq_test_menu.nut" );
IncludeScriptFile( "nut\\sq_thread_test_focus_list.nut" );
IncludeScriptFile( "nut\\sq_util.nut" );
IncludeScriptFile( "nut\\sq_gemini.nut" );

IncludeScriptFile( "nut\\all_sq_lib.nut" );

// Json�̐ݒ�����[�h 
IncludeScriptFile( "json\\jsonFileList.nut" );

// �O���[�o����F�X.
ihp <- ih.GetInterface();

initSystem();

// �N�� 
switch( startTrap() )
{
case "Demo":
	// ���j���[���܂ޗ���̃e�X�g
	IncludeScriptFile( "nut\\sq_demo_p1.nut" );
	initDemoP1Thread();
	break;
case "HitViewer":
	// HitViewer
	IncludeScriptFile( "nut\\sq_demo_p0.nut" );
	initHitViewer();
	break;
case "DebugMenu":
	// �f�o�b�O���j���[ 
	debugMenuStart();
	break;
case "Menu":
	// ���j���[���܂ޗ���̃e�X�g
	IncludeScriptFile( "nut\\sq_demo_p1.nut" );
	initDemoP1Thread();
	break;
case "EffectViewer":
	// EffectViewer
	IncludeScriptFile( "nut\\sq_thread_effect_test.nut" );
	print("EffectViewer\n");
	initEffectViewer();
	break;
case "MapViewer":
	// MapViewer
	IncludeScriptFile( "nut\\sq_thread_map_viewer.nut" );
	mapViewerStart();
	break;
case "ActionCommandViewer":
	// ActionCommandViewer
	IncludeScriptFile( "nut\\sq_thread_actcmd_viewer.nut" );
	ActionCommandViewerStart();
	break;
case "GUIViewer":
	// GUIViewer
	IncludeScriptFile( "nut\\sq_thread_gui_viewer.nut" );
	GUIViewerStart();
	break;	
case "SaveLoadTest":
	// SaveLoadTest
	IncludeScriptFile( "nut\\sq_thread_saveload_test.nut" );
	initSaveLoadTest();
	break;
case "Gemini":
	// IncludeScriptFile( "nut\\sq_gemini.nut" );
	initRelaseGeminiThread();
	break;
case "Game":
default:
	// �Q�[���̋N�� 
	IncludeScriptFile( "nut\\sq_demo_p0.nut" );
	initDemoP0Thread();
	break;
}

//-----------------------------------------------------------------------------
// ������/����/���ł̂��߂̃T�u���[�`�� 

gFlagLoadResidentResource <- false;
gFlagLoadGameResource <- false;
gFlagLoadJsonResource <- false;

//	�풓���\�[�X���[�h 
function loadResidentResource() {
	if (false == gFlagLoadResidentResource) {
		gFlagLoadResidentResource = true;
		// ���\�[�X 
		LoadScaleformCommon();	// �X�P�[���t�H�[���풓

		loadJsonResource();		// JSON 
		
		// Script
		IncludeScriptFile( "nut\\sq_test_game_config.nut" );	// �Q�[���R���t�B�O
		
		// ������
		InitializeGameRule();	// �Q�[�����[��
		InitializeSaveData();	// �Z�[�u�f�[�^
		InitializeGameAudio();	// �Q�[���I�[�f�B�I
	}
}

//	�Q�[���p���\�[�X���[�h
function loadGameResource() {
	if (false == gFlagLoadGameResource) {
		gFlagLoadGameResource = true;
		LoadCharacterAll();		// �L�����N�^�[
		// LoadGimmickAll();		// �M�~�b�N
		LoadGfxAll();			// �G�t�F�N�g
		LoadActorFunction();	// ActionFuncs [�� : JsonLoadPlayerAll()�̌�Ŏ��s]
	}
	SetKeyCustomize();
	LoadScaleformHUD();		// HUD
}

// JSON 
function loadJsonResource() {
	if (false == gFlagLoadJsonResource)
	{
		gFlagLoadJsonResource = true;
		
		JsonLoadMenuParam();		// Menu
		JsonLoadGameAll();			// �Q�[���S��
		JsonLoadItemAll();			// ItemJson
		JsonLoadCampaignAll();		// �L�����y�[�� 
		JsonLoadCoopAll();			// COOP
		JsonLoadQuestAll();			// �N�G�X�g
		JsonLoadMedalRankAll();		// �M�́E�����N
		JsonLoadAchievementAll();	// �A�`�[�u�����g
		JsonLoadStageAll();			// �X�e�[�W���
		JsonLoadAudioAll();			// �I�[�f�B�I
		JsonLoadPlayerAll();		// �v���C��
		JsonLoadDocsAll();			// �h�L�������g
		JsonLoadLobbyAll();			// ���r�[�ݒ�
		JsonLoadTrialAll();			// �g���C�A���Őݒ�
		JsonLoadBotAll();			// BOT�ݒ�
		JsonLoadContentsAll();		// �R���e���c
		JsonLoadGimmickAll();		// �M�~�b�N 
	}
}

function releaseGameResource() {
	if (false == gFlagLoadGameResource) {
		ReleaseScaleformHUD();
		gFlagLoadGameResource = false;
	}
}


//-----------------------------------------------------------------------------
// �ȈՃQ�[�����s�̂��߂̃T�u���[�`�� 
function ezDebugGameConfig( thread_id )
{
	GeminiNowLoadingStart();
	GeminiNowLoadingPut(0);
	
	DebugGameConfig( thread_id );
}

gLoadComplete <- false;

function ezBackgroundLoadAndConfig( thread_id, network_enable, network_signin_and_entried, run_config )
{
	// ������������  
	suspend();

	// �풓���\�[�X 
	loadResidentResource();

	// ���ǂ� loadResidentResource() & loadGameResource();
	gLoadComplete = false;
	RunScriptFunction( SQ_THREAD_LOADER, "ezBackgroundLoadSub" );
	SetPatternThreadId( SQ_THREAD_LOADER, SQ_THREAD_PATTERN_ALWAYS );

	if( run_config )
	{
		// GameConfig�쐬 
		ezDebugGameConfig( thread_id );
	}

	local result = true;
	if (network_enable)
	{
		// �l�b�g���[�N���j���[ 
		result = ezNetworkMainMenu( network_signin_and_entried );
	}
	
	// wait for resource ready
	while (gLoadComplete==false)
	{
		suspend();
	}
	
	return result;
}

function ezBackgroundLoadSub()
{
	// �Q�[�����\�[�X 
	loadGameResource();
	
	// �I�� 
	gLoadComplete = true;
}

function ezNetworkMainMenu( only_entry ) {
	// �V�[�h����SignIn��Ԃ����o�� 
	local game_seed = GameSeed();
	game_seed.popSeed( 0 );
	local signin_mask = game_seed.getEntryAndSignInLocalPlayerMask( only_entry );

	local menu = MenuPage();
	menu.addMenu( 0, "Network Matching" );
	
	if (signin_mask & 0xf) {
		// ���O�C�����Ă��郆�[�U�[������ 
		menu.addItem( 0, 0, "Search Host" );
		menu.addItem( 0, 1, "Create Host [VsMode:WithBot]" );
		menu.addItem( 0, 2, "Create Host [VsMode:WithoutBot]" );
		menu.addItem( 0, 3, "Create Host [TeamMode:WithBot]" );
		menu.addItem( 0, 4, "Create Host [TeamMode:WithoutBot]" );
		menu.addItem( 0, 5, "Quit" );
		
		NetworkStart();
		
		local result = false;
		
		while( true ) {
			local selected = menu.update();
			menu.draw( 400, 32, 22 );
			suspend();
			if (selected<0)
			{
				continue;
			}

			if (5==selected)
			{
				break;
			}

			IncludeScriptFile("nut\\sq_net_test.nut");
			
			switch(selected)
			{
			case 0:
				result = NetTestSearchHost( signin_mask );
				break;
			case 1:
				result = NetTestCreateHost( signin_mask, 0 );
				break;
			case 2:
				result = NetTestCreateHost( signin_mask, 2 );
				break;
			case 3:
				result = NetTestCreateHost( signin_mask, 1 );
				break;
			case 4:
				result = NetTestCreateHost( signin_mask, 3 );
				break;
			}
			
			if (result) {
				break;
			}
			
			NetworkCancelToRoot();
		}
		
		if (result==false) {
			NetworkEnd();
		}
		
		return result;
	} else {
		// �N�����O�C�����Ă��Ȃ� 
		menu.addItem( 0, 0, "Quit" );
		menu.addItem( 0, 1, "Please SignIn or Check Human Input Pad Setting" );
		while( true ) {
			local selected = menu.update();
			menu.draw( 400, 32, 22 );
			suspend();
			if (0==selected)
			{
				return false;
			}
		}
	}
}

function ezNetworkEnd() {
	NetworkCancelToRoot();
	NetworkEnd();
}

function ezGamePlay( create_player_mode, thread_id, debug_mode )
{
	StartCapture();

	// ���[���쐬 
	CreateGameRule(0);
	
	// �Q�[���V�[�h�p�� 
	local game_seed = GameSeed();
	game_seed.popSeed(0);
	
	// �V�[�h����
	LoadStageFromSeed( game_seed.getStageSeed() );
	
	// ���C���[�ݒ�
	SetupLayerForGamePlay();

	// �X�e�[�W�ŗL���[���̐ݒ�
	game_seed.popSeed(0);
	GameStageRuleSetting( game_seed.getStageSeed(), game_seed.getGameRuleSeed() );
	game_seed.pushSeed(0);
	
	// �W���b�W�����g�̐���
	CreateGameJudgement(0);
	
	// HUD�쐬 
	HudInitialize();

	CreateScaleformHUD();

	// �Q�[���Z�b�e�B���O�J�n  
	GameSettingStart();
	
	// �Q�[���t�B�[���h�쐬�҂� 
	for (local i=0; i<8; ++i) {
		suspend();
	}
	
	// �Q�[���Z�b�e�B���O���� 
	GameSettingComplete();
	
	// BGM�Đ�
	local bgm_no = game_seed.getStageSeed().getStageBgm();
	PlayBgmForce( bgm_no, 1.0 );

	// Stage�z�uSE�Đ� 
	StagePlaySe();

	for (local i=0; i<4; ++i) {
		suspend();
	}

	//����C++����true�ɂ��Ă���̂ŃR�����g��
	//SetHudPlayStatus(true);

	InitialPlayerParam(); // �v���C���[�z�u�O�Ɏ��s 

	// �v���C���[�쐬���z�u ;
	switch( create_player_mode ) {
	case 0:	CreatePlayerAll(0);			break;
	case 1:	CreateDebugPlayerAll(0);	break;
	case 2: CreateNetworkPlayerAll(0);	break;
	}
	
	// �v���C���[�z�u���� 
	GamePlayerCreateComplete();

	// ���f���j���[�ҋ@ 
	ezGamePlayAbort( thread_id, debug_mode );

	SetHudPlayStatus(false);

	// �X�e�[�WSE��~ 
	StageStopSe();
	
	// �L�����y�[���̏I��
	ReleaseCampaignDemo();

	// �Q�[�����[���폜����
	NotifyGameRuleDestroy();

	// �v���C���[���� 
	DestroyPlayerAll();
	
	// HUD�폜 
	DestroyScaleformHUD();
	
	// ���C���[�ݒ�
	SetupLayerForMenu();

	// �X�e�[�W���� 
	DestroyStage();
	
	// ���[���폜 
	DestroyGameRule(0);

	EndCapture();
}

function ezGamePlayAbort( thread_id, debug_mode ) {

	// �Q�[���I�����A�J�n�܂ő҂� 
	ezWaitAtGameStart();

	EnableForcusThreadId( thread_id, true );
	// SetPatternThreadId( thread_id, SQ_THREAD_PATTERN_DEBUG_FOCUS );

	local abort_check = true;
	while( true ) {
		suspend();

		// Json�̋����X�V�����邩�H  
		if (debug_mode) {
			JsonDebugForcePushParam();
		}
		
		// �Q�[�����I������珟��ɔ����� 
		if (GAME_STATE_ENDED<=GetGamePlayingStatus()) {
			break;
		}
		
		if (false==OnForcusThreadId(thread_id)) {
			continue;
		}
		
		if (abort_check) {
			if(DebugPadIsTrigger(::PAD_X) || ihp.GetGameKeyboard().IsPush( 'X' )) {
				abort_check = false;
				SetGameEndStatus(GAME_END_MYSELF);
				SE_Ok();
			}
		}
			
		grahicsMouse();
	}
	
	// SetPatternThreadId( thread_id, SQ_THREAD_PATTERN_ALWAYS );
	EnableForcusThreadId( thread_id, false );
	// ChangeForcusThreadId( -1 );

	CloseDialog();

	ResetHeroPopup();
	
	suspend();
}

function ezWaitAtGameStart() {

	while( true ) {
		suspend();
			
		if (GAME_STATE_ENDED<=GetGamePlayingStatus()) {
			break;
		}
		
		if (GAME_STATE_PLAYING==GetGamePlayingStatus()) {
			break;
		}
	}

	suspend();
}

// �T�C���C�����Ă��郆�[�U�[�̃Z�[�u�f�[�^�����[�h���Ă݂�
function ezLoadData( is_load_system, is_load_game ) {
	for (local i=0; i<GAME_LOCAL_PAD_MAX; ++i) {
		if(IsUserSignIn(i)) {
			if(is_load_system) {
				for (local j=0; j<10; ++j) {
					suspend();
				}
				LoadSystemData(i);
				suspend();
				while(IsSaveLoadActive()) {
					DrawSystemDataReading(i);
					suspend();
				}
			}
			if(is_load_game) {
				for (local j=0; j<10; ++j) {
					suspend();
				}
				LoadGameData( i );
				suspend();
				while( IsSaveLoadActive() ) {
					DrawGameDataReading(i);
					suspend();
				}
			}
		}
	}
}
// �T�C���C�����Ă��郆�[�U�[�̃Z�[�u�f�[�^���Z�[�u���Ă݂�
function ezSaveData( is_save_system, is_save_game ) {
	for (local i=0; i<GAME_LOCAL_PAD_MAX; ++i) {
		if(IsUserSignIn(i)) {
			if(is_save_system) {
				for (local j=0; j<10; ++j) {
					suspend();
				}
				SaveSystemData(i);
				suspend();
				while(IsSaveLoadActive()) {
					DrawSystemDataWriting(i);
					suspend();
				}
			}
			if(is_save_game) {
				for (local j=0; j<10; ++j) {
					suspend();
				}
				SaveGameData( i );
				suspend();
				while( IsSaveLoadActive() ) {
					DrawGameDataWriting(i);
					suspend();
				}
			}
		}
	}
}
