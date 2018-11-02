{
    "id": "02371e01-138b-40e5-b93f-c6c756d88ebe",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "GooglePlayServicesExtension",
    "IncludedResources": [
        
    ],
    "androidPermissions": [
        "android.permission.ACCESS_COARSE_LOCATION"
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "GooglePlayServicesExtension",
    "androidinject": "<activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" \/>",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "GoogleMobileAdsExt",
    "copyToTargets": 35651596,
    "date": "2018-56-23 05:10:43",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "75fe2405-0723-457f-a277-507ffed11f30",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "df0f69a8-d492-48f1-933f-e406b79c28dc",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Banner",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "cb3151af-46c8-4d22-9b79-638c348d9768",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_MRect",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "ec9aea17-9741-428d-bbc9-e722e7c1c346",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Full_Banner",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "079486eb-f7c1-4bc9-9342-3a4458af1f0b",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Leaderboard",
                    "hidden": false,
                    "value": "4"
                },
                {
                    "id": "f5e651b2-5b45-4ece-93c6-04cc5685238e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Skyscraper",
                    "hidden": false,
                    "value": "5"
                },
                {
                    "id": "bd56c8ed-ab92-42ca-b8a4-57a8055a518c",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_ASyncEvent",
                    "hidden": false,
                    "value": "9817"
                },
                {
                    "id": "c2e66dee-7c3a-4008-87af-a36254372a79",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GoogleMobileAds_Smart_Banner",
                    "hidden": false,
                    "value": "6"
                }
            ],
            "copyToTargets": 913346798,
            "filename": "GoogleMobileAds.ext",
            "final": "",
            "functions": [
                {
                    "id": "ac6ae7dc-ac39-4713-9865-680f78c0cd4e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        1
                    ],
                    "externalName": "GoogleMobileAds_Init",
                    "help": "GoogleMobileAds_Init( interstitialId, applicationId )",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_Init",
                    "returnType": 2
                },
                {
                    "id": "61fd3a41-824d-43ad-8a96-51169ad03892",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ShowInterstitial",
                    "help": "GoogleMobileAds_ShowInterstitial()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ShowInterstitial",
                    "returnType": 2
                },
                {
                    "id": "1141aeda-afba-4874-81b1-3423dec1ca56",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_LoadInterstitial",
                    "help": "GoogleMobileAds_LoadInterstitial()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_LoadInterstitial",
                    "returnType": 2
                },
                {
                    "id": "209c5db8-3917-49c1-a584-5a0c38af0f93",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_InterstitialStatus",
                    "help": "GoogleMobileAds_InterstitialStatus()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_InterstitialStatus",
                    "returnType": 1
                },
                {
                    "id": "3e0805a3-8212-4606-95d8-dc5ae743226d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "GoogleMobileAds_AddBanner",
                    "help": "GoogleMobileAds_AddBanner( bannerAdID, size_type )",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_AddBanner",
                    "returnType": 2
                },
                {
                    "id": "3464b313-a6e8-4fcb-b107-6c1f8046e01b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_RemoveBanner",
                    "help": "GoogleMobileAds_RemoveBanner()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_RemoveBanner",
                    "returnType": 2
                },
                {
                    "id": "ad590ce2-e6ec-46b6-a4b9-9d776f0d9047",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        2
                    ],
                    "externalName": "GoogleMobileAds_MoveBanner",
                    "help": "GoogleMobileAds_MoveBanner(display_x, display_y)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_MoveBanner",
                    "returnType": 2
                },
                {
                    "id": "e563b9e3-031d-4526-af68-8ff11154579b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_BannerGetWidth",
                    "help": "GoogleMobileAds_BannerGetWidth()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_BannerGetWidth",
                    "returnType": 2
                },
                {
                    "id": "fd7693bd-7087-4cf6-a2c6-a9c4b1f5ac3a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_BannerGetHeight",
                    "help": "GoogleMobileAds_BannerGetHeight()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_BannerGetHeight",
                    "returnType": 2
                },
                {
                    "id": "bd375b87-441f-411f-b7c3-9da06624f228",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        2,
                        1
                    ],
                    "externalName": "GoogleMobileAds_UseTestAds",
                    "help": "GoogleMobileAds_UseTestAds( use_test_ads, deviceId );",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_UseTestAds",
                    "returnType": 2
                },
                {
                    "id": "c3a27242-07e9-4280-b94c-57a8c89faa5b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 4,
                    "args": [
                        1,
                        2,
                        2,
                        2
                    ],
                    "externalName": "GoogleMobileAds_AddBannerAt",
                    "help": "GoogleMobileAds_AddBannerAt(bannerAdId, sizeType, x, y );  banner will initially be invisible if x,y < 0",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_AddBannerAt",
                    "returnType": 2
                },
                {
                    "id": "82a01a33-31cd-4876-a558-8975256e4962",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "GoogleMobileAds_LoadRewardedVideo",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_LoadRewardedVideo",
                    "returnType": 2
                },
                {
                    "id": "5f86dc50-0061-46fd-a471-a33fa592f86a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ShowRewardedVideo",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ShowRewardedVideo",
                    "returnType": 2
                },
                {
                    "id": "790b7b7f-1045-4c8b-892d-730d95b75583",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_RewardedVideoStatus",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_RewardedVideoStatus",
                    "returnType": 1
                },
                {
                    "id": "2f4f7119-654b-4cb5-a3d2-d60b714056ed",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_HideBanner",
                    "returnType": 2
                },
                {
                    "id": "d4afac93-4ae7-445e-8b22-ca60f3c5cab0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ShowBanner",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ShowBanner",
                    "returnType": 2
                },
                {
                    "id": "91b4daf8-81f5-4c1f-9e63-3bd1b6159655",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        1,
                        1,
                        2,
                        2,
                        2
                    ],
                    "externalName": "GoogleMobileAds_ConsentUpdate",
                    "help": "GoogleMobileAds_ConsentUpdate(publisherIds, privacyPolicyURL, personalisedAds, noPersonalisedAds, adFree)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentUpdate",
                    "returnType": 2
                },
                {
                    "id": "4f86cd94-9c61-4275-a906-77509db7a262",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        1,
                        2,
                        2,
                        2
                    ],
                    "externalName": "GoogleMobileAds_ConsentFormShow",
                    "help": "GoogleMobileAds_ConsentFormShow(privacyPolicyURL, personalisedAds, noPersonalisedAds, adFree)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentFormShow",
                    "returnType": 2
                },
                {
                    "id": "8db98f25-d605-4cd8-aa9d-09f0005311f9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "GoogleMobileAds_ConsentSetUserUnderAge",
                    "help": "GoogleMobileAds_ConsentSetUserUnderAge(isUnderAge)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentSetUserUnderAge",
                    "returnType": 2
                },
                {
                    "id": "f27d6994-fe10-4484-a927-17a46dc75134",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentIsUserUnderAge",
                    "help": "GoogleMobileAds_ConsentIsUserUnderAge()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentIsUserUnderAge",
                    "returnType": 2
                },
                {
                    "id": "a72ae30c-6105-426a-8e1a-3d77c0e10951",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentIsUserInEEA",
                    "help": "GoogleMobileAds_ConsentIsUserInEEA()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentIsUserInEEA",
                    "returnType": 2
                },
                {
                    "id": "7a1fd359-7d3d-4c1f-91d3-13729e0d6f24",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        1
                    ],
                    "externalName": "GoogleMobileAds_ConsentDebugAddDevice",
                    "help": "GoogleMobileAds_ConsentDebugAddDevice(id)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentDebugAddDevice",
                    "returnType": 2
                },
                {
                    "id": "485dded4-4daf-489f-8843-53b0fa82b502",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "GoogleMobileAds_ConsentDebugSetDeviceInEEA",
                    "help": "GoogleMobileAds_ConsentDebugSetDeviceInEEA(isInEEA)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentDebugSetDeviceInEEA",
                    "returnType": 2
                },
                {
                    "id": "8c2b2cb8-44c0-43af-837d-97e075564649",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GoogleMobileAds_ConsentGetAllowPersonalizedAds",
                    "help": "GoogleMobileAds_ConsentGetAllowPersonalizedAds()",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentGetAllowPersonalizedAds",
                    "returnType": 2
                },
                {
                    "id": "3b7cd241-cbae-4adb-b4dc-77c967991653",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        2
                    ],
                    "externalName": "GoogleMobileAds_ConsentSetAllowPersonalizedAds",
                    "help": "GoogleMobileAds_ConsentSetAllowPersonalizedAds(allowPersonalized)",
                    "hidden": false,
                    "kind": 11,
                    "name": "GoogleMobileAds_ConsentSetAllowPersonalizedAds",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                "ac6ae7dc-ac39-4713-9865-680f78c0cd4e",
                "61fd3a41-824d-43ad-8a96-51169ad03892",
                "1141aeda-afba-4874-81b1-3423dec1ca56",
                "209c5db8-3917-49c1-a584-5a0c38af0f93",
                "3e0805a3-8212-4606-95d8-dc5ae743226d",
                "3464b313-a6e8-4fcb-b107-6c1f8046e01b",
                "ad590ce2-e6ec-46b6-a4b9-9d776f0d9047",
                "e563b9e3-031d-4526-af68-8ff11154579b",
                "fd7693bd-7087-4cf6-a2c6-a9c4b1f5ac3a",
                "bd375b87-441f-411f-b7c3-9da06624f228",
                "c3a27242-07e9-4280-b94c-57a8c89faa5b",
                "82a01a33-31cd-4876-a558-8975256e4962",
                "5f86dc50-0061-46fd-a471-a33fa592f86a",
                "790b7b7f-1045-4c8b-892d-730d95b75583",
                "2f4f7119-654b-4cb5-a3d2-d60b714056ed",
                "d4afac93-4ae7-445e-8b22-ca60f3c5cab0",
                "91b4daf8-81f5-4c1f-9e63-3bd1b6159655",
                "4f86cd94-9c61-4275-a906-77509db7a262",
                "8db98f25-d605-4cd8-aa9d-09f0005311f9",
                "f27d6994-fe10-4484-a927-17a46dc75134",
                "a72ae30c-6105-426a-8e1a-3d77c0e10951",
                "7a1fd359-7d3d-4c1f-91d3-13729e0d6f24",
                "485dded4-4daf-489f-8843-53b0fa82b502",
                "8c2b2cb8-44c0-43af-837d-97e075564649",
                "3b7cd241-cbae-4adb-b4dc-77c967991653"
            ],
            "origname": "extensions\\admob.ext",
            "uncompress": false
        },
        {
            "id": "03bfd53b-7bf4-4a7f-b3ae-138d86056527",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "5cd41d94-b22a-4024-82d4-4d31906d686f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SUCCESS",
                    "hidden": false,
                    "value": "0"
                },
                {
                    "id": "2e08de7e-cdfe-4a29-8f7b-9ec1ac448772",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_MISSING",
                    "hidden": false,
                    "value": "1"
                },
                {
                    "id": "0efb15aa-9494-407e-bc45-d138353566f8",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_UPDATING",
                    "hidden": false,
                    "value": "18"
                },
                {
                    "id": "1a3262de-294f-4a43-8149-957579b8562f",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_VERSION_UPDATE_REQUIRED",
                    "hidden": false,
                    "value": "2"
                },
                {
                    "id": "df9f91d6-0a2f-4881-b347-dc8ed8e7f1dd",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_DISABLED",
                    "hidden": false,
                    "value": "3"
                },
                {
                    "id": "76ffcacc-fb98-4ca4-a605-5f1dd263a245",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_SERVICE_INVALID",
                    "hidden": false,
                    "value": "9"
                },
                {
                    "id": "d181ec7c-3349-4003-83d9-412b6be70c6e",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_POST_SCORE",
                    "hidden": false,
                    "value": "9818"
                },
                {
                    "id": "b047596d-1be1-485c-a8ce-da8f17f53f29",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_POST_ACHIEVEMENT",
                    "hidden": false,
                    "value": "9819"
                },
                {
                    "id": "935475f8-5585-43d5-b460-7d4d0436a772",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_REVEAL_ACHIEVEMENT",
                    "hidden": false,
                    "value": "9821"
                },
                {
                    "id": "2a46f897-5b52-42ff-b25c-9600df719e42",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GooglePlayServices_EVENT_ID_INCREMENT_ACHIEVEMENT",
                    "hidden": false,
                    "value": "9820"
                }
            ],
            "copyToTargets": 8,
            "filename": "GooglePlayServicesExtension.ext",
            "final": "",
            "functions": [
                {
                    "id": "7bab8dfd-3773-42f4-a7f1-bdaa4e781d85",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GooglePlayServices_Status",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GooglePlayServices_Status",
                    "returnType": 2
                },
                {
                    "id": "2fc08600-6326-4066-ba5c-9157cceb4dba",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "GooglePlayServices_Init",
                    "help": "",
                    "hidden": false,
                    "kind": 11,
                    "name": "GooglePlayServices_Init",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 4,
            "order": [
                "7bab8dfd-3773-42f4-a7f1-bdaa4e781d85",
                "2fc08600-6326-4066-ba5c-9157cceb4dba"
            ],
            "origname": "extensions\\GooglePlayServicesExtension.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "   compile 'com.google.android.gms:play-services-games:11.8.0'\\u000a\\u000d   compile 'com.google.android.gms:play-services-ads:11.8.0'\\u000a\\u000d   compile 'com.google.android.gms:play-services-plus:11.8.0'\\u000a\\u000d   compile 'com.google.android.gms:play-services-gcm:11.8.0'\\u000a\\u000d   compile 'com.google.android.gms:play-services-auth:11.8.0'\\u000a\\u000d   compile 'com.google.android.ads.consent:consent-library:1.0.3'\\u000a\\u000d   compile fileTree(dir: 'libs', include: ['*.jar'])\\u000a\\u000d}\\u000a\\u000drepositories\\u000a\\u000d{\\u000a\\u000d  maven\\u000a\\u000d  {\\u000a\\u000d    url \"https:\/\/maven.google.com\"\\u000a\\u000d  }\\u000a\\u000d}\\u000a\\u000ddependencies\\u000a\\u000d{\\u000a\\u000d\\u000a\\u000d",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        {
            "id": "cc0939e4-d3b2-46e1-8362-cc83e4024883",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "AdSupport.framework",
            "weakReference": false
        },
        {
            "id": "6579cba7-a940-4743-8a11-a2124a649b37",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreBluetooth.framework",
            "weakReference": false
        },
        {
            "id": "91bdcfa5-f670-45cf-afc9-3f39e283aa36",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreMotion.framework",
            "weakReference": false
        },
        {
            "id": "a8dd458b-0fc7-49ff-973b-c37cf4a180eb",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreMedia.framework",
            "weakReference": false
        },
        {
            "id": "70d6d31b-95f0-4ca4-bd27-35dacc4366d8",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "CoreVideo.framework",
            "weakReference": false
        },
        {
            "id": "1d9e5e52-abba-42f9-95ae-731718e1d64a",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "GLKit.framework",
            "weakReference": false
        },
        {
            "id": "8e120940-8828-4c27-9116-d0e4455f4f11",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "SafariServices.framework",
            "weakReference": false
        }
    ],
    "iosThirdPartyFrameworkEntries": [
        {
            "id": "daa92131-25b5-4ab5-834f-9fea6ece6579",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "GoogleMobileAds.framework",
            "weakReference": false
        },
        {
            "id": "b3f68734-d973-42f3-8954-a5a57059436a",
            "modelName": "GMExtensionFrameworkEntry",
            "mvc": "1.0",
            "frameworkName": "PersonalizedAdConsent.embeddedframework",
            "weakReference": false
        }
    ],
    "iosplistinject": "<key>NSAppTransportSecurity<\/key>\\u000a\\u000d<dict>\\u000a\\u000d    <key>NSAllowsArbitraryLoads<\/key>\\u000a\\u000d    <true\/>\\u000a\\u000d    <key>NSAllowsArbitraryLoadsForMedia<\/key>\\u000a\\u000d    <true\/>\\u000a\\u000d    <key>NSAllowsArbitraryLoadsInWebContent<\/key>\\u000a\\u000d    <true\/>\\u000a\\u000d<\/dict>",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "com.yoyogames.googleplayservicesextension",
    "productID": "",
    "sourcedir": "",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "3.0.5"
}