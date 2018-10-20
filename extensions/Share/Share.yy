{
    "id": "2bd260ae-ffb0-49b2-a6b0-8c3cf707193c",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "Share",
    "IncludedResources": [
        "Sprites\\Share\\sprite2",
        "Sprites\\Share\\sprite1",
        "Sprites\\Share\\sprite4",
        "Sprites\\Share\\sprite5",
        "Sprites\\Share\\sprite3",
        "Backgrounds\\Share\\background0",
        "Objects\\Share\\Obj_Share_Text",
        "Objects\\Share\\Obj_Share_Sprite",
        "Objects\\Share\\Obj_Create_Share",
        "Objects\\Share\\Obj_SharePictureImage_Parent",
        "Objects\\Share\\Obj_SharePictureImage_H",
        "Objects\\Share\\Obj_SharePictureImage_V",
        "Rooms\\Share\\room0"
    ],
    "androidPermissions": [
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.READ_EXTERNAL_STORAGE"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "Share",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "Share",
    "copyToTargets": 105554172285166,
    "date": "2017-56-31 02:08:08",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "e4bbaf74-edcb-4f95-b514-d282a4805413",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 52777614151918,
            "filename": "Share.ext",
            "final": "",
            "functions": [
                {
                    "id": "61009c43-3e6c-4e11-a2a6-729762cad09e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "ShareAndroid_Text",
                    "help": "ShareAndroid_Text(title,text)",
                    "hidden": false,
                    "kind": 11,
                    "name": "ShareAndroid_Text",
                    "returnType": 2
                },
                {
                    "id": "8059ed91-d7ca-406f-a9b5-a611d555a332",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "ShareAndroid_Image",
                    "help": "ShareAndroid_Image(title,path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "ShareAndroid_Image",
                    "returnType": 2
                },
                {
                    "id": "a1df092c-e992-4851-bd75-a5a321cf02e6",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "Android_getExternalPath",
                    "help": "Android_getExternalPath()",
                    "hidden": false,
                    "kind": 11,
                    "name": "Android_getExternalPath",
                    "returnType": 1
                },
                {
                    "id": "25ef5b65-ed21-453c-8da8-7de8b133c813",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "Share_getPermission",
                    "help": "Share_getPermission()",
                    "hidden": false,
                    "kind": 11,
                    "name": "Share_getPermission",
                    "returnType": 2
                },
                {
                    "id": "a126943d-fb42-4943-be2f-53562cee238b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "Share_checkPermission",
                    "help": "Share_checkPermission()",
                    "hidden": false,
                    "kind": 11,
                    "name": "Share_checkPermission",
                    "returnType": 2
                },
                {
                    "id": "338578a7-f592-41bb-945a-13e8bdb52783",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "IOS_getPath",
                    "help": "IOS_getPath()",
                    "hidden": false,
                    "kind": 11,
                    "name": "IOS_getPath",
                    "returnType": 1
                },
                {
                    "id": "9c6ce16d-e646-41de-a194-467e4a3a34a2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "ShareIOS_Image",
                    "help": "ShareIOS_Image(Path)",
                    "hidden": false,
                    "kind": 11,
                    "name": "ShareIOS_Image",
                    "returnType": 2
                },
                {
                    "id": "3d97ea15-8a3e-45a2-9988-d53405b8dc7b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "ShareIOS_Text",
                    "help": "ShareIOS_Text(Text)",
                    "hidden": false,
                    "kind": 11,
                    "name": "ShareIOS_Text",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\Share.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "dependencies {\\u000a\\u000d    compile 'com.android.support:appcompat-v7:24.1.1'\\u000a\\u000d}\\u000a\\u000d\\u000a\\u000dandroid {\\u000a\\u000d    lintOptions {\\u000a\\u000d        abortOnError false\\u000a\\u000d    }\\u000a\\u000d}",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "com.Kaguva.ShareImage",
    "productID": "F87F1752EF5676078DB4BED8477B99A7",
    "sourcedir": "",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": null,
    "tvosmaccompilerflags": null,
    "tvosmaclinkerflags": null,
    "tvosplistinject": null,
    "version": "1.0.7"
}