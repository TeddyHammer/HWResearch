/* XDASEA_Xm8R_SPsX */ 
//
//	���j���[���܂߂���ʑJ�ڂ̃V�[�P���X
//

//-----------------------------------------------------------------------------
//	�O���[�o���ϐ� 

gGeminiDebugMode <- false;

gameResourceOnMemory <- false;
menuResourceOnMemory <- false; //bres�̊Ǘ����o������v�C��(?)
menuResourceOnMemory1 <- false; //bres�̊Ǘ����o������v�C��(?)
menuResourceOnMemory2 <- false; //bres�̊Ǘ����o������v�C��(?)
menuResourceOnMemory3 <- false; //bres�̊Ǘ����o������v�C��(?)
menuResourceOnMemory4 <- false; //bres�̊Ǘ����o������v�C��(?)
menuResourceOnMemory5 <- false; //bres�̊Ǘ����o������v�C��(?)

//gScaleformGameMode <- "title_demo"
gScaleformGameMode <- "menu"
//gScaleformGameMode <- "game"
//gScaleformGameMode <- "campaign"

subMenuMode <- 0;
fromSceneName <- "";
nextSceneName <- "";


MA_MAINMENU			<- 0;
SB_STAFFROLL		<- 2;
SB_ITEMSPNNER		<- 3;
SB_DLCMENU			<- 4;
SB_HAPPYBOX			<- 5;
SB_HAPPYBOX_LMT		<- 6;
SB_CROSSPLATFORM	<- 7;













GAME_PLAYING_MULTIPLAY	<- 0;	// �ʏ�̃}���`�v���C 
GAME_PLAYING_TUTORIAL	<- 1;	// �V���O���̃`���[�g���A�� 
GAME_PLAYING_CAMPAIGN	<- 2;	// �V���O��/�}���`�̃L�����y�[�� 
GAME_PLAYING_DEMO       <- 3;   // ��������



//-----------------------------------------------------------------------------
//	������

function initRelaseGeminiThread() {
	
	RunScriptFunction( SQ_THREAD_GAME, "startRelaseGeminiThread" );
	SetPatternThreadId( SQ_THREAD_GAME, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );		// �f�o�b�O���j���[����� 
}


function startRelaseGeminiThread() {
	runMainLoop();
}


//-----------------------------------------------------------------------------
// �e���[�h�̏�����

// menu
function SetupMenu( thread_id )
{
	DebugConsoleOff();

	EnableForcusThreadId( thread_id, true );
	SetPatternThreadId( thread_id, SQ_THREAD_PATTERN_DEBUG_FOCUS );
	ChangeForcusThreadId( thread_id );

	// ���j���[(menu.sgfx)�̍쐬
	CreateScaleformMenu();

	// ���j���[�p�̃��C���[�ݒ�
	SetupLayerForMenu();
	
	// �V�[����g�ݗ��Ă�(�����킽���ł��Q�Ƃ킽���Ă邱�ƂɂȂ�̂ő��v�����A�܂��`���[�g���A�I�ȈӖ���
	local startUpSceneIds = clone buildSceneForMenu();
	return startUpSceneIds;
}

function changeResourceForMenu()
{
	if( gameResourceOnMemory )
	{
		releaseGameResource();
		// SceneManagerAllClose();
		
		DestroyScaleformMenu(true);
		//local releaseFlags = (1<<SCENE_GROUP_MENU) | (1<<SCENE_GROUP_HUD) | (1<<SCENE_GROUP_MENUBG);
		//SceneManagerOrderRelaseSceneByGroup(releaseFlags);

		gameResourceOnMemory = false;
	}

	//	���j���[�p���\�[�X�̃��[�h
	if( !menuResourceOnMemory )
	{
		loadMenu();
		menuResourceOnMemory = true;
	}
	else
	{
		SceneManagerInitialize();
	}
}

function changeResourceForGame()
{
	//	���j���[���\�[�X�̊J��
	if( menuResourceOnMemory )
	{
		releaseMenu();
		menuResourceOnMemory = false;
	}
	
	if( !gameResourceOnMemory )
	{
		loadGameResource();
		buildSceneForGame();
		gameResourceOnMemory = true;
	}
}

// UI_menu & UI_menu2
function SetupMenu1( thread_id )
{
	DebugConsoleOff();

	EnableForcusThreadId( thread_id, true );
	SetPatternThreadId( thread_id, SQ_THREAD_PATTERN_DEBUG_FOCUS );
	ChangeForcusThreadId( thread_id );

	// ���j���[(menu.sgfx)�̍쐬
	CreateScaleformMenu();

	// ���j���[�p�̃��C���[�ݒ�
	SetupLayerForMenu();
	
	// �V�[����g�ݗ��Ă�(�����킽���ł��Q�Ƃ킽���Ă邱�ƂɂȂ�̂ő��v�����A�܂��`���[�g���A�I�ȈӖ���
	local startUpSceneIds = clone buildSceneForMenu1();
	
	return startUpSceneIds;
}

function changeResourceForMenu1()
{
	if( gameResourceOnMemory )
	{
		releaseGameResource();
		DestroyScaleformMenu(false);

		//local releaseFlags = (1<<SCENE_GROUP_MENU) | (1<<SCENE_GROUP_HUD);
		//SceneManagerOrderRelaseSceneByGroup(releaseFlags);
		gameResourceOnMemory = false;
	}
	
	if( menuResourceOnMemory2 )
	{
		releaseMenu2();
		DestroyScaleformMenu(false);

		//local releaseFlags = (1<<SCENE_GROUP_MENU) | (1<<SCENE_GROUP_HUD);
		//SceneManagerOrderRelaseSceneByGroup(releaseFlags);
		menuResourceOnMemory2 = false;
	}
	
	if( menuResourceOnMemory3 )
	{
		releaseMenu3();
		DestroyScaleformMenu(false);

		//local releaseFlags = (1<<SCENE_GROUP_MENU) | (1<<SCENE_GROUP_HUD);
		//SceneManagerOrderRelaseSceneByGroup(releaseFlags);
		menuResourceOnMemory3 = false;
	}
	
	if( menuResourceOnMemory4 )
	{
		releaseMenu4();
		DestroyScaleformMenu(false);

		//local releaseFlags = (1<<SCENE_GROUP_MENU) | (1<<SCENE_GROUP_HUD);
		//SceneManagerOrderRelaseSceneByGroup(releaseFlags);
		menuResourceOnMemory4 = false;
	}

	if( menuResourceOnMemory5 )
	{
		releaseMenu5();
		DestroyScaleformMenu(false);

		//local releaseFlags = (1<<SCENE_GROUP_MENU) | (1<<SCENE_GROUP_HUD);
		//SceneManagerOrderRelaseSceneByGroup(releaseFlags);
		menuResourceOnMemory5 = false;
	}

	//	���j���[�p���\�[�X�̃��[�h
	if( !menuResourceOnMemory1 )
	{
		loadMenu1();
		menuResourceOnMemory1 = true;
	}
	else
	{
		SceneManagerInitialize();
	}
}

function changeResourceForGame1()
{
	//	���j���[���\�[�X�̊J��
	if( menuResourceOnMemory1 )
	{
		releaseMenu1();
		menuResourceOnMemory1 = false;
	}
	
	if( !gameResourceOnMemory )
	{
		loadGameResource();



		buildSceneForGame();
		gameResourceOnMemory = true;
	}
}

// UI_StaffRoll
function SetupMenu2( thread_id )
{
	EnableForcusThreadId( thread_id, true );
	SetPatternThreadId( thread_id, SQ_THREAD_PATTERN_DEBUG_FOCUS );
	ChangeForcusThreadId( thread_id );

	// ���j���[(menu.sgfx)�̍쐬
	CreateScaleformMenu();

	// ���j���[�p�̃��C���[�ݒ�
	SetupLayerForMenu();
	
	// �V�[����g�ݗ��Ă�(�����킽���ł��Q�Ƃ킽���Ă邱�ƂɂȂ�̂ő��v�����A�܂��`���[�g���A�I�ȈӖ���
	local startUpSceneIds = clone buildSceneForMenu2();
	
	return startUpSceneIds;
}

// UI_spinner
function SetupMenu3( thread_id )
{
	EnableForcusThreadId( thread_id, true );
	SetPatternThreadId( thread_id, SQ_THREAD_PATTERN_DEBUG_FOCUS );
	ChangeForcusThreadId( thread_id );

	// ���j���[(menu.sgfx)�̍쐬
	CreateScaleformMenu();

	// ���j���[�p�̃��C���[�ݒ�
	SetupLayerForMenu();
	
	// �V�[����g�ݗ��Ă�(�����킽���ł��Q�Ƃ킽���Ă邱�ƂɂȂ�̂ő��v�����A�܂��`���[�g���A�I�ȈӖ���
	local startUpSceneIds = clone buildSceneForMenu3();
	return startUpSceneIds;
}

// UI_dlc
function SetupMenu4( thread_id )
{
	EnableForcusThreadId( thread_id, true );
	SetPatternThreadId( thread_id, SQ_THREAD_PATTERN_DEBUG_FOCUS );
	ChangeForcusThreadId( thread_id );

	// ���j���[(menu.sgfx)�̍쐬
	CreateScaleformMenu();

	// ���j���[�p�̃��C���[�ݒ�
	SetupLayerForMenu();
	
	// �V�[����g�ݗ��Ă�(�����킽���ł��Q�Ƃ킽���Ă邱�ƂɂȂ�̂ő��v�����A�܂��`���[�g���A�I�ȈӖ���
	local startUpSceneIds = clone buildSceneForMenu4();
	return startUpSceneIds;
}

function SetupMenu5( thread_id )
{
	EnableForcusThreadId( thread_id, true );
	SetPatternThreadId( thread_id, SQ_THREAD_PATTERN_DEBUG_FOCUS );
	ChangeForcusThreadId( thread_id );

	// ���j���[(menu.sgfx)�̍쐬
	CreateScaleformMenu();

	// ���j���[�p�̃��C���[�ݒ�
	SetupLayerForMenu();
	
	// �V�[����g�ݗ��Ă�(�����킽���ł��Q�Ƃ킽���Ă邱�ƂɂȂ�̂ő��v�����A�܂��`���[�g���A�I�ȈӖ���
	local startUpSceneIds = clone buildSceneForMenu5();
	return startUpSceneIds;
}

function changeResourceForMenu2()
{
	if( menuResourceOnMemory1 )
	{
		releaseMenu1WithOutBG();
		menuResourceOnMemory1 = false;
	}

	//	���j���[�p���\�[�X�̃��[�h
	if( !menuResourceOnMemory2 )
	{
		loadMenu2();
		menuResourceOnMemory2 = true;
	}
	else
	{
		SceneManagerInitialize();
	}
}

function changeResourceForMenu3()
{
	if( menuResourceOnMemory1 )
	{
		releaseMenu1WithOutBG();
		menuResourceOnMemory1 = false;
	}

	//	���j���[�p���\�[�X�̃��[�h
	if( !menuResourceOnMemory3 )
	{
		loadMenu3();
		menuResourceOnMemory3 = true;
	}
	else
	{
		SceneManagerInitialize();
	}
}

function changeResourceForMenu4()
{
	if( menuResourceOnMemory1 )
	{
		releaseMenu1WithOutBG();
		menuResourceOnMemory1 = false;
	}

	//	���j���[�p���\�[�X�̃��[�h
	if( !menuResourceOnMemory4 )
	{
		loadMenu4();
		menuResourceOnMemory4 = true;
	}
	else
	{
		SceneManagerInitialize();
	}
}


function changeResourceForMenu5()
{
	if( menuResourceOnMemory1 )
	{
		releaseMenu1WithOutBG();
		menuResourceOnMemory1 = false;
	}

	//	���j���[�p���\�[�X�̃��[�h
	if( !menuResourceOnMemory5 )
	{
		loadMenu5();
		menuResourceOnMemory5 = true;
	}
	else
	{
		SceneManagerInitialize();
	}
}















function RequestMenu( thread_id )
{
	EnableForcusThreadId( thread_id, false );
	SetPatternThreadId( thread_id, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );
	suspend();
}

// demo
function SetupCampaignDemo()
{
	// �L�����y�[���̊J�n
	RequestCampaign();

	local campaignName = GetSelectedCampaignName();
	SetRunningCampaignName(campaignName);

	local missionName = GetSelectedMissionName();
	SetRunningMissionName(missionName);

	suspend();

	// ���������҂�
	while( !IsRunningCampaign() )
	{
		suspend();
	}
	suspend();
}

function ReleaseCampaignDemo()
{
	ReleaseCampaign();
}

//-----------------------------------------------------------------------------
// �f�[�^�̌���


//-----------------------------------------------------------------------------
// Menu

function StartMenuBG()
{
	SceneManagerAddCurrentScene("menu_bg");
}

function StartMenuDemo()
{
	//SceneManagerAddCurrentScene("sc_nameBalloon");
	SceneManagerAddCurrentScene("go_demo");
}

function StartMenuScene(from, scene, player, label, args)
{
	// �V�[�����J�n
	SceneManagerChangeCurrentScene(from, scene, player, label, args);
}

function StartMenuSceneList(startUpSceneIds)
{
	foreach(id in startUpSceneIds)
	{
		SceneManagerAddCurrentScene(id);
	}
}

function PlayMenu()
{
	while( true )
	{
		suspend();
		grahicsMouse();
	
		local sceneName = SceneManagerGetSceneName();

		if(sceneName=="go_game")
		{
			GenerateGameModeChangeStamp();
			gScaleformGameMode = "game";
			break;
		}
		else if(sceneName=="go_campaign")
		{
			GenerateGameModeChangeStamp();
			gScaleformGameMode = "campaign";
			break;
		}

		local notFindScene = SceneManagerNotFindCurrent();
		if(notFindScene!="")
		{
			//if(SceneManagerIsCloseCurrentScene(sceneName))// �I��������
			if(SceneManagerIsClosedCurrentScene(sceneName))// ���S�ɏI�������ꍇ
			{
				if(notFindScene=="staffroll")
				{
					gScaleformGameMode = "subMenu";
					subMenuMode = SB_STAFFROLL;
					fromSceneName = sceneName;
					nextSceneName = notFindScene;
					break;
				}
				if(notFindScene=="sc_itemspinner")
				{
					gScaleformGameMode = "subMenu";
					subMenuMode = SB_ITEMSPNNER;
					fromSceneName = sceneName;
					nextSceneName = notFindScene;
					break;
				}
				if(notFindScene=="sc_happybox")
				{
					gScaleformGameMode = "subMenu";
					subMenuMode = SB_HAPPYBOX;
					fromSceneName = sceneName;
					nextSceneName = notFindScene;
					break;
				}
				if(notFindScene=="sc_happybox_lmt")
				{
					gScaleformGameMode = "subMenu";
					subMenuMode = SB_HAPPYBOX_LMT;
					fromSceneName = sceneName;

					//nextSceneName = notFindScene;
					nextSceneName = "sc_happybox";
					break;
				}
				if(notFindScene=="sc_dlcmenu")
				{
					gScaleformGameMode = "subMenu";
					subMenuMode = SB_DLCMENU;

					// �ǂݒ��������@�L�����J�X�^�}�C�Y����DLC�w����ʂֈړ����鎞��
					// �J�����g��scene�ƂȂ�̂�"CharacterMaking"��"Mannequin"�̂Q��
					// "Mannequin"�͑��̉�ʂł����p����Ă���̂ŁA���̑��̉�ʂ�
					// �߂�K�v������ꍇ�͍X�ɍH�v����K�v������B

					if(sceneName=="Mannequin")
						fromSceneName = "CharacterMaking";
					else
						fromSceneName = sceneName;

					nextSceneName = notFindScene;
					break;
				}
				if(notFindScene=="crossPlatform")
				{
					gScaleformGameMode = "subMenu";
					subMenuMode = SB_CROSSPLATFORM;
					fromSceneName = sceneName;
					nextSceneName = notFindScene;
					break;
				}
			}
		}
	}
	
	suspend();
}

//-----------------------------------------------------------------------------
// Demo

function PlayDemo( isOpenDemo )
{
	if(!isOpenDemo)
		return ;

	InitMoviePlayerCache();

	// BGM�Đ�
	//local bgm_no = game_seed.getStageSeed().getStageBgm();
	//PlayBgmForce( bgm_no, 1.0 );

	SetHudPlayStatus(true);

	SceneManagerAddScene("go_demo", SCENE_GROUP_HUD);
	StartMenuDemo();

	GeminiNowLoadingEnd();

	for(;;)
	{
		suspend();
		grahicsMouse();

		if(IsDemoEnd())
		{
			break;
		}
		else if (isSkipDemo())
		{
			stopBGM();
			break;
		}
	}

	resetDrawDialog();
	if(IsExistUserSignOutHistory())
	{
		enablePause(true);
		suspend();

		while(isDrawDialog())
		{
			drawDialog("SignOutHistroy");
			suspend();
		}

		resetDrawDialog();
	}

	local cf = 0;

	SetHudPlayStatus(false);

	GeminiNowLoadingStart();
	while(!GeminiIsNowLoadingStart())
	{
		++cf;
		suspend();
	}

	while (true)
	{
		++cf;
		suspend();

		if(SceneManagerDeleteScene("go_demo")!=0)
			break;
	}

	suspend();

	for(local i=cf;i<30;++i) {
		suspend();
	}

	enablePause(false);
}



function StartOpeningCampaignDemo()
{
	// demo���L��΍Đ�����B
	local demoName = GetRunningMissionStartDemoID();

	if(demoName==null)
		return ;

	local isOpenDemo = CreateDemo(demoName); // DemoCharacterManager���N���G�C�g 
	
	PlayDemo( isOpenDemo );
	
	// Body��Talent�̔j��
	DestroyDemoCharacter();
}

function StartClosingCampaignDemo()
{
	// demo���L��΍Đ�����B
	local demoName = GetRunningMissionEndDemoID();

	if(demoName==null)
		return ;

	local isOpenDemo = CreateDemo(demoName); // DemoCharacterManager���N���G�C�g 
	
	PlayDemo( isOpenDemo );
	
	// Body��Talent�̔j��
	DestroyDemoCharacter();
}


//-----------------------------------------------------------------------------
//	���j���[�p���\�[�X���[�h
function loadMenu()
{
	LoadScaleformMenu();
}

function loadMenu1()
{
	LoadScaleformMenu1();
}

function loadMenu2()
{
	LoadScaleformMenu2();
}

function loadMenu3()
{
	LoadScaleformMenu3();
}

function loadMenu4()
{
	LoadScaleformMenu4();
}

function loadMenu5()
{
	LoadScaleformMenu5();
}


function releaseMenu()
{
	ReleaseScaleformMenu(true);
}

function releaseMenu1WithOutBG()
{
	ReleaseScaleformMenu1(false);
}

function releaseMenu1()
{
	ReleaseScaleformMenu1(true);
}

function releaseMenu2()
{
	ReleaseScaleformMenu2(false);
}

function releaseMenu3()
{
	ReleaseScaleformMenu3(false);
}

function releaseMenu4()
{
	ReleaseScaleformMenu4(false);
}

function releaseMenu5()
{
	ReleaseScaleformMenu5(false);
}


//-----------------------------------------------------------------------------
//	�L�����y�[���p���\�[�X���[�h
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

//-----------------------------------------------------------------------------
//	�f�[�^���ǂ݂̂��߂̃X���b�h 
gFlagLoadResidentResourceComplete <- false;

function RequestFirstLoad()
{
	// �����I�ɐ�ǂ� 
	// LoadScaleformCommon();

	RequestLoadScaleformCommon();
	RequestSetupScaleformLanguage();

	RequestLoadScaleformHUD();

	LoadScaleformMenuBG();
	LoadScaleformMenuMain();
	
	gFlagLoadScaleformCommon = true;
	gFlagLoadScaleformMenu = true;
	IsDaneLoadScaleformHUD = true;

	//GeminiNowLoadingStart();
	//GeminiNowLoadingPut(1);



	// ���ǂ݊J�n 
	RunScriptFunction( SQ_THREAD_LOADER, "loadResidentResourceProc" );
	SetPatternThreadId( SQ_THREAD_LOADER, SQ_THREAD_PATTERN_ALWAYS );
}


function loadResidentResourceThreadStart()
{
	WaitLoadScaleformCommon();
	WaitSetupScaleformLanguage();
	ScaleformLoadHUDJson();
	SetKeyCustomize();
	buildSceneForCommon();
	SetupLayerForMenu();

	WaitLoadScaleformMenuBress();

	gFlagLoadResidentResourceComplete = false;
}

function loadResidentResourceThreadSync()
{
	// SetNowLoadingVisibleOperation(true);
	
	if (true==gFlagLoadResidentResourceComplete) {
		while (gFlagLoadResidentResourceComplete==false) {
			suspend();
		}
		for (local i=0; i<30; ++i) {
			suspend();
		}
	}
}

function loadResidentResourceProc()
{
	// �풓���\�[�X 
	loadResidentResource();
	// �Q�[�����\�[�X 
	loadGameResource();
	// �ǂݍ��݊��� 
	gFlagLoadResidentResourceComplete = true;
}

//-----------------------------------------------------------------------------
//	���C�����[�v
function runMainLoop() {

	
	// ���j���[���[�h�͋����I��ON�ɂȂ� 
	SetPlayBgm(true);
	SetPadVibration(true);

	local preMode = "";
	local nextMode = gScaleformGameMode;
	local from = "";
	local next = "";
	local player = "";
	local label = "";
	local args = "";
	local wait_frame = 0;

	////	���S 
	//for (local logo_stage=0; logo_stage<5; ++logo_stage)
	for (local logo_stage=0; logo_stage<5; )
	{
		if(SetLogoStage(logo_stage)){
			logo_stage++;
		}
		// �ŏ����痠�ǂ݂��J�n����ƁA���S�̊ԂɃu���b�N�A�E�g���Ԃ�������̂ŁA
		// �\����ɂ��炷�i�d�������Ńu���b�N����Ă���͗l�j
		if(logo_stage >= 1){
			wait_frame++;
			if(wait_frame == 5)
				RequestFirstLoad();
		}

		suspend();
	}

	////	�풓���\�[�X�̃��[�h
	loadResidentResourceThreadStart();

	//	���C�����[�v
	while (true)
	{
		suspend();

		switch( nextMode )
		{
		case "campaign":
			{
				clearCustomLog();

				// ���j���[�̃��\�[�X�ƃQ�[���̃��\�[�X�����ւ�
				//changeResourceForGame();
				changeResourceForGame1();

				SetDispList(true);

				// �Q�[���v���C 
				ezGamePlay( 0, SQ_THREAD_GAME, true );
				
				SetDispList(true);

				// �V�[�����������B
				DestroyScaleformMenu(true);
				//local releaseFlags = (1<<SCENE_GROUP_MENU)|(1<<SCENE_GROUP_HUD)|(1<<SCENE_GROUP_MENUBG);
				//SceneManagerOrderRelaseSceneByGroup(releaseFlags);

				// �I�[�g�Z�[�u
				if( IsGameResultFinished() ) {
					ezSaveData( false, true );
				}

				gScaleformGameMode = "menu";

				from = "";
				if(HasNextSceneForMenu())
				{
					//GetScene();

					next = GetNextSceneForMenu();
					player = GetNextMoviePlayerForMenu();
					label = GetNextLabelForMenu();
					args = GetNextArgsForMenu();
				}
			}
			break;
		//�Q�[���V�[��
		case "game":
			{
				clearCustomLog();

				// ���j���[�̃��\�[�X�ƃQ�[���̃��\�[�X�����ւ�
				//changeResourceForGame();
				changeResourceForGame1();

				//	�Q�[�����s
				ezGamePlay(2, SQ_THREAD_GAME, true );

				// �V�[�����������B
				DestroyScaleformMenu(true);
				//local releaseFlags = (1<<SCENE_GROUP_MENU)|(1<<SCENE_GROUP_HUD)|(1<<SCENE_GROUP_MENUBG);
				//SceneManagerOrderRelaseSceneByGroup(releaseFlags);

				gScaleformGameMode = "menu";
				
				from = "";
				if(HasNextSceneForMenu())
				{
					//GetScene();
					next = GetNextSceneForMenu();
					player = GetNextMoviePlayerForMenu();
					label = GetNextLabelForMenu();
					args = GetNextArgsForMenu();
				}
			} break;

		//���j���[�V�[��
		// UI_menu & UI_menu2 & UI_StaffRoll
		case "menu":
			{
				// �Q�[���̃��\�[�X�ƃ��j���[�̃��\�[�X�����ւ���

				if(subMenuMode==SB_CROSSPLATFORM)
				{
					SetupLanguageForFont(true);
					while(!IsEndSetupLanguageForFont())
					{
						suspend();
					}
				}

				// UI_menu & UI_menu2
				changeResourceForMenu1();

				local startUpSceneIds = SetupMenu1( SQ_THREAD_GAME );

				// �t�F�[�h������������ԂȂ� 
				if (!GeminiIsNowLoadingEnd()) {
					// NowLoading���t�F�[�h�����āA�t�F�[�h�A�E�g����܂ő҂� 
					GeminiNowLoadingStop();
					while (!GeminiIsNowLoadingStop())
					{
						suspend();
					}
				}

				// ���ꉻ�@����N�̍�������j���[���J���ׂ̗�O����
				local exMenuOpen = 0;
				// �L�����y�[�����I�����Ă����ꍇ�A�f�����Đ����邩������Ȃ��B
				if(preMode=="subMenu")
				{
					// subMenu ���炱���֖߂�Ƃ��ɂ�GeminiNowLoadingStart
					// ���Ă��Ȃ��B
					if(subMenuMode==SB_STAFFROLL)
					{
						DrawMenuBG(true);
						// �t�F�[�h�C�������� 
						GeminiNowLoadingEnd();
					}
					else
					{
						if(subMenuMode==SB_DLCMENU)
						{
							// �^�C�g���ɖ߂�Ƃ��̓T�C���A�E�g�����ׂȂ̂Ŏז������Ȃ��B
							if(fromSceneName=="CharacterMaking" && next != "title")
							{
								exMenuOpen = 1;
							}
						}
						DrawWaitingOnMenuBG(false);
					}
				}
				else if(preMode=="campaign")
				{
					StartMenuBG();

					SetStateDemo();
					SetupDrawLayerForDispModel();
					if(IsRunningMissionSuccess())
					{
						StartClosingCampaignDemo();
					}
					ReleaseCampaignDemo();
					ResetStateDemo();

					// �t�F�[�h�C�������� 
					GeminiNowLoadingEnd();
				}
				else
				{
					StartMenuBG();
					// �t�F�[�h�C�������� 
					GeminiNowLoadingEnd();
				}

				subMenuMode = MA_MAINMENU;
				fromSceneName = "";

				suspend();

				// �Đ����郁�j���[��I��
				if(exMenuOpen==0)
				{
					if(next!="")
					{
						StartMenuScene( from, next, player, label, args);
					}
					else
					{
						StartMenuSceneList( startUpSceneIds );
					}
				}
				else if(exMenuOpen==1)
				{
					SceneManagerOpenCharaMakingFromDLC();
					suspend();
				}

				if(isInvited())
				{
					next = "sc_mainmenu"; player = ""; label  = "main"; args   = "";
				}

				while(true)
				{
					suspend();
					if(scr_IsFadeFinish())
						break;
				}

				while(true)
				{
					// ���j���[�̏���
					PlayMenu()

					// NowLoading Start
					if(gScaleformGameMode == "subMenu")
					{
						if(subMenuMode==SB_STAFFROLL)
						{
							GeminiNowLoadingStart();
							while(GeminiIsNowLoadingStart())
							{
								suspend();
							}
							suspend();

							GeminiNowLoadingPut(1);
							DrawWaitingOnMenuBG(false);
						}
						else
						{
							DrawWaitingOnMenuBG(true);
						}

						GraphicsCatalogDestroy();
						DestroyScaleformMenu(false);

						RequestMenu( SQ_THREAD_GAME );

						// �V�[�����������
						local releaseFlags = (1<<SCENE_GROUP_MENU) | (1<<SCENE_GROUP_HUD);
						SceneManagerOrderRelaseSceneByGroup(releaseFlags);

						break;
					}
					else
					{
						GeminiNowLoadingStart();
						while(GeminiIsNowLoadingStart())
						{
							suspend();
						}
						suspend();

						// �L�����y�[���ɐi�ޏꍇ�A�f�����Đ����邩������Ȃ��B
						local isChangeNextMode = true;
						if(gScaleformGameMode=="campaign")
						{
							SetStateDemo();
							SetupDrawLayerForDispModel();
							SetupCampaignDemo();
							StartOpeningCampaignDemo();
							ResetStateDemo();

							if(IsExistUserSignOutHistory())
							{
								isChangeNextMode = false;
							}
							if(isInvited())
							{
								isChangeNextMode = false;
								ReleaseCampaignDemo();
							}
						}

						if(isChangeNextMode)
						{
							GeminiNowLoadingPut(0);

							GraphicsCatalogDestroy();
							DestroyScaleformMenu(true);

							RequestMenu( SQ_THREAD_GAME );

							// �V�[�����������
							local releaseFlags = (1<<SCENE_GROUP_MENU)|(1<<SCENE_GROUP_HUD)|(1<<SCENE_GROUP_MENUBG);
							SceneManagerOrderRelaseSceneByGroup(releaseFlags);
							break;
						}
						else
						{
							StartMenuBG();
							// �t�F�[�h�C�������� 
							GeminiNowLoadingEnd();

							subMenuMode = MA_MAINMENU;
							fromSceneName = "";

							from = "";
							if(HasNextSceneForMenu())
							{
								//GetScene();
								next = GetNextSceneForMenu();
								player = GetNextMoviePlayerForMenu();
								label = GetNextLabelForMenu();
								args = GetNextArgsForMenu();
								StartMenuScene( from, next, player, label, args);
							}

							while(true)
							{
								suspend();
								if(scr_IsFadeFinish())
									break;
							}
						}
					}
				}

				// �O�̂���Sync���Ă��� 
				loadResidentResourceThreadSync();

			} break;
		case "subMenu":
			{
				// UI_StaffRoll
				local startUpSceneIds = "";

				// �Q�[���̃��\�[�X�ƃ��j���[�̃��\�[�X�����ւ���
				//print ( "@@@ subMenuMode : "+subMenuMode + "\n");

				switch(subMenuMode)
				{
				case SB_STAFFROLL:
					{
						changeResourceForMenu2();
						startUpSceneIds = SetupMenu2( SQ_THREAD_GAME );

						// �t�F�[�h������������ԂȂ� 
						if (!GeminiIsNowLoadingEnd()) {
							// NowLoading���t�F�[�h�����āA�t�F�[�h�A�E�g����܂ő҂� 
							GeminiNowLoadingStop();
							while (!GeminiIsNowLoadingStop())
							{
								suspend();
							}
						}

						from   = fromSceneName; next   = nextSceneName; player = ""; label  = ""; args   = "";
					}
					break;
				case SB_ITEMSPNNER:
					{
						changeResourceForMenu3();
						startUpSceneIds = SetupMenu3( SQ_THREAD_GAME );
						from   = fromSceneName;
						next   = nextSceneName;
						player = "itemspinner";
						args   = "";
						label  = "level1";
					}
					break;
				case SB_DLCMENU:
					{
						changeResourceForMenu4();
						startUpSceneIds = SetupMenu4( SQ_THREAD_GAME );
						if(fromSceneName=="CharacterMaking")
							from   = "custom";
						else 
							from   = fromSceneName;
						next   = nextSceneName; player = "DLCMenu"; label  = "dlc1"; args   = "";
					}
					break;
				case SB_HAPPYBOX:
					{
						changeResourceForMenu3();
						startUpSceneIds = SetupMenu3( SQ_THREAD_GAME );
						from   = fromSceneName;
						next   = nextSceneName;
						player = "itemspinner";
						args   = "";
						label  = "level4";
					}
					break;
				case SB_HAPPYBOX_LMT:
					{
						changeResourceForMenu3();
						startUpSceneIds = SetupMenu3( SQ_THREAD_GAME );
						from   = fromSceneName;
						next   = nextSceneName;
						player = "itemspinner";
						args   = "";
						label  = "level5";
					}
					break;
				case SB_CROSSPLATFORM:
					{

						SetupLanguageForFont(false);
						while(!IsEndSetupLanguageForFont())
						{
							suspend();
						}
						changeResourceForMenu5();

						startUpSceneIds = SetupMenu5( SQ_THREAD_GAME );
						from   = fromSceneName;
						next   = nextSceneName;
						player = "";
						args   = "";
						label  = "";
					}
					break;
				};

				DrawWaitingOnMenuBG(false);

				nextSceneName = "";

				// �Đ����郁�j���[��I��
				StartMenuScene( from, next, player, label, args);
				suspend();

				switch(subMenuMode)
				{
				case SB_STAFFROLL:
					{
						// �X�^�b�t���[���ł�BG�͕\���Ȃ��B
						DrawMenuBG(false);

						for (local i=0; i<40; ++i) { suspend(); }

						// �t�F�[�h�C�������� 
						GeminiNowLoadingEnd();

						startStaffroll();

						//suspend();

						// ���j���[�̏���
						while(true)
						{
							suspend();
							if(scr_IsFadeFinish())
								break;
						}
					}
					break;
				}

				print ( "@@@ loop  : "+subMenuMode + "\n");

				while( true )
				{
					suspend();
					grahicsMouse();

					local notFindScene = SceneManagerNotFindCurrent();
					if(notFindScene!="")
					{
						local sceneName = SceneManagerGetSceneName();
						if(SceneManagerIsWaitCurrentScene(sceneName))
							break;
					}
				}

				gScaleformGameMode = "menu";

				switch(subMenuMode)
				{
				case SB_STAFFROLL:
					{
						local notFindScene = SceneManagerNotFindCurrent();
						if(notFindScene=="title")
						{
							from   = "staffroll"; next   = "title"; player = "multiplay_true"; label  = "Start"; args   = "";
						}
						else if(notFindScene=="sc_mainmenu")
						{
							from   = "staffroll"; next   = "sc_mainmenu"; player = "multiplay_true"; label  = "main"; args   = "";
						}
						else
						{
							from   = "staffroll"; next   = "option"; player = "option"; label  = "1"; args   = "";
						}
						//GeminiNowLoadingStartJustNow();
						GeminiNowLoadingPut(1);
					}
					break;
				case SB_ITEMSPNNER:
					{
						local notFindScene = SceneManagerNotFindCurrent();

						print("from   " + from    + "\n" );
						print("next   " + next    + "\n" );
						print("player " + player  + "\n" );
						print("label  " + label   + "\n" );
						print("args   " + args    + "\n" );

						if(notFindScene=="title")
						{
							from   = "sc_itemspinner"; next   = "title"; player = "multiplay_true"; label  = "Start"; args   = "";
						}
						else if(notFindScene=="sc_mainmenu")
						{
							from   = "sc_itemspinner"; next   = "sc_mainmenu"; player = "multiplay_true"; label  = "main"; args   = "";
						}
						else
						{
							from   = "sc_itemspinner"; next   = "sc_gameplay"; player = "multiplay_true"; label  = "gamePlay"; args   = "";
						}
						DrawWaitingOnMenuBG(true);
					}
					break; 
				case SB_DLCMENU:
					{
						local notFindScene = SceneManagerNotFindCurrent();
						if(notFindScene=="title")
						{
							from   = "sc_dlcmenu"; next   = "title"; player = "multiplay_true"; label  = "Start"; args   = "";
						}
						else if(notFindScene=="sc_mainmenu")
						{
							from   = "sc_dlcmenu"; next   = "sc_mainmenu"; player = "multiplay_true"; label  = "main"; args   = "";
						}
						else if(fromSceneName=="CharacterMaking")
						{
							// �������"menu"���[�h�Ɉڂ��Ă��画�肵�܂��B
							//from   = "sc_dlcmenu"; next   = "CharacterMaking"; player = "CharacterMaking"; label  = ""; args   = "";
							//SceneManagerOpenCharaMakingFromDLC();
						}
						else
						{
							from   = "sc_dlcmenu"; next   = "sc_gameplay"; player = "multiplay_true"; label  = "gameplay"; args   = "";
						}
						DrawWaitingOnMenuBG(true);
					}
					break; 
				case SB_HAPPYBOX:
					{
						local notFindScene = SceneManagerNotFindCurrent();

						print("from   " + from    + "\n" );
						print("next   " + next    + "\n" );
						print("player " + player  + "\n" );
						print("label  " + label   + "\n" );
						print("args   " + args    + "\n" );

						if(notFindScene=="title")
						{
							from   = "sc_happybox"; next   = "title"; player = "multiplay_true"; label  = "Start"; args   = "";
						}
						else if(notFindScene=="sc_mainmenu")
						{
							from   = "sc_happybox"; next   = "sc_mainmenu"; player = "multiplay_true"; label  = "main"; args   = "";
						}
						else
						{
							from   = "sc_happybox"; next   = "sc_gameplay"; player = "multiplay_true"; label  = "gamePlay"; args   = "";
						}
						DrawWaitingOnMenuBG(true);
					}
					break; 
				case SB_HAPPYBOX_LMT:
					{
						local notFindScene = SceneManagerNotFindCurrent();

						print("from   " + from    + "\n" );
						print("next   " + next    + "\n" );
						print("player " + player  + "\n" );
						print("label  " + label   + "\n" );
						print("args   " + args    + "\n" );

						if(notFindScene=="title")
						{
							from   = "sc_happybox"; next   = "title"; player = "multiplay_true"; label  = "Start"; args   = "";
						}
						else if(notFindScene=="sc_mainmenu")
						{
							from   = "sc_happybox"; next   = "sc_mainmenu"; player = "multiplay_true"; label  = "main"; args   = "";
						}
						else
						{
							from   = "sc_happybox"; next   = "sc_gameplay"; player = "multiplay_true"; label  = "gamePlay"; args   = "";
						}
						DrawWaitingOnMenuBG(true);
					}
					break; 
				case SB_CROSSPLATFORM:
					{
						local notFindScene = SceneManagerNotFindCurrent();

						print("from   " + from    + "\n" );
						print("next   " + next    + "\n" );
						print("player " + player  + "\n" );
						print("label  " + label   + "\n" );
						print("args   " + args    + "\n" );

						if(notFindScene=="title")
						{
							from   = "crossPlatform"; next   = "title"; player = "multiplay_true"; label  = "Start"; args   = "";
						}
						else if(notFindScene=="sc_mainmenu")
						{
							from   = "crossPlatform"; next   = "sc_mainmenu"; player = "multiplay_true"; label  = "main"; args   = "";
						}
						DrawWaitingOnMenuBG(true);
					}
					break; 
				}

				GraphicsCatalogDestroy();
				DestroyScaleformMenu(false);

				RequestMenu( SQ_THREAD_GAME );

				//// �V�[�����������
				//local releaseFlags = (1<<SCENE_GROUP_MENU) | (1<<SCENE_GROUP_HUD);
				//SceneManagerOrderRelaseSceneByGroup(releaseFlags);
				
				// �O�̂���Sync���Ă��� 
				loadResidentResourceThreadSync();

			} break;
		}

		preMode = nextMode;
		nextMode = gScaleformGameMode;

		gScaleformGameMode = "";

		if( ("" == nextMode) || ("exit" == nextMode) )
			break;
	}


	// Menu, HUD �̊J��.
	DestroyScaleformMenu(true);
	DestroyScaleformHUD();

	GeminiPostEscape();
	while(1){ suspend(); }
}

//-----------------------------------------------------------------------------
//	�Q�[�����s
function relaseGeminiRunGame( thread_id ) {
	// �Q�[���v���C 
	ezGamePlay( 0, thread_id, true );
}

