/* XDASEA_Xm8R_SPsX */ 
//
//	GUIViewer�̃V�[�P���X
//

class GUIViewerConfig
{
	gui_list = null;
	lang_list = null;
	items = null;

	constructor()
	{
		gui_list = [ "HUD", "MENU", "DIALOG", "NOW_LOADING", "BILLBOARD"];
		lang_list = [ "JAPANESE", "US_ENGLISH" , "ITALIAN", "FRENCH", "GERMAN", "SPANISH", "CHINESE_H", "KOREAN", ];

		local index = 0;
		items = [	MenuItemSelector( 0,	index++,	"GUI",		gui_list,	0),
					MenuItemSelector( 0,	index++,	"LANGUAGE",	lang_list,	0),
				];
	}
}

class GUIViewerSceneMenu
{
	scene_list = null;
	sceneParam_list = null;
	isRefresh = null;
	items = null;
	
	constructor()
	{
		scene_list = [ 
			"title"            ,
			"sc_dlcmenu"       ,
			"sc_ranking"       ,
			"sc_result"        ,
			"sc_state"         ,
			"sc_campaignPanel" ,
			"sc_campaign"      ,
			"sc_itemspinner"   ,
			"sc_mainmenu"      ,
			"sc_gameplay"      ,
			"multiplay"        ,
			"sc_lobby"         ,
			"sc_coopmenu"      ,
			"sc_challengecoop" ,
			"sc_commenu"       ,
			"sc_comlevel"      ,
			"sc_singlemode"    ,
			"sc_tutorialmenu"  ,
			"sc_cooplobby"     ,
			"sc_commercial"    ,
			"sc_itemSynt"       ,
			"sc_itemEnh"       ,
			"sc_itemget"       ,
			"sc_bonusGet"      ,
			// "custom"           ,// �e�N�X�`���Ƃꂸ�ɂ�����
			"option"           ,
			"crossPlatform"    ,
		];

		sceneParam_list = [ 
			["title"            , "multiplay_new"   , "Start"            , ""      ],
			["sc_dlcmenu"       , "DLCMenu"         , "dlc1"             , ""      ],
			["sc_ranking"       , "ranking"         , "ranking"          , ""      ],
			["sc_result"        , "result"          , "r0"               , ""      ],
			["sc_state"         , "result"          , "s0"               , ""      ],
			["sc_campaignPanel" , "campaign"        , "selectPanel"      , ""      ],
			["sc_campaign"      , "campaign"        , "c5"               , ""      ],
			["sc_itemspinner"   , "itemspinner"     , "menu"             , ""      ],
			["sc_mainmenu"      , "multiplay_new"   , "main"             , ""      ],
			["sc_gameplay"      , "multiplay_new"   , "gamePlay"         , ""      ],
			["multiplay"        , "multiplay"       , "a2"               , ""      ],
			["sc_lobby"         , "multiplay"       , "a3"               , ""      ],
			["sc_coopmenu"      , "multiplay_new"   , "coopmenu"         , ""      ],
			["sc_challengecoop" , "multiplay_new"   , "challengecoop"    , ""      ],
			["sc_commenu"       , "multiplay_new"   , "commenu"          , ""      ],
			["sc_comlevel"      , "multiplay_new"   , "comlevel"         , ""      ],
			["sc_singlemode"    , "multiplay_new"   , "singlemode"       , ""      ],
			["sc_tutorialmenu"  , "multiplay_new"   , "tutorialmenu"     , ""      ],
			["sc_cooplobby"     , "multiplay_new"   , "coopLobby"        , ""      ],
			["sc_commercial"    , "Intro"           , "start"            , ""      ],
			["sc_itemSynt"      , "ItemEnhancement" , "Enhancement"      , ""      ],
			["sc_itemEnh"       , "ItemEnhancement" , "Synthesis"        , ""      ],
			["sc_itemget"       , "pointget"        , "start"            , ""      ],
			["sc_bonusGet"      , "pointget"        , "bonus"            , ""      ],
			// ["custom"           , "custom"          , "1"                , ""      , startCustomFromGuiViewer], // �e�N�X�`���Ƃꂸ�ɂ�����
			["option"           , "option"          , "1"                , ""      ],
			["crossPlatform"    , ""                , ""                 , ""      ],
		];

		isRefresh  = [ 
			false ,     //"title"            ,
			false ,     //"sc_dlcmenu"       ,
			false ,     //"sc_ranking"       ,
			false ,     //"sc_result"        ,
			false ,     //"sc_state"         ,
			false ,     //"sc_campaignPanel" ,
			false ,     //"sc_campaign"      ,
			false ,     //"sc_itemspinner"   ,
			false ,     //"sc_mainmenu"      ,
			false ,     //"sc_gameplay"      ,
			false ,     //"multiplay"        ,
			false ,     //"sc_lobby"         ,
			false ,     //"sc_coopmenu"      ,
			false ,     //"sc_challengecoop" ,
			false ,     //"sc_commenu"       ,
			false ,     //"sc_comlevel"      ,
			false ,     //"sc_singlemode"    ,
			false ,     //"sc_tutorialmenu"  ,
			false ,     //"sc_cooplobby"     ,
			false ,     //"sc_commercial"    ,
			true  ,     //"sc_itemSynt"       ,
			true  ,     //"sc_itemEnh"       ,
			true  ,     //"sc_itemget"       ,
			true  ,     //"sc_bonusGet"      ,
			// false ,     //"custom"           ,// �e�N�X�`���Ƃꂸ�ɂ�����
			false ,     //"option"           ,
			true  ,     //"crossPlatform"    ,
		];

		local index = 0;
		items = [	MenuItemSelector( 0,	index++,	"SCENE",	scene_list,	0),
				];

	}
}

function SetUpLanguage( langIndex )
{
	ScaleformSetLanguage( langIndex ); // 0...Japanese 1...English ...
	while( false == ScaleformLanguageReady() )
	{
		suspend();
	}
}

function GUIViewerStart()
{
	if ( SQ_THREAD_STATE_RUNNING != GetThreasState( SQ_THREAD_GAME ) )
	{
		RunScriptFunction( SQ_THREAD_GAME, "startGUIViewerThread" );
	}
	SetPatternThreadId( SQ_THREAD_GAME, SQ_THREAD_PATTERN_ALWAYS );
	ChangeForcusThreadId( -1 );		// �f�o�b�O���j���[����� 
}








function updateSubMenu(guiViewerConfig, gui_view_menu_sub, guiViewerSceneMenu)
{
	local selectedGUI = guiViewerConfig.items[0].getValiable();
	local selectedSceneMenu = -1;

	suspend();
	suspend();
	suspend();
	suspend();


	switch (selectedGUI)
	{
	case guiViewerConfig.gui_list[0]:	// HUD 
		{
			selectedSceneMenu = 0;
		}
		break;
	case guiViewerConfig.gui_list[1]:	// MENU 
		{
			while(true)
			{
				selectedSceneMenu = gui_view_menu_sub.update();

				if (selectedSceneMenu==0	// Scene 
				||	selectedSceneMenu==1)	// Back 
				{
//					print("*** escape selectSceneMenu.\n");
//					print("selectedSceneMenu: " + selectedSceneMenu + "\n");
					break;
				}

				gui_view_menu_sub.draw( 400, 32, 22 );
				grahicsMouse();
				
				// �I�� 
				if (DebugPadIsTrigger(::PAD_BACK) || ihp.GetGameKeyboard().IsPush( 'X' ) )
				{
					return 0;
				}

				suspend();
			}
		}
		break;
	case guiViewerConfig.gui_list[2]:	// DIALOG 
	case guiViewerConfig.gui_list[3]:	// NOW_LOADING
	case guiViewerConfig.gui_list[4]:	// BILLBORAD
		{
			selectedSceneMenu = 0;
		}
		break;

	default:
		print("GUIViewer: default\n");
		break;
	}
	
	if(selectedSceneMenu==-1)
	{
		return 0;
	}
	else if (selectedSceneMenu==1)	// Quit: �f�o�b�O���j���[�֖߂� 
	{
		return 0;
	}
	return 1;
}

function guiViewerSetup(guiViewerConfig, gui_view_menu_sub, guiViewerSceneMenu)
{
	local selectedGUI = guiViewerConfig.items[0].getValiable();

	switch (selectedGUI)
	{
	case guiViewerConfig.gui_list[0]:	// HUD 
		{
			// UI_hud.bres 
			LoadScaleformHUD();
			CreateScaleformHUD();	// HUD�쐬 ( CreateGUIViewer���O�ɂ�� )
		}
		break;
	case guiViewerConfig.gui_list[1]:	// MENU 
		{
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

			local startUpSceneIds = SetupMenu( SQ_THREAD_GAME );

			// �t�F�[�h������������ԂȂ� 
			if (!GeminiIsNowLoadingEnd()) {
				// NowLoading���t�F�[�h�����āA�t�F�[�h�A�E�g����܂ő҂� 				
				GeminiNowLoadingStop();
				while (!GeminiIsNowLoadingStop())
				{
					suspend();
				}
			}
		}
		break;
	case guiViewerConfig.gui_list[2]:	// DIALOG 
	case guiViewerConfig.gui_list[3]:	// NOW_LODING
		{
			// UI_common.bres
			LoadScaleformCommon();	// �X�P�[���t�H�[���풓�f�[�^ 
			JsonSerializeLoadFromFile( "GameEnvironment,StaticParam", "json/game/KeyboardCustomize.json" );
			SetKeyCustomize();
			buildSceneForCommon();		
		}
		break;
	case guiViewerConfig.gui_list[4]:	// BILLBORAD
		{
			ScaleformBresLoadRequest("UI_debug.bres", false);
			while( false == ScaleformBresIsLoadComplete() )
			{
				suspend();
			}
			
			//�t�H���g�̏�����
			ScaleformInitializeLanguage();
			while( false == ScaleformLanguageReady() )
			{
				suspend();
			}
			
			SetUpLanguage(guiViewerConfig.items[1].getIndex());
			
			local scene	= SceneManagerAddSceneWithController("billborad_test", SCENE_GROUP_COMMON, createBillboradTestController() );
			scene.loadMoviePlayerDetail("test", 0, GFXLL_TOPLEVEL, GFXLL_SUB_PLANE_1, false, false);
			SceneManagerAddCurrentScene("billborad_test");
		}
		break;
	}
	suspend();
	return 1;
}

function updateGUIViewer(guiViewerConfig, gui_view_menu_sub, guiViewerSceneMenu)
{
	local selectedGUI = guiViewerConfig.items[0].getValiable();

	if(selectedGUI==guiViewerConfig.gui_list[3])
	{
		setLoadingVisibleForce(true);
		setLoadingVisible(true, LOADING_TYPE_TIPS_DEBUG);
		setLoadingVisibleBlock(true);	// ����ȍ~�̖��߂͂�������肤

		while(1)
		{
			suspend();

			if(!isLoadingVisible()) {
				break;
			}
		}

		setLoadingVisibleBlock(false); // ����
		setLoadingVisible(false, LOADING_TYPE_TIPS_DEBUG);
		setLoadingVisibleForce(false);

		return 1;
	}
	
	if(selectedGUI==guiViewerConfig.gui_list[4])
	{
		while(1)
		{
			if (DebugPadIsTrigger(::PAD_BACK) )
			{
				break;
			}
			suspend();
		}
		
		
		return 1;
	}

	CreateGUIViewer(guiViewerConfig.items[0].getValiable(), guiViewerConfig.items[1].getValiable());

	// �R���g���[���̏����� 
	if(selectedGUI==guiViewerConfig.gui_list[0] || selectedGUI==guiViewerConfig.gui_list[2] ) 
	{
		switch (selectedGUI)
		{
		case guiViewerConfig.gui_list[0]:	// HUD 
			{
//				print("*** SceneManagerAddScene(go_hudviewer,SCENE_GROUP_HUD); ***");
				local scene = SceneManagerAddScene("go_hudviewer",SCENE_GROUP_HUD);
				//scene.addMoviePlayer("go_hudviewer");
				SceneManagerAddCurrentScene("go_hudviewer");
			}
			break;
		case guiViewerConfig.gui_list[2]:	// DIALOG 
			{
//				print("*** SceneManagerAddScene(go_dialogviewer,SCENE_GROUP_COMMON); ***");
				local scene = SceneManagerAddScene("go_dialogviewer",SCENE_GROUP_COMMON);
				//scene.addMoviePlayer("go_dialogviewer");
				SceneManagerAddCurrentScene("go_dialogviewer");
			}
			break;
		default:
			return 0;
			break;
		}
		
		// �R���g���[�����쒆 
		while(true)
		{
			suspend();
			
			//windowSample_.exec();
			//windowSample_.draw();
			grahicsMouse();
			
			// �I�� 
			if (DebugPadIsTrigger(::PAD_BACK) || ihp.GetGameKeyboard().IsPush( 'X' ) )
			{
				break;
			}
		}
		return 1;
	}
	else if(selectedGUI==guiViewerConfig.gui_list[1])
	{
		{
			StartMenuBG();

			local index = guiViewerSceneMenu.items[0].getIndex();
			//print("scene: " + guiViewerSceneMenu.sceneParam_list[index][0] + "\n");
			//print("scene: " + guiViewerSceneMenu.sceneParam_list[index][1] + "\n");
			//print("scene: " + guiViewerSceneMenu.sceneParam_list[index][2] + "\n");
			//print("scene: " + guiViewerSceneMenu.sceneParam_list[index][3] + "\n");

			local from  	= "";
			local next  	= guiViewerSceneMenu.sceneParam_list[index][0];
			local player	= guiViewerSceneMenu.sceneParam_list[index][1];
			local label 	= guiViewerSceneMenu.sceneParam_list[index][2];
			local args  	= guiViewerSceneMenu.sceneParam_list[index][3];
			local exStartup = (4<guiViewerSceneMenu.sceneParam_list[index].len()) ? guiViewerSceneMenu.sceneParam_list[index][4] : null;
			
			
			StartMenuBG();
			
			// �t�F�[�h�C�������� 
			GeminiNowLoadingEnd();

			if(!exStartup)
			{
				StartMenuScene( from, next, player, label, args);
			}
			else
			{
				exStartup();
			}
		}

		// �R���g���[�����쒆 
		while(true)
		{
			suspend();
			if(scr_IsFadeFinish())
				break;
		}

		while( true )
		{
			suspend();
			grahicsMouse();

			local index = guiViewerSceneMenu.items[0].getIndex();
			local next   = guiViewerSceneMenu.sceneParam_list[index][0];

			if(guiViewerSceneMenu.isRefresh[index])
				SceneManagerCallRefreshScreen(next);

			// �I�� 
			if (DebugPadIsTrigger(::PAD_BACK) || ihp.GetGameKeyboard().IsPush( 'X' ) )
			{
				SceneManagerDelCurrentScene(next);
				break;
			}
		}
		return 1;
	}
	return 1;
}




function startGUIViewerThread()
{
	// GUIViewer menu
	local selected = -1;
	local gui_view_menu = MenuPage();
	local guiViewerConfig = GUIViewerConfig();
	
	//local selectedGUI = -1;

	gui_view_menu.addMenu(0, " GUIViewer ");
	foreach( item in guiViewerConfig.items )
	{
		gui_view_menu.addItemObj(item);
	}
	gui_view_menu.addItem( 0, 2, "Quit" );

	// sub menu in MENU 
	local gui_view_menu_sub = MenuPage();
	local guiViewerSceneMenu = GUIViewerSceneMenu();
	
	gui_view_menu_sub.addMenu(0, " MenuSceneSelect ");
	foreach( item in guiViewerSceneMenu.items )
	{
		gui_view_menu_sub.addItemObj(item);
	}
	gui_view_menu_sub.addItem( 0, 1, "Quit" );

	// �t�H�[�J�X�������A�t�H�[�J�X�����鎞�̂݃X���b�h�������悤�ɂ��� 
	EnableForcusThreadId( SQ_THREAD_GAME, true );

	while(true)
	{
		selected = -1;
		
		while(true)
		{
			selected = gui_view_menu.update();

			if(selected==0	// HUD, MENU, DIALOG 
			|| selected==1	// LANGUAGE 
			|| selected==2)	// Quit 
			{
				break;
			}
			
			// �I�� 
			if (DebugPadIsTrigger(::PAD_BACK) || ihp.GetGameKeyboard().IsPush( 'X' ) )
			{
				selected = 2;
				break;
			}
			gui_view_menu.draw( 400, 32, 22 );
			grahicsMouse();

			suspend();
		}

		print("selected " + selected + "\n");

		if(selected==2)		// Quit: �f�o�b�O���j���[�֖߂� 
			break;

		{
			local selectedGUI = guiViewerConfig.items[0].getValiable();

			switch (selectedGUI)
			{
			case guiViewerConfig.gui_list[1]:	// MENU 
				{
					SetPlayBgm(true);
					SetPadVibration(true);

					//	�풓���\�[�X�̃��[�h
					loadResidentResourceThreadStart();
				}
				break;
			}

			guiViewerSetup(guiViewerConfig, gui_view_menu_sub, guiViewerSceneMenu);

			while(true)
			{
				if(updateSubMenu(guiViewerConfig, gui_view_menu_sub, guiViewerSceneMenu)==0)
					break;

				// ����ݒ� 
				SetUpLanguage( guiViewerConfig.items[1].getIndex() );

				suspend();
				suspend();
				suspend();

				updateGUIViewer(guiViewerConfig, gui_view_menu_sub, guiViewerSceneMenu);

				if(selectedGUI!=guiViewerConfig.gui_list[1])
					break;
			}

			suspend();
			suspend();
			suspend();
			
			// �R���g���[���̔j�� 
			local selectedGUI = guiViewerConfig.items[0].getValiable();
			switch (selectedGUI)
			{
			case guiViewerConfig.gui_list[0]:	// HUD 
				{
					DestroyGUIViewer();

					ScaleformBresDestroyRequest();

					DestroyScaleformHUD();
					ReleaseScaleformHUD();

//					print("*** SceneManagerDelScene(go_hudviewer); ***");
					//SceneManagerDelScene("go_hudviewer");
				}
				break;
			case guiViewerConfig.gui_list[1]:	// MENU 
				{
					DestroyGUIViewer();

					RequestMenu( SQ_THREAD_GAME );

					if( menuResourceOnMemory )
					{
						releaseMenu();
						menuResourceOnMemory = false;
					}
				}
				break;
			case guiViewerConfig.gui_list[2]:	// DIALOG 
				{
					DestroyGUIViewer();

					ScaleformBresDestroyRequest();

//					print("*** SceneManagerDelScene(go_dialogviewer); ***");
					//SceneManagerDelScene("go_dialogviewer");
				}
				break;
			case guiViewerConfig.gui_list[3]:	// NOW_LOADING
				{
					ScaleformBresDestroyRequest();

					RequestMenu( SQ_THREAD_GAME );
				}
				break;
			case guiViewerConfig.gui_list[4]:	// BILLBOARD
				{
					SceneManagerRelaseAllScene();
					
					// 3�t������΂����Ă�
					suspend();
					suspend();
					suspend();
					
					ScaleformBresDestroyRequest();
					while(ScaleformBresIsDestroyComplete==false)
					{
						suspend();
					}
					
					suspend();
				}
				break;
			default:
				break;
			}
		}

		EnableForcusThreadId( SQ_THREAD_GAME, false );
		suspend();
	}

	suspend();
	debugMenuWakeup();		


}






