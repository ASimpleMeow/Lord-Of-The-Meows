//Maya ASCII 2015 scene
//Name: FirstModel_temp.ma
//Last modified: Mon, Sep 25, 2017 06:30:22 PM
//Codeset: 1252
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.16 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.21941704875494034 2.7723408763771786 3.9646313981940571 ;
	setAttr ".r" -type "double3" -15.338352729577599 -0.60000000000031917 3.7274168939733566e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 4.1466784882933378;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".t" -type "double3" 0.10711609273007158 1.6046412234705052 100.24882615633608 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.9287973412040942;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".t" -type "double3" 100.24882615633618 1.1085520514988569 0.10280394397422102 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 6.1833126871507904;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "imagePlane1";
	setAttr ".t" -type "double3" 0 1.6300000000000001 -12 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	setAttr -k off ".v";
	setAttr ".fc" 50;
	setAttr ".imn" -type "string" "C:/Users/Oleksandr/Desktop/Other/Maya Projects/FirstModel/sourceimages/LowPolyChar_RefImages/front.png";
	setAttr ".cov" -type "short2" 255 356 ;
	setAttr ".dlc" no;
	setAttr ".w" 2.55;
	setAttr ".h" 3.5599999999999996;
createNode transform -n "imagePlane2";
	setAttr ".t" -type "double3" -12 1.63 -9.8607613152626476e-032 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode imagePlane -n "imagePlaneShape2" -p "imagePlane2";
	setAttr -k off ".v";
	setAttr ".fc" 50;
	setAttr ".imn" -type "string" "C:/Users/Oleksandr/Desktop/Other/Maya Projects/FirstModel/sourceimages/LowPolyChar_RefImages/side.png";
	setAttr ".cov" -type "short2" 255 356 ;
	setAttr ".dlc" no;
	setAttr ".w" 2.55;
	setAttr ".h" 3.5599999999999996;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0 1.1730474116434406 0 ;
	setAttr ".s" -type "double3" 0.50696308910906573 0.8472302240586711 1 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.21627511084079742 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 57 ".pt";
	setAttr ".pt[18]" -type "float3" 0.29547122 0 0.074854225 ;
	setAttr ".pt[19]" -type "float3" -0.099135883 0 -0.012903027 ;
	setAttr ".pt[20]" -type "float3" 0.26470223 0 0.049765188 ;
	setAttr ".pt[21]" -type "float3" -0.0041630697 0 -0.010028231 ;
	setAttr ".pt[22]" -type "float3" -0.15750979 0 0.44734833 ;
	setAttr ".pt[23]" -type "float3" -0.33068278 0 0.40922129 ;
	setAttr ".pt[24]" -type "float3" -0.16630447 0 0.43081698 ;
	setAttr ".pt[25]" -type "float3" -0.28429571 0 0.40483913 ;
	setAttr ".pt[38]" -type "float3" -0.037669685 0 0.3412717 ;
	setAttr ".pt[39]" -type "float3" -0.2588245 0 0.29258066 ;
	setAttr ".pt[40]" -type "float3" -0.20199725 0 0.28980055 ;
	setAttr ".pt[41]" -type "float3" -0.051313661 0 0.32297623 ;
	setAttr ".pt[42]" -type "float3" -0.30463704 0 0.58194911 ;
	setAttr ".pt[43]" -type "float3" -0.42222115 0 0.55606061 ;
	setAttr ".pt[44]" -type "float3" -0.30287617 0 0.57156456 ;
	setAttr ".pt[45]" -type "float3" -0.39644921 0 0.55096275 ;
	setAttr ".pt[63]" -type "float3" -0.38314092 0 0.59055775 ;
	setAttr ".pt[64]" -type "float3" -0.44511399 0 0.56964195 ;
	setAttr ".pt[65]" -type "float3" -0.30258292 0 0.60102272 ;
	setAttr ".pt[66]" -type "float3" -0.36455643 0 0.58010727 ;
	setAttr ".pt[94]" -type "float3" 0.092817388 0 0.032826763 ;
	setAttr ".pt[96]" -type "float3" 0.33537602 0 0.074605584 ;
	setAttr ".pt[98]" -type "float3" 0.13561986 0 0.018017264 ;
	setAttr ".pt[99]" -type "float3" -0.10693888 0 -0.023761503 ;
	setAttr ".pt[100]" -type "float3" -0.17377982 0 0.1371519 ;
	setAttr ".pt[101]" -type "float3" 0.12962508 0 0.20395195 ;
	setAttr ".pt[102]" -type "float3" -0.15184565 0 0.31868258 ;
	setAttr ".pt[103]" -type "float3" 0.10766868 0 0.18263191 ;
	setAttr ".pt[104]" -type "float3" -0.013505074 0 0.33894619 ;
	setAttr ".pt[105]" -type "float3" -0.099055953 0 0.13711771 ;
	setAttr ".pt[106]" -type "float3" -0.12305672 0 0.30463204 ;
	setAttr ".pt[107]" -type "float3" -0.26139736 0 0.28436837 ;
	setAttr ".pt[128]" -type "float3" -0.29717916 0 0.36267823 ;
	setAttr ".pt[129]" -type "float3" -0.1131188 0 0.40320241 ;
	setAttr ".pt[130]" -type "float3" -0.24722901 0 0.43002763 ;
	setAttr ".pt[131]" -type "float3" -0.24842319 0 0.3586596 ;
	setAttr ".pt[132]" -type "float3" -0.33175299 0 0.4016881 ;
	setAttr ".pt[133]" -type "float3" -0.1230138 0 0.38627064 ;
	setAttr ".pt[134]" -type "float3" -0.2221674 0 0.41608524 ;
	setAttr ".pt[135]" -type "float3" -0.1376435 0 0.44442478 ;
	setAttr ".pt[136]" -type "float3" -0.40117395 0 0.49398637 ;
	setAttr ".pt[137]" -type "float3" -0.23163015 0 0.53131455 ;
	setAttr ".pt[138]" -type "float3" -0.24005811 0 0.51491648 ;
	setAttr ".pt[139]" -type "float3" -0.35557675 0 0.48948312 ;
	setAttr ".pt[148]" -type "float3" -0.39609492 0 0.61130142 ;
	setAttr ".pt[167]" -type "float3" -0.026474616 0 0.17233145 ;
	setAttr ".pt[168]" -type "float3" 0.16115783 0 0.20265141 ;
	setAttr ".pt[169]" -type "float3" 0.0087036798 0 0.15809533 ;
	setAttr ".pt[170]" -type "float3" -0.1789287 0 0.12777528 ;
	setAttr ".pt[183]" -type "float3" -0.20838737 0 0.38468617 ;
	setAttr ".pt[184]" -type "float3" -0.2985903 0 0.35499093 ;
	setAttr ".pt[185]" -type "float3" -0.1824801 0 0.37071925 ;
	setAttr ".pt[186]" -type "float3" -0.092277221 0 0.40041447 ;
	setAttr ".pt[187]" -type "float3" -0.31949964 0 0.5143922 ;
	setAttr ".pt[188]" -type "float3" -0.21208894 0 0.52834564 ;
	setAttr ".pt[189]" -type "float3" -0.29471987 0 0.50045806 ;
	setAttr ".pt[190]" -type "float3" -0.40213048 0 0.48650461 ;
	setAttr ".dr" 1;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" 0 1.1730474116434406 0 ;
	setAttr ".s" -type "double3" -0.50696308910906573 0.8472302240586711 1 ;
parent -s -nc -r -add "|pCube1|pCubeShape1" "pCube2" ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 48 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1.0 1.0 1.0";
	setAttr ".stringOptions[47].type" -type "string" "color";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n"
		+ "            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n"
		+ "                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"flat\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n"
		+ "                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"flat\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n"
		+ "                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n"
		+ "            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"flat\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "Ref";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".wt" 0.73020088672637939;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".wt" 0.49845477938652039;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[23]" "e[25]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".wt" 0.5197681188583374;
	setAttr ".re" 5;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.81562471 0.068564221 ;
	setAttr ".rs" 53474;
	setAttr ".lt" -type "double3" 1.5177184655942737e-016 6.086537635820843e-018 0.050680543925973036 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.30001101318928469 0.7308355402028851 -0.19831761717796326 ;
	setAttr ".cbx" -type "double3" 0.30001101318928469 0.90041388191900373 0.3354460597038269 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[0:19]" -type "float3"  0.41168287 -0.021950061 -0.23899493
		 -0.41168287 -0.021950061 -0.23899493 0.065100111 0 -0.35261583 -0.065100111 0 -0.35261583
		 0.065100111 0 0.37612355 -0.065100111 0 0.37612355 0.41168287 -0.021950061 0.36436972
		 -0.41168287 -0.021950061 0.36436972 0 0 -0.22332315 0 0 -0.22332315 0 0 0.28992853
		 0 0 0.28992853 8.0901198e-005 0.065850191 -0.18022572 -8.0901198e-005 0.065850191
		 -0.18022572 -8.0901198e-005 0.065850191 0.30951831 8.0901198e-005 0.065850191 0.30951831
		 0.091780774 -0.010975033 -0.16455393 -0.091780774 -0.010975033 -0.16455393 -0.091780774
		 -0.010975033 0.30168238 0.091780774 -0.010975033 0.30168238;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[4:5]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.77341169 0.068564221 ;
	setAttr ".rs" 55467;
	setAttr ".lt" -type "double3" 1.1102230246251565e-016 -7.5667310592219177e-018 0.71855890551957879 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.21220235643200935 0.7185661865194154 -0.10406718403100967 ;
	setAttr ".cbx" -type "double3" 0.21220235643200935 0.82825722727127893 0.24119561910629272 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[20:27]" -type "float3"  -0.050726652 0.035342991 0.072112113
		 -0.050726652 0.035342991 -0.06796129 -0.22852698 -0.035342991 0.094250433 -0.22852698
		 -0.035342991 -0.094250433 0.050726652 0.035342991 0.072112113 0.050726652 0.035342991
		 -0.06796129 0.22852698 -0.035342991 -0.094250433 0.22852698 -0.035342991 0.094250433;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 2 "f[7]" "f[9]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.4823714 0.03330268 ;
	setAttr ".rs" 52174;
	setAttr ".lt" -type "double3" 1.4484941024406339e-016 9.8493851471175211e-018 0.044817653786745133 ;
	setAttr ".ls" -type "double3" 1 1 2.3132369297431081 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.25348154455453287 1.3680805604831359 -0.21007147431373596 ;
	setAttr ".cbx" -type "double3" 0.25348154455453287 1.5966623216773499 0.27667683362960815 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[28:35]" -type "float3"  -0.54645932 0.065646142 0.098539405
		 -0.54645932 0.065646142 -0.092867374 -0.74931699 -0.065646 0.12879086 -0.74931699
		 -0.065646 -0.12879086 0.54645944 0.065646142 0.098539405 0.54645944 0.065646142 -0.092867374
		 0.74931699 -0.065646 -0.12879086 0.74931699 -0.065646 0.12879086;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 2 "f[7]" "f[9]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.4887757 0.03330268 ;
	setAttr ".rs" 62817;
	setAttr ".lt" -type "double3" -2.6367796834847468e-016 1.6953537453525548e-016 0.78722378685145233 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.24947043243828451 1.3930456296959099 -0.17054776847362518 ;
	setAttr ".cbx" -type "double3" 0.24947043243828451 1.5845058834371215 0.23715312778949738 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[36:43]" -type "float3"  0.095408872 0.021907521 -0.039523706
		 0.095408872 0.021907521 0.039523706 0.084836677 -0.021907521 -0.018526714 0.084836677
		 -0.021907521 0.02552573 -0.095408872 0.021907521 0.039523706 -0.095408872 0.021907521
		 -0.039523706 -0.084836677 -0.021907521 0.02552573 -0.084836677 -0.021907521 -0.018526714;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[52:53]" "e[55]" "e[57]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".wt" 0.88892710208892822;
	setAttr ".dr" no;
	setAttr ".re" 57;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[44:51]" -type "float3"  0.39045987 -0.10797999 -0.11918907
		 0.39045987 -0.10797999 0.11918907 0.37996587 -0.22562689 -0.055869821 0.37996587
		 -0.22562689 0.076976269 -0.39045987 -0.10797999 0.11918907 -0.39045987 -0.10797999
		 -0.11918907 -0.37996587 -0.22562689 0.076976269 -0.37996587 -0.22562689 -0.055869821;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[60:61]" "e[63]" "e[65]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".wt" 0.88575786352157593;
	setAttr ".dr" no;
	setAttr ".re" 65;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 2 "f[53]" "f[55]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.09769123 0.11364726 ;
	setAttr ".rs" 53656;
	setAttr ".lt" -type "double3" -1.3877787807814457e-017 -1.0408340855860843e-017 
		0.14874278916858649 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.27722265547097052 0.056851793802265682 0.10017640888690948 ;
	setAttr ".cbx" -type "double3" 0.27722265547097052 0.13853066433724925 0.12711811065673828 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.012662079 0 ;
	setAttr ".tk[1]" -type "float3" 0 0.012662079 0 ;
	setAttr ".tk[6]" -type "float3" 0 0.012662079 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.012662079 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.021494813 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.021494813 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.021494813 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.021494813 0 ;
	setAttr ".tk[20]" -type "float3" 0.019091342 -0.012813751 0 ;
	setAttr ".tk[21]" -type "float3" 0.019091342 -0.012813751 0 ;
	setAttr ".tk[22]" -type "float3" 0.086007811 0.012495738 0 ;
	setAttr ".tk[23]" -type "float3" 0.086007811 0.012495738 0 ;
	setAttr ".tk[24]" -type "float3" -0.019091345 -0.012813751 0 ;
	setAttr ".tk[25]" -type "float3" -0.019091345 -0.012813751 0 ;
	setAttr ".tk[26]" -type "float3" -0.086007811 0.012495738 0 ;
	setAttr ".tk[27]" -type "float3" -0.086007811 0.012495738 0 ;
	setAttr ".tk[28]" -type "float3" 0.067975067 -0.13807617 0 ;
	setAttr ".tk[29]" -type "float3" 0.067975067 -0.13807617 0 ;
	setAttr ".tk[30]" -type "float3" 0.093208835 -0.13843234 0 ;
	setAttr ".tk[31]" -type "float3" 0.093208835 -0.13843234 0 ;
	setAttr ".tk[32]" -type "float3" -0.067975067 -0.13807617 0 ;
	setAttr ".tk[33]" -type "float3" -0.067975067 -0.13807617 0 ;
	setAttr ".tk[34]" -type "float3" -0.093208835 -0.13843234 0 ;
	setAttr ".tk[35]" -type "float3" -0.093208835 -0.13843234 0 ;
	setAttr ".tk[52]" -type "float3" 0.09240903 -0.12779848 0 ;
	setAttr ".tk[53]" -type "float3" 0.09240903 -0.12779848 0 ;
	setAttr ".tk[54]" -type "float3" 0.062545441 -0.11512449 0 ;
	setAttr ".tk[55]" -type "float3" 0.062545441 -0.11512449 0 ;
	setAttr ".tk[56]" -type "float3" -0.092386186 -0.13022839 0 ;
	setAttr ".tk[57]" -type "float3" -0.092386186 -0.13022839 0 ;
	setAttr ".tk[58]" -type "float3" -0.062390488 -0.11714132 0 ;
	setAttr ".tk[59]" -type "float3" -0.062390488 -0.11714132 0 ;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[52:53]" "e[55]" "e[57]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".wt" 0.96410232782363892;
	setAttr ".dr" no;
	setAttr ".re" 57;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[29]" -type "float3" 0 0 0.013145943 ;
	setAttr ".tk[31]" -type "float3" 0 0 0.0012123784 ;
	setAttr ".tk[33]" -type "float3" 0 0 0.013145943 ;
	setAttr ".tk[34]" -type "float3" 0 0 0.0012123784 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.012747808 ;
	setAttr ".tk[55]" -type "float3" 0 0 0.0030795999 ;
	setAttr ".tk[57]" -type "float3" 0 0 -0.013145943 ;
	setAttr ".tk[58]" -type "float3" 0 0 0.0027923516 ;
	setAttr ".tk[60]" -type "float3" 0 0 0.0030816051 ;
	setAttr ".tk[61]" -type "float3" 0 0 -0.013410658 ;
	setAttr ".tk[62]" -type "float3" 0 0 0.013570877 ;
	setAttr ".tk[63]" -type "float3" 0 0 0.0011359383 ;
	setAttr ".tk[64]" -type "float3" 0 0 -0.013698201 ;
	setAttr ".tk[65]" -type "float3" 0 0 0.0029098073 ;
	setAttr ".tk[66]" -type "float3" 0 0 0.0012633742 ;
	setAttr ".tk[67]" -type "float3" 0 0 0.013698199 ;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[60:61]" "e[63]" "e[65]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".wt" 0.95123893022537231;
	setAttr ".dr" no;
	setAttr ".re" 61;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[92:93]" "e[95]" "e[97]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".wt" 0.87836432456970215;
	setAttr ".dr" no;
	setAttr ".re" 92;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.81950438 1.4599502 0.03330268 ;
	setAttr ".rs" 57597;
	setAttr ".lt" -type "double3" -2.7755575615628914e-016 4.0040921043854086e-018 0.13855601997504849 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.8083425254296609 1.4140569414341155 -0.051358699798583984 ;
	setAttr ".cbx" -type "double3" 0.83066620066523666 1.505843360102606 0.11796405911445618 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[60:63]" -type "float3"  0.023139913 0 0 0.023139913
		 0 0 0.023139913 0 0 0.023139913 0 0;
createNode polySmoothFace -n "polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[80:83]" -type "float3"  0.29522517 0.0062849373 0
		 0.29522517 0.0062849373 0 0.29522517 0.0062849373 0 0.29522517 0.0062849373 0;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 17 "f[0]" "f[3:4]" "f[7:8]" "f[11:12]" "f[15]" "f[24]" "f[27]" "f[32]" "f[35]" "f[40]" "f[43]" "f[48]" "f[51]" "f[56]" "f[59]" "f[64]" "f[67]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 10 "f[12:15]" "f[18:21]" "f[30:33]" "f[42:45]" "f[68:83]" "f[100:131]" "f[148:163]" "f[196:211]" "f[228:243]" "f[260:275]";
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[2:3]";
	setAttr ".ix" -type "matrix" 0.50696308910906573 0 0 0 0 0.8472302240586711 0 0 0 0 1 0
		 0 1.1730474116434406 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.084268786 1.5819061 0.014447458 ;
	setAttr ".rs" 35113;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1331508065217713e-008 1.5671499566795706 -0.10074324905872345 ;
	setAttr ".cbx" -type "double3" 0.16853755347085425 1.5966622206796368 0.12963816523551941 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 330 ".tk";
	setAttr ".tk[0:165]" -type "float3"  2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -0.018060081 2.3283064e-009
		 2.2351742e-008 -0.0054420973 2.3283064e-009 2.2351742e-008 -0.017231844 2.3283064e-009
		 2.2351742e-008 -0.0040984247 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 0.0047196699 2.3283064e-009
		 2.2351742e-008 0.0055479733 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -0.0091032321 2.3283064e-009 2.2351742e-008 0.0070770271 2.3283064e-009
		 2.2351742e-008 -0.0084314151 2.3283064e-009 2.2351742e-008 -0.0077595022 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 0.0081038624 -3.7252903e-009 2.3283064e-009 0.010131855 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 -0.0064878985 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 -0.009323841 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 0.0052759908 -3.7252903e-009 2.3283064e-009
		 -0.0093157822 -3.7252903e-009 2.3283064e-009 2.2351742e-008 0.017195908 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 0.0055408776 2.3283064e-009
		 2.2351742e-008 0.0068845856 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 0.0034159927 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009
		 2.2351742e-008 -3.7252903e-009 2.3283064e-009;
	setAttr ".tk[166:329]" 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 0.010535832
		 -3.7252903e-009 2.3283064e-009 0.00080798857 -3.7252903e-009 2.3283064e-009 -0.0089198584
		 -3.7252903e-009 2.3283064e-009 -0.0024238764 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 -0.010535778 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 0.018060073 2.3283064e-009 0.0089198966 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009 2.2351742e-008 -3.7252903e-009 2.3283064e-009 2.2351742e-008
		 -3.7252903e-009 2.3283064e-009;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[191:196]" -type "float3"  -0.00095719891 0.10108405
		 -0.032028731 -0.1536168 0.10108405 -0.031484984 -0.15089105 0.10108405 0.00062732474
		 -0.00095719891 0.10108405 0.00074895413 -0.1536168 0.10108405 0.031272124 -0.00095719891
		 0.10108405 0.032028731;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 2 "e[376]" "e[381]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "Ref.di" "imagePlane1.do";
connectAttr ":frontShape.msg" "imagePlaneShape1.ltc";
connectAttr "Ref.di" "imagePlane2.do";
connectAttr ":sideShape.msg" "imagePlaneShape2.ltc";
connectAttr "deleteComponent3.og" "|pCube1|pCubeShape1.i";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[1]" "Ref.id";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polySplitRing3.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySplitRing4.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace5.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polySplitRing5.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySplitRing6.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak7.ip";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polyTweak8.out" "polyExtrudeFace6.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polySplitRing8.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polySmoothFace1.ip";
connectAttr "polyExtrudeFace6.out" "polyTweak9.ip";
connectAttr "polySmoothFace1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "polyTweak10.out" "polyExtrudeFace7.ip";
connectAttr "|pCube1|pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "deleteComponent2.og" "polyTweak10.ip";
connectAttr "polyExtrudeFace7.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "deleteComponent3.ig";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "|pCube1|pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pCube2|pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"|imagePlane1|imagePlaneShape1\" \"imageName\" \"C:/Users/Oleksandr/Desktop/Other/Maya Projects/FirstModel/sourceimages/LowPolyChar_RefImages/front.png\" 3653037508 \"C:/Users/Oleksandr/Desktop/Other/Maya Projects/FirstModel/sourceimages/LowPolyChar_RefImages/front.png\" \"sourceImages\"\n1\n\"|imagePlane2|imagePlaneShape2\" \"imageName\" \"C:/Users/Oleksandr/Desktop/Other/Maya Projects/FirstModel/sourceimages/LowPolyChar_RefImages/side.png\" 1179071750 \"C:/Users/Oleksandr/Desktop/Other/Maya Projects/FirstModel/sourceimages/LowPolyChar_RefImages/side.png\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of FirstModel_temp.ma
