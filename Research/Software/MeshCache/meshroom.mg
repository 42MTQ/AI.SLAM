{
    "header": {
        "pipelineVersion": "2.2",
        "releaseVersion": "2023.3.0",
        "fileVersion": "1.1",
        "template": false,
        "nodesVersions": {
            "Texturing": "6.0",
            "FeatureMatching": "2.0",
            "DepthMap": "5.0",
            "ImageMatching": "2.0",
            "MeshFiltering": "3.0",
            "StructureFromMotion": "3.3",
            "PrepareDenseScene": "3.1",
            "CameraInit": "9.0",
            "FeatureExtraction": "1.3",
            "Meshing": "7.0",
            "DepthMapFilter": "4.0"
        }
    },
    "graph": {
        "Texturing_1": {
            "nodeType": "Texturing",
            "position": [
                2000,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "75d05c2a6b11af15cacba22ca469d5a05d562fc7"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{Meshing_1.output}",
                "imagesFolder": "{DepthMap_1.imagesFolder}",
                "inputMesh": "{MeshFiltering_1.outputMesh}",
                "inputRefMesh": "",
                "textureSide": 8192,
                "downscale": 2,
                "outputMeshFileType": "obj",
                "colorMapping": {
                    "enable": true,
                    "colorMappingFileType": "exr"
                },
                "bumpMapping": {
                    "enable": true,
                    "bumpType": "Normal",
                    "normalFileType": "exr",
                    "heightFileType": "exr"
                },
                "displacementMapping": {
                    "enable": true,
                    "displacementMappingFileType": "exr"
                },
                "unwrapMethod": "Basic",
                "useUDIM": true,
                "fillHoles": false,
                "padding": 5,
                "multiBandDownscale": 4,
                "multiBandNbContrib": {
                    "high": 1,
                    "midHigh": 5,
                    "midLow": 10,
                    "low": 0
                },
                "useScore": true,
                "bestScoreThreshold": 0.1,
                "angleHardThreshold": 90.0,
                "workingColorSpace": "sRGB",
                "outputColorSpace": "AUTO",
                "correctEV": true,
                "forceVisibleByAllVertices": false,
                "flipNormals": false,
                "visibilityRemappingMethod": "PullPush",
                "subdivisionTargetRatio": 0.8,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "outputMesh": "{cache}/{nodeType}/{uid0}/texturedMesh.{outputMeshFileTypeValue}",
                "outputMaterial": "{cache}/{nodeType}/{uid0}/texturedMesh.mtl",
                "outputTextures": "{cache}/{nodeType}/{uid0}/texture_*.exr"
            }
        },
        "Meshing_1": {
            "nodeType": "Meshing",
            "position": [
                1600,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "1fbf00652a78babc1e514a48a3ce4445b8b920c2"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMapFilter_1.input}",
                "depthMapsFolder": "{DepthMapFilter_1.output}",
                "outputMeshFileType": "obj",
                "useBoundingBox": false,
                "boundingBox": {
                    "bboxTranslation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxRotation": {
                        "x": 0.0,
                        "y": 0.0,
                        "z": 0.0
                    },
                    "bboxScale": {
                        "x": 1.0,
                        "y": 1.0,
                        "z": 1.0
                    }
                },
                "estimateSpaceFromSfM": true,
                "estimateSpaceMinObservations": 3,
                "estimateSpaceMinObservationAngle": 10.0,
                "maxInputPoints": 50000000,
                "maxPoints": 5000000,
                "maxPointsPerVoxel": 1000000,
                "minStep": 2,
                "partitioning": "singleBlock",
                "repartition": "multiResolution",
                "angleFactor": 15.0,
                "simFactor": 15.0,
                "minVis": 2,
                "pixSizeMarginInitCoef": 2.0,
                "pixSizeMarginFinalCoef": 4.0,
                "voteMarginFactor": 4.0,
                "contributeMarginFactor": 2.0,
                "simGaussianSizeInit": 10.0,
                "simGaussianSize": 10.0,
                "minAngleThreshold": 1.0,
                "refineFuse": true,
                "helperPointsGridSize": 10,
                "densify": false,
                "densifyNbFront": 1,
                "densifyNbBack": 1,
                "densifyScale": 20.0,
                "nPixelSizeBehind": 4.0,
                "fullWeight": 1.0,
                "voteFilteringForWeaklySupportedSurfaces": true,
                "addLandmarksToTheDensePointCloud": false,
                "invertTetrahedronBasedOnNeighborsNbIterations": 10,
                "minSolidAngleRatio": 0.2,
                "nbSolidAngleFilteringIterations": 2,
                "colorizeOutput": false,
                "addMaskHelperPoints": false,
                "maskHelperPointsWeight": 1.0,
                "maskBorderSize": 4,
                "maxNbConnectedHelperPoints": 50,
                "saveRawDensePointCloud": false,
                "exportDebugTetrahedralization": false,
                "seed": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}",
                "output": "{cache}/{nodeType}/{uid0}/densePointCloud.abc"
            }
        },
        "DepthMapFilter_1": {
            "nodeType": "DepthMapFilter",
            "position": [
                1400,
                0
            ],
            "parallelization": {
                "blockSize": 24,
                "size": 14,
                "split": 1
            },
            "uids": {
                "0": "a407f83fed74e0c62bd14c92d5983c4dcda97c8c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{DepthMap_1.input}",
                "depthMapsFolder": "{DepthMap_1.output}",
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "nNearestCams": 10,
                "minNumOfConsistentCams": 3,
                "minNumOfConsistentCamsWithLowSimilarity": 4,
                "pixToleranceFactor": 2.0,
                "pixSizeBall": 0,
                "pixSizeBallWithLowSimilarity": 0,
                "computeNormalMaps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr"
            }
        },
        "ImageMatching_1": {
            "nodeType": "ImageMatching",
            "position": [
                400,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 14,
                "split": 1
            },
            "uids": {
                "0": "decfef8c223fb0414113577036a3ccdbe73fe924"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureExtraction_1.input}",
                "featuresFolders": [
                    "{FeatureExtraction_1.output}"
                ],
                "method": "SequentialAndVocabularyTree",
                "tree": "${ALICEVISION_VOCTREE}",
                "weights": "",
                "minNbImages": 200,
                "maxDescriptors": 500,
                "nbMatches": 40,
                "nbNeighbors": 5,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/imageMatches.txt"
            }
        },
        "FeatureExtraction_1": {
            "nodeType": "FeatureExtraction",
            "position": [
                200,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 14,
                "split": 1
            },
            "uids": {
                "0": "80c7a2bf43d1f8523a67b1e6e41148e24f9fa092"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{CameraInit_1.output}",
                "masksFolder": "",
                "maskExtension": "png",
                "maskInvert": false,
                "describerTypes": [
                    "dspsift"
                ],
                "describerPreset": "normal",
                "maxNbFeatures": 0,
                "describerQuality": "normal",
                "contrastFiltering": "GridSort",
                "relativePeakThreshold": 0.01,
                "gridFiltering": true,
                "workingColorSpace": "sRGB",
                "forceCpuExtraction": true,
                "maxThreads": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "StructureFromMotion_1": {
            "nodeType": "StructureFromMotion",
            "position": [
                800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 14,
                "split": 1
            },
            "uids": {
                "0": "53c451498dbfa1223d4d86b5de55269acd2efe22"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{FeatureMatching_1.input}",
                "featuresFolders": "{FeatureMatching_1.featuresFolders}",
                "matchesFolders": [
                    "{FeatureMatching_1.output}"
                ],
                "describerTypes": "{FeatureMatching_1.describerTypes}",
                "localizerEstimator": "acransac",
                "observationConstraint": "Scale",
                "localizerEstimatorMaxIterations": 4096,
                "localizerEstimatorError": 0.0,
                "lockScenePreviouslyReconstructed": false,
                "useLocalBA": true,
                "localBAGraphDistance": 1,
                "nbFirstUnstableCameras": 30,
                "maxImagesPerGroup": 30,
                "bundleAdjustmentMaxOutliers": 50,
                "maxNumberOfMatches": 0,
                "minNumberOfMatches": 0,
                "minInputTrackLength": 2,
                "minNumberOfObservationsForTriangulation": 2,
                "minAngleForTriangulation": 3.0,
                "minAngleForLandmark": 2.0,
                "maxReprojectionError": 4.0,
                "minAngleInitialPair": 5.0,
                "maxAngleInitialPair": 40.0,
                "useOnlyMatchesFromInputFolder": false,
                "useRigConstraint": true,
                "rigMinNbCamerasForCalibration": 20,
                "lockAllIntrinsics": false,
                "minNbCamerasToRefinePrincipalPoint": 3,
                "filterTrackForks": false,
                "computeStructureColor": true,
                "useAutoTransform": true,
                "initialPairA": "",
                "initialPairB": "",
                "interFileExtension": ".abc",
                "logIntermediateSteps": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/sfm.abc",
                "outputViewsAndPoses": "{cache}/{nodeType}/{uid0}/cameras.sfm",
                "extraInfoFolder": "{cache}/{nodeType}/{uid0}/"
            }
        },
        "PrepareDenseScene_1": {
            "nodeType": "PrepareDenseScene",
            "position": [
                1000,
                0
            ],
            "parallelization": {
                "blockSize": 40,
                "size": 14,
                "split": 1
            },
            "uids": {
                "0": "530a7a8892f0f0d465753004ee58db44dac72b47"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{StructureFromMotion_1.output}",
                "imagesFolders": [],
                "masksFolders": [],
                "maskExtension": "png",
                "outputFileType": "exr",
                "saveMetadata": true,
                "saveMatricesTxtFiles": false,
                "evCorrection": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "undistorted": "{cache}/{nodeType}/{uid0}/<VIEW_ID>.{outputFileTypeValue}"
            }
        },
        "CameraInit_1": {
            "nodeType": "CameraInit",
            "position": [
                0,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 14,
                "split": 1
            },
            "uids": {
                "0": "41f30f9b496c31e53973bbdb9651c38e171de93d"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "viewpoints": [
                    {
                        "viewId": 281118178,
                        "poseId": 281118178,
                        "path": "C:/Users/havoc/Downloads/IMG_1484.png",
                        "intrinsicId": 4253174892,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"5.750000\", \"ICCProfile\": \"0, 0, 2, 24, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 230, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [536 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"1634758764\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright Apple Inc., 2022\", \"ICCProfile:creation_date\": \"2022:01:01 00:00:00\", \"ICCProfile:creator_signature\": \"6170706c\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"4150504c\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"Apple Computer, Inc.\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"Display P3\", \"ICCProfile:profile_size\": \"536\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Raw profile type icc\": \"\\nicc\\n     536\\n000002186170706c040000006d6e74725247422058595a2007e600010001000000000000\\n616373704150504c000000004150504c000000000000000000000000000000000000f6d6\\n000100000000d32d6170706cecfda38e388547c36db4bd4f7ada182f0000000000000000\\n00000000000000000000000000000000000000000000000a64657363000000fc00000030\\n637072740000012c00000050777470740000017c000000147258595a0000019000000014\\n6758595a000001a4000000146258595a000001b80000001472545243000001cc00000020\\n63686164000001ec0000002c62545243000001cc0000002067545243000001cc00000020\\n6d6c756300000000000000010000000c656e5553000000140000001c0044006900730070\\n006c006100790020005000336d6c756300000000000000010000000c656e555300000034\\n0000001c0043006f00700079007200690067006800740020004100700070006c00650020\\n0049006e0063002e002c0020003200300032003258595a20000000000000f6d500010000\\n0000d32c58595a2000000000000083df00003dbfffffffbb58595a200000000000004abf\\n0000b13700000ab958595a2000000000000028380000110b0000c8b97061726100000000\\n00030000000266660000f2a700000d59000013d000000a5b736633320000000000010c42\\n000005defffff326000007930000fd90fffffba2fffffda3000003dc0000c06e\\n\", \"ResolutionUnit\": \"inch\", \"XResolution\": \"71.9836\", \"YResolution\": \"71.9836\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 325487713,
                        "poseId": 325487713,
                        "path": "C:/Users/havoc/Downloads/IMG_1472.png",
                        "intrinsicId": 1353460387,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.800000\", \"DateTime\": \"2025:03:27 09:54:22\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.91314\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2025:03:27 09:54:22\", \"Exif:DateTimeOriginal\": \"2025:03:27 09:54:22\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FocalLength\": \"4.25\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 11 back dual wide camera 4.25mm f/1.8\", \"Exif:LensSpecification\": \"1.54, 4.25, 1.8, 2.4\", \"Exif:MeteringMode\": \"5\", \"Exif:OffsetTime\": \"+01:00\", \"Exif:OffsetTimeDigitized\": \"+01:00\", \"Exif:OffsetTimeOriginal\": \"+01:00\", \"Exif:PhotographicSensitivity\": \"32\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.5718\", \"Exif:SubsecTimeDigitized\": \"727\", \"Exif:SubsecTimeOriginal\": \"727\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.00065703\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"35.613\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2025:03:27\", \"GPS:DestBearing\": \"250.518\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"20.0296\", \"GPS:ImgDirection\": \"250.518\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"51, 23, 16.25\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"6, 29, 53.93\", \"GPS:LongitudeRef\": \"E\", \"GPS:Speed\": \"0.207599\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"8, 54, 21.01\", \"ICCProfile\": \"0, 0, 2, 24, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 230, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [536 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"1634758764\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright Apple Inc., 2022\", \"ICCProfile:creation_date\": \"2022:01:01 00:00:00\", \"ICCProfile:creator_signature\": \"6170706c\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"4150504c\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"Apple Computer, Inc.\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"Display P3\", \"ICCProfile:profile_size\": \"536\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Make\": \"Apple\", \"Model\": \"iPhone 11\", \"Orientation\": \"1\", \"Raw profile type icc\": \"\\nicc\\n     536\\n000002186170706c040000006d6e74725247422058595a2007e600010001000000000000\\n616373704150504c000000004150504c000000000000000000000000000000000000f6d6\\n000100000000d32d6170706cecfda38e388547c36db4bd4f7ada182f0000000000000000\\n00000000000000000000000000000000000000000000000a64657363000000fc00000030\\n637072740000012c00000050777470740000017c000000147258595a0000019000000014\\n6758595a000001a4000000146258595a000001b80000001472545243000001cc00000020\\n63686164000001ec0000002c62545243000001cc0000002067545243000001cc00000020\\n6d6c756300000000000000010000000c656e5553000000140000001c0044006900730070\\n006c006100790020005000336d6c756300000000000000010000000c656e555300000034\\n0000001c0043006f00700079007200690067006800740020004100700070006c00650020\\n0049006e0063002e002c0020003200300032003258595a20000000000000f6d500010000\\n0000d32c58595a2000000000000083df00003dbfffffffbb58595a200000000000004abf\\n0000b13700000ab958595a2000000000000028380000110b0000c8b97061726100000000\\n00030000000266660000f2a700000d59000013d000000a5b736633320000000000010c42\\n000005defffff326000007930000fd90fffffba2fffffda3000003dc0000c06e\\n\", \"ResolutionUnit\": \"inch\", \"Software\": \"18.3.1\", \"XResolution\": \"71.9836\", \"YResolution\": \"71.9836\", \"date:create\": \"2025-03-27T09:31:03+00:00\", \"date:modify\": \"2025-03-27T09:31:02+00:00\", \"date:timestamp\": \"2025-03-27T09:31:05+00:00\", \"exif:DateTime\": \"2025:03:27 09:54:22\", \"exif:ExifOffset\": \"216, \", \"exif:ExposureTime\": \"1/1522\", \"exif:FNumber\": \"9/5\", \"exif:GPSAltitude\": \"557949/15667\", \"exif:GPSAltitudeRef\": \".\", \"exif:GPSDateStamp\": \"2025:03:27\", \"exif:GPSDestBearing\": \"232731/929\", \"exif:GPSDestBearingRef\": \"T\", \"exif:GPSHPositioningError\": \"199775/9974\", \"exif:GPSImgDirection\": \"232731/929\", \"exif:GPSImgDirectionRef\": \"T\", \"exif:GPSInfo\": \"2326, \", \"exif:GPSLatitude\": \"51/1,23/1,1625/100\", \"exif:GPSLatitudeRef\": \"N\", \"exif:GPSLongitude\": \"6/1,29/1,5393/100\", \"exif:GPSLongitudeRef\": \"E\", \"exif:GPSSpeed\": \"22057/106248\", \"exif:GPSSpeedRef\": \"K\", \"exif:GPSTimeStamp\": \"8/1,54/1,2101/100\", \"exif:Make\": \"Apple\", \"exif:MakerNote\": \"Apple iOS\", \"exif:Model\": \"iPhone 11\", \"exif:SceneType\": \".\", \"exif:Software\": \"18.3.1\", \"exif:SubjectArea\": \"1988, \", \"icc:copyright\": \"Copyright Apple Inc., 2022\", \"icc:description\": \"Display P3\", \"oiio:ColorSpace\": \"sRGB\", \"unknown\": \"iPhone 11\"}"
                    },
                    {
                        "viewId": 391404999,
                        "poseId": 391404999,
                        "path": "C:/Users/havoc/Downloads/IMG_1482.png",
                        "intrinsicId": 4253174892,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"5.750000\", \"ICCProfile\": \"0, 0, 2, 24, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 230, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [536 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"1634758764\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright Apple Inc., 2022\", \"ICCProfile:creation_date\": \"2022:01:01 00:00:00\", \"ICCProfile:creator_signature\": \"6170706c\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"4150504c\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"Apple Computer, Inc.\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"Display P3\", \"ICCProfile:profile_size\": \"536\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Raw profile type icc\": \"\\nicc\\n     536\\n000002186170706c040000006d6e74725247422058595a2007e600010001000000000000\\n616373704150504c000000004150504c000000000000000000000000000000000000f6d6\\n000100000000d32d6170706cecfda38e388547c36db4bd4f7ada182f0000000000000000\\n00000000000000000000000000000000000000000000000a64657363000000fc00000030\\n637072740000012c00000050777470740000017c000000147258595a0000019000000014\\n6758595a000001a4000000146258595a000001b80000001472545243000001cc00000020\\n63686164000001ec0000002c62545243000001cc0000002067545243000001cc00000020\\n6d6c756300000000000000010000000c656e5553000000140000001c0044006900730070\\n006c006100790020005000336d6c756300000000000000010000000c656e555300000034\\n0000001c0043006f00700079007200690067006800740020004100700070006c00650020\\n0049006e0063002e002c0020003200300032003258595a20000000000000f6d500010000\\n0000d32c58595a2000000000000083df00003dbfffffffbb58595a200000000000004abf\\n0000b13700000ab958595a2000000000000028380000110b0000c8b97061726100000000\\n00030000000266660000f2a700000d59000013d000000a5b736633320000000000010c42\\n000005defffff326000007930000fd90fffffba2fffffda3000003dc0000c06e\\n\", \"ResolutionUnit\": \"inch\", \"XResolution\": \"71.9836\", \"YResolution\": \"71.9836\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 556685113,
                        "poseId": 556685113,
                        "path": "C:/Users/havoc/Downloads/IMG_1485.png",
                        "intrinsicId": 4253174892,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"5.750000\", \"ICCProfile\": \"0, 0, 2, 24, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 230, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [536 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"1634758764\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright Apple Inc., 2022\", \"ICCProfile:creation_date\": \"2022:01:01 00:00:00\", \"ICCProfile:creator_signature\": \"6170706c\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"4150504c\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"Apple Computer, Inc.\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"Display P3\", \"ICCProfile:profile_size\": \"536\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Raw profile type icc\": \"\\nicc\\n     536\\n000002186170706c040000006d6e74725247422058595a2007e600010001000000000000\\n616373704150504c000000004150504c000000000000000000000000000000000000f6d6\\n000100000000d32d6170706cecfda38e388547c36db4bd4f7ada182f0000000000000000\\n00000000000000000000000000000000000000000000000a64657363000000fc00000030\\n637072740000012c00000050777470740000017c000000147258595a0000019000000014\\n6758595a000001a4000000146258595a000001b80000001472545243000001cc00000020\\n63686164000001ec0000002c62545243000001cc0000002067545243000001cc00000020\\n6d6c756300000000000000010000000c656e5553000000140000001c0044006900730070\\n006c006100790020005000336d6c756300000000000000010000000c656e555300000034\\n0000001c0043006f00700079007200690067006800740020004100700070006c00650020\\n0049006e0063002e002c0020003200300032003258595a20000000000000f6d500010000\\n0000d32c58595a2000000000000083df00003dbfffffffbb58595a200000000000004abf\\n0000b13700000ab958595a2000000000000028380000110b0000c8b97061726100000000\\n00030000000266660000f2a700000d59000013d000000a5b736633320000000000010c42\\n000005defffff326000007930000fd90fffffba2fffffda3000003dc0000c06e\\n\", \"ResolutionUnit\": \"inch\", \"XResolution\": \"71.9836\", \"YResolution\": \"71.9836\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 705869872,
                        "poseId": 705869872,
                        "path": "C:/Users/havoc/Downloads/IMG_1488.png",
                        "intrinsicId": 1353460387,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.800000\", \"DateTime\": \"2025:03:27 09:56:22\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"7.03563\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2025:03:27 09:56:22\", \"Exif:DateTimeOriginal\": \"2025:03:27 09:56:22\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FocalLength\": \"4.25\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 11 back dual wide camera 4.25mm f/1.8\", \"Exif:LensSpecification\": \"1.54, 4.25, 1.8, 2.4\", \"Exif:MeteringMode\": \"5\", \"Exif:OffsetTime\": \"+01:00\", \"Exif:OffsetTimeDigitized\": \"+01:00\", \"Exif:OffsetTimeOriginal\": \"+01:00\", \"Exif:PhotographicSensitivity\": \"32\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"8.31456\", \"Exif:SubsecTimeDigitized\": \"070\", \"Exif:SubsecTimeOriginal\": \"070\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.00314465\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"35.2707\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2025:03:27\", \"GPS:DestBearing\": \"322.762\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"11.715\", \"GPS:ImgDirection\": \"322.762\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"51, 23, 16.36\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"6, 29, 54.44\", \"GPS:LongitudeRef\": \"E\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"8, 56, 21.01\", \"ICCProfile\": \"0, 0, 2, 24, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 230, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [536 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"1634758764\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright Apple Inc., 2022\", \"ICCProfile:creation_date\": \"2022:01:01 00:00:00\", \"ICCProfile:creator_signature\": \"6170706c\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"4150504c\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"Apple Computer, Inc.\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"Display P3\", \"ICCProfile:profile_size\": \"536\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Make\": \"Apple\", \"Model\": \"iPhone 11\", \"Orientation\": \"1\", \"Raw profile type icc\": \"\\nicc\\n     536\\n000002186170706c040000006d6e74725247422058595a2007e600010001000000000000\\n616373704150504c000000004150504c000000000000000000000000000000000000f6d6\\n000100000000d32d6170706cecfda38e388547c36db4bd4f7ada182f0000000000000000\\n00000000000000000000000000000000000000000000000a64657363000000fc00000030\\n637072740000012c00000050777470740000017c000000147258595a0000019000000014\\n6758595a000001a4000000146258595a000001b80000001472545243000001cc00000020\\n63686164000001ec0000002c62545243000001cc0000002067545243000001cc00000020\\n6d6c756300000000000000010000000c656e5553000000140000001c0044006900730070\\n006c006100790020005000336d6c756300000000000000010000000c656e555300000034\\n0000001c0043006f00700079007200690067006800740020004100700070006c00650020\\n0049006e0063002e002c0020003200300032003258595a20000000000000f6d500010000\\n0000d32c58595a2000000000000083df00003dbfffffffbb58595a200000000000004abf\\n0000b13700000ab958595a2000000000000028380000110b0000c8b97061726100000000\\n00030000000266660000f2a700000d59000013d000000a5b736633320000000000010c42\\n000005defffff326000007930000fd90fffffba2fffffda3000003dc0000c06e\\n\", \"ResolutionUnit\": \"inch\", \"Software\": \"18.3.1\", \"XResolution\": \"71.9836\", \"YResolution\": \"71.9836\", \"date:create\": \"2025-03-27T09:29:06+00:00\", \"date:modify\": \"2025-03-27T09:29:06+00:00\", \"date:timestamp\": \"2025-03-27T09:29:08+00:00\", \"exif:DateTime\": \"2025:03:27 09:56:22\", \"exif:ExifOffset\": \"216, \", \"exif:ExposureTime\": \"1/318\", \"exif:FNumber\": \"9/5\", \"exif:GPSAltitude\": \"133923/3797\", \"exif:GPSAltitudeRef\": \".\", \"exif:GPSDateStamp\": \"2025:03:27\", \"exif:GPSDestBearing\": \"82627/256\", \"exif:GPSDestBearingRef\": \"T\", \"exif:GPSHPositioningError\": \"112944/9641\", \"exif:GPSImgDirection\": \"82627/256\", \"exif:GPSImgDirectionRef\": \"T\", \"exif:GPSInfo\": \"2326, \", \"exif:GPSLatitude\": \"51/1,23/1,1636/100\", \"exif:GPSLatitudeRef\": \"N\", \"exif:GPSLongitude\": \"6/1,29/1,5444/100\", \"exif:GPSLongitudeRef\": \"E\", \"exif:GPSSpeed\": \"0/1\", \"exif:GPSSpeedRef\": \"K\", \"exif:GPSTimeStamp\": \"8/1,56/1,2101/100\", \"exif:Make\": \"Apple\", \"exif:MakerNote\": \"Apple iOS\", \"exif:Model\": \"iPhone 11\", \"exif:SceneType\": \".\", \"exif:Software\": \"18.3.1\", \"exif:SubjectArea\": \"1974, \", \"icc:copyright\": \"Copyright Apple Inc., 2022\", \"icc:description\": \"Display P3\", \"oiio:ColorSpace\": \"sRGB\", \"unknown\": \"iPhone 11\"}"
                    },
                    {
                        "viewId": 812803568,
                        "poseId": 812803568,
                        "path": "C:/Users/havoc/Downloads/IMG_1475.png",
                        "intrinsicId": 1353460387,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.800000\", \"DateTime\": \"2025:03:27 09:54:48\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"7.54629\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2025:03:27 09:54:48\", \"Exif:DateTimeOriginal\": \"2025:03:27 09:54:48\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FocalLength\": \"4.25\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 11 back dual wide camera 4.25mm f/1.8\", \"Exif:LensSpecification\": \"1.54, 4.25, 1.8, 2.4\", \"Exif:MeteringMode\": \"5\", \"Exif:OffsetTime\": \"+01:00\", \"Exif:OffsetTimeDigitized\": \"+01:00\", \"Exif:OffsetTimeOriginal\": \"+01:00\", \"Exif:PhotographicSensitivity\": \"32\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.03372\", \"Exif:SubsecTimeDigitized\": \"639\", \"Exif:SubsecTimeOriginal\": \"639\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.0019084\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"35.0885\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2025:03:27\", \"GPS:DestBearing\": \"116.926\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"12.0706\", \"GPS:ImgDirection\": \"116.926\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"51, 23, 16.31\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"6, 29, 54.25\", \"GPS:LongitudeRef\": \"E\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"8, 54, 47.01\", \"ICCProfile\": \"0, 0, 2, 24, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 230, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [536 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"1634758764\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright Apple Inc., 2022\", \"ICCProfile:creation_date\": \"2022:01:01 00:00:00\", \"ICCProfile:creator_signature\": \"6170706c\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"4150504c\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"Apple Computer, Inc.\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"Display P3\", \"ICCProfile:profile_size\": \"536\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Make\": \"Apple\", \"Model\": \"iPhone 11\", \"Orientation\": \"1\", \"Raw profile type icc\": \"\\nicc\\n     536\\n000002186170706c040000006d6e74725247422058595a2007e600010001000000000000\\n616373704150504c000000004150504c000000000000000000000000000000000000f6d6\\n000100000000d32d6170706cecfda38e388547c36db4bd4f7ada182f0000000000000000\\n00000000000000000000000000000000000000000000000a64657363000000fc00000030\\n637072740000012c00000050777470740000017c000000147258595a0000019000000014\\n6758595a000001a4000000146258595a000001b80000001472545243000001cc00000020\\n63686164000001ec0000002c62545243000001cc0000002067545243000001cc00000020\\n6d6c756300000000000000010000000c656e5553000000140000001c0044006900730070\\n006c006100790020005000336d6c756300000000000000010000000c656e555300000034\\n0000001c0043006f00700079007200690067006800740020004100700070006c00650020\\n0049006e0063002e002c0020003200300032003258595a20000000000000f6d500010000\\n0000d32c58595a2000000000000083df00003dbfffffffbb58595a200000000000004abf\\n0000b13700000ab958595a2000000000000028380000110b0000c8b97061726100000000\\n00030000000266660000f2a700000d59000013d000000a5b736633320000000000010c42\\n000005defffff326000007930000fd90fffffba2fffffda3000003dc0000c06e\\n\", \"ResolutionUnit\": \"inch\", \"Software\": \"18.3.1\", \"XResolution\": \"71.9836\", \"YResolution\": \"71.9836\", \"date:create\": \"2025-03-27T09:32:27+00:00\", \"date:modify\": \"2025-03-27T09:32:27+00:00\", \"date:timestamp\": \"2025-03-27T09:32:30+00:00\", \"exif:DateTime\": \"2025:03:27 09:54:48\", \"exif:ExifOffset\": \"216, \", \"exif:ExposureTime\": \"1/524\", \"exif:FNumber\": \"9/5\", \"exif:GPSAltitude\": \"69019/1967\", \"exif:GPSAltitudeRef\": \".\", \"exif:GPSDateStamp\": \"2025:03:27\", \"exif:GPSDestBearing\": \"283546/2425\", \"exif:GPSDestBearingRef\": \"T\", \"exif:GPSHPositioningError\": \"123687/10247\", \"exif:GPSImgDirection\": \"283546/2425\", \"exif:GPSImgDirectionRef\": \"T\", \"exif:GPSInfo\": \"2326, \", \"exif:GPSLatitude\": \"51/1,23/1,1631/100\", \"exif:GPSLatitudeRef\": \"N\", \"exif:GPSLongitude\": \"6/1,29/1,5425/100\", \"exif:GPSLongitudeRef\": \"E\", \"exif:GPSSpeed\": \"0/1\", \"exif:GPSSpeedRef\": \"K\", \"exif:GPSTimeStamp\": \"8/1,54/1,4701/100\", \"exif:Make\": \"Apple\", \"exif:MakerNote\": \"Apple iOS\", \"exif:Model\": \"iPhone 11\", \"exif:SceneType\": \".\", \"exif:Software\": \"18.3.1\", \"exif:SubjectArea\": \"1979, \", \"icc:copyright\": \"Copyright Apple Inc., 2022\", \"icc:description\": \"Display P3\", \"oiio:ColorSpace\": \"sRGB\", \"unknown\": \"iPhone 11\"}"
                    },
                    {
                        "viewId": 880874105,
                        "poseId": 880874105,
                        "path": "C:/Users/havoc/Downloads/IMG_1471.png",
                        "intrinsicId": 1353460387,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.800000\", \"DateTime\": \"2025:03:27 09:54:13\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.65667\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2025:03:27 09:54:13\", \"Exif:DateTimeOriginal\": \"2025:03:27 09:54:13\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FocalLength\": \"4.25\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 11 back dual wide camera 4.25mm f/1.8\", \"Exif:LensSpecification\": \"1.54, 4.25, 1.8, 2.4\", \"Exif:MeteringMode\": \"5\", \"Exif:OffsetTime\": \"+01:00\", \"Exif:OffsetTimeDigitized\": \"+01:00\", \"Exif:OffsetTimeOriginal\": \"+01:00\", \"Exif:PhotographicSensitivity\": \"32\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.1767\", \"Exif:SubsecTimeDigitized\": \"154\", \"Exif:SubsecTimeOriginal\": \"154\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.000864304\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"35.2803\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2025:03:27\", \"GPS:DestBearing\": \"278.625\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"8.94242\", \"GPS:ImgDirection\": \"278.625\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"51, 23, 16.14\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"6, 29, 53.96\", \"GPS:LongitudeRef\": \"E\", \"GPS:Speed\": \"0.107699\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"8, 54, 12.01\", \"ICCProfile\": \"0, 0, 2, 24, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 230, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [536 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"1634758764\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright Apple Inc., 2022\", \"ICCProfile:creation_date\": \"2022:01:01 00:00:00\", \"ICCProfile:creator_signature\": \"6170706c\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"4150504c\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"Apple Computer, Inc.\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"Display P3\", \"ICCProfile:profile_size\": \"536\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Make\": \"Apple\", \"Model\": \"iPhone 11\", \"Orientation\": \"1\", \"Raw profile type icc\": \"\\nicc\\n     536\\n000002186170706c040000006d6e74725247422058595a2007e600010001000000000000\\n616373704150504c000000004150504c000000000000000000000000000000000000f6d6\\n000100000000d32d6170706cecfda38e388547c36db4bd4f7ada182f0000000000000000\\n00000000000000000000000000000000000000000000000a64657363000000fc00000030\\n637072740000012c00000050777470740000017c000000147258595a0000019000000014\\n6758595a000001a4000000146258595a000001b80000001472545243000001cc00000020\\n63686164000001ec0000002c62545243000001cc0000002067545243000001cc00000020\\n6d6c756300000000000000010000000c656e5553000000140000001c0044006900730070\\n006c006100790020005000336d6c756300000000000000010000000c656e555300000034\\n0000001c0043006f00700079007200690067006800740020004100700070006c00650020\\n0049006e0063002e002c0020003200300032003258595a20000000000000f6d500010000\\n0000d32c58595a2000000000000083df00003dbfffffffbb58595a200000000000004abf\\n0000b13700000ab958595a2000000000000028380000110b0000c8b97061726100000000\\n00030000000266660000f2a700000d59000013d000000a5b736633320000000000010c42\\n000005defffff326000007930000fd90fffffba2fffffda3000003dc0000c06e\\n\", \"ResolutionUnit\": \"inch\", \"Software\": \"18.3.1\", \"XResolution\": \"71.9836\", \"YResolution\": \"71.9836\", \"date:create\": \"2025-03-27T09:29:07+00:00\", \"date:modify\": \"2025-03-27T09:29:06+00:00\", \"date:timestamp\": \"2025-03-27T09:29:08+00:00\", \"exif:DateTime\": \"2025:03:27 09:54:13\", \"exif:ExifOffset\": \"216, \", \"exif:ExposureTime\": \"1/1157\", \"exif:FNumber\": \"9/5\", \"exif:GPSAltitude\": \"172803/4898\", \"exif:GPSAltitudeRef\": \".\", \"exif:GPSDateStamp\": \"2025:03:27\", \"exif:GPSDestBearing\": \"379766/1363\", \"exif:GPSDestBearingRef\": \"T\", \"exif:GPSHPositioningError\": \"52027/5818\", \"exif:GPSImgDirection\": \"379766/1363\", \"exif:GPSImgDirectionRef\": \"T\", \"exif:GPSInfo\": \"2326, \", \"exif:GPSLatitude\": \"51/1,23/1,1614/100\", \"exif:GPSLatitudeRef\": \"N\", \"exif:GPSLongitude\": \"6/1,29/1,5396/100\", \"exif:GPSLongitudeRef\": \"E\", \"exif:GPSSpeed\": \"17965/166808\", \"exif:GPSSpeedRef\": \"K\", \"exif:GPSTimeStamp\": \"8/1,54/1,1201/100\", \"exif:Make\": \"Apple\", \"exif:MakerNote\": \"Apple iOS\", \"exif:Model\": \"iPhone 11\", \"exif:SceneType\": \".\", \"exif:Software\": \"18.3.1\", \"exif:SubjectArea\": \"1988, \", \"icc:copyright\": \"Copyright Apple Inc., 2022\", \"icc:description\": \"Display P3\", \"oiio:ColorSpace\": \"sRGB\", \"unknown\": \"iPhone 11\"}"
                    },
                    {
                        "viewId": 1213525360,
                        "poseId": 1213525360,
                        "path": "C:/Users/havoc/Downloads/IMG_1474.png",
                        "intrinsicId": 1353460387,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.800000\", \"DateTime\": \"2025:03:27 09:54:37\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"8.60117\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2025:03:27 09:54:37\", \"Exif:DateTimeOriginal\": \"2025:03:27 09:54:37\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FocalLength\": \"4.25\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 11 back dual wide camera 4.25mm f/1.8\", \"Exif:LensSpecification\": \"1.54, 4.25, 1.8, 2.4\", \"Exif:MeteringMode\": \"5\", \"Exif:OffsetTime\": \"+01:00\", \"Exif:OffsetTimeDigitized\": \"+01:00\", \"Exif:OffsetTimeOriginal\": \"+01:00\", \"Exif:PhotographicSensitivity\": \"32\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.0798\", \"Exif:SubsecTimeDigitized\": \"848\", \"Exif:SubsecTimeOriginal\": \"848\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.000924214\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"35.9938\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2025:03:27\", \"GPS:DestBearing\": \"164.684\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"7.57964\", \"GPS:ImgDirection\": \"164.684\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"51, 23, 16.27\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"6, 29, 54.15\", \"GPS:LongitudeRef\": \"E\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"8, 54, 37.01\", \"ICCProfile\": \"0, 0, 2, 24, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 230, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [536 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"1634758764\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright Apple Inc., 2022\", \"ICCProfile:creation_date\": \"2022:01:01 00:00:00\", \"ICCProfile:creator_signature\": \"6170706c\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"4150504c\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"Apple Computer, Inc.\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"Display P3\", \"ICCProfile:profile_size\": \"536\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Make\": \"Apple\", \"Model\": \"iPhone 11\", \"Orientation\": \"1\", \"Raw profile type icc\": \"\\nicc\\n     536\\n000002186170706c040000006d6e74725247422058595a2007e600010001000000000000\\n616373704150504c000000004150504c000000000000000000000000000000000000f6d6\\n000100000000d32d6170706cecfda38e388547c36db4bd4f7ada182f0000000000000000\\n00000000000000000000000000000000000000000000000a64657363000000fc00000030\\n637072740000012c00000050777470740000017c000000147258595a0000019000000014\\n6758595a000001a4000000146258595a000001b80000001472545243000001cc00000020\\n63686164000001ec0000002c62545243000001cc0000002067545243000001cc00000020\\n6d6c756300000000000000010000000c656e5553000000140000001c0044006900730070\\n006c006100790020005000336d6c756300000000000000010000000c656e555300000034\\n0000001c0043006f00700079007200690067006800740020004100700070006c00650020\\n0049006e0063002e002c0020003200300032003258595a20000000000000f6d500010000\\n0000d32c58595a2000000000000083df00003dbfffffffbb58595a200000000000004abf\\n0000b13700000ab958595a2000000000000028380000110b0000c8b97061726100000000\\n00030000000266660000f2a700000d59000013d000000a5b736633320000000000010c42\\n000005defffff326000007930000fd90fffffba2fffffda3000003dc0000c06e\\n\", \"ResolutionUnit\": \"inch\", \"Software\": \"18.3.1\", \"XResolution\": \"71.9836\", \"YResolution\": \"71.9836\", \"date:create\": \"2025-03-27T09:32:27+00:00\", \"date:modify\": \"2025-03-27T09:32:27+00:00\", \"date:timestamp\": \"2025-03-27T09:32:29+00:00\", \"exif:DateTime\": \"2025:03:27 09:54:37\", \"exif:ExifOffset\": \"216, \", \"exif:ExposureTime\": \"1/1082\", \"exif:FNumber\": \"9/5\", \"exif:GPSAltitude\": \"133789/3717\", \"exif:GPSAltitudeRef\": \".\", \"exif:GPSDateStamp\": \"2025:03:27\", \"exif:GPSDestBearing\": \"197291/1198\", \"exif:GPSDestBearingRef\": \"T\", \"exif:GPSHPositioningError\": \"76471/10089\", \"exif:GPSImgDirection\": \"197291/1198\", \"exif:GPSImgDirectionRef\": \"T\", \"exif:GPSInfo\": \"2326, \", \"exif:GPSLatitude\": \"51/1,23/1,1627/100\", \"exif:GPSLatitudeRef\": \"N\", \"exif:GPSLongitude\": \"6/1,29/1,5415/100\", \"exif:GPSLongitudeRef\": \"E\", \"exif:GPSSpeed\": \"0/1\", \"exif:GPSSpeedRef\": \"K\", \"exif:GPSTimeStamp\": \"8/1,54/1,3701/100\", \"exif:Make\": \"Apple\", \"exif:MakerNote\": \"Apple iOS\", \"exif:Model\": \"iPhone 11\", \"exif:SceneType\": \".\", \"exif:Software\": \"18.3.1\", \"exif:SubjectArea\": \"1983, \", \"icc:copyright\": \"Copyright Apple Inc., 2022\", \"icc:description\": \"Display P3\", \"oiio:ColorSpace\": \"sRGB\", \"unknown\": \"iPhone 11\"}"
                    },
                    {
                        "viewId": 1494829973,
                        "poseId": 1494829973,
                        "path": "C:/Users/havoc/Downloads/IMG_1486.png",
                        "intrinsicId": 4253174892,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"5.750000\", \"ICCProfile\": \"0, 0, 2, 24, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 230, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [536 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"1634758764\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright Apple Inc., 2022\", \"ICCProfile:creation_date\": \"2022:01:01 00:00:00\", \"ICCProfile:creator_signature\": \"6170706c\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"4150504c\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"Apple Computer, Inc.\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"Display P3\", \"ICCProfile:profile_size\": \"536\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Raw profile type icc\": \"\\nicc\\n     536\\n000002186170706c040000006d6e74725247422058595a2007e600010001000000000000\\n616373704150504c000000004150504c000000000000000000000000000000000000f6d6\\n000100000000d32d6170706cecfda38e388547c36db4bd4f7ada182f0000000000000000\\n00000000000000000000000000000000000000000000000a64657363000000fc00000030\\n637072740000012c00000050777470740000017c000000147258595a0000019000000014\\n6758595a000001a4000000146258595a000001b80000001472545243000001cc00000020\\n63686164000001ec0000002c62545243000001cc0000002067545243000001cc00000020\\n6d6c756300000000000000010000000c656e5553000000140000001c0044006900730070\\n006c006100790020005000336d6c756300000000000000010000000c656e555300000034\\n0000001c0043006f00700079007200690067006800740020004100700070006c00650020\\n0049006e0063002e002c0020003200300032003258595a20000000000000f6d500010000\\n0000d32c58595a2000000000000083df00003dbfffffffbb58595a200000000000004abf\\n0000b13700000ab958595a2000000000000028380000110b0000c8b97061726100000000\\n00030000000266660000f2a700000d59000013d000000a5b736633320000000000010c42\\n000005defffff326000007930000fd90fffffba2fffffda3000003dc0000c06e\\n\", \"ResolutionUnit\": \"inch\", \"XResolution\": \"71.9836\", \"YResolution\": \"71.9836\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1518428374,
                        "poseId": 1518428374,
                        "path": "C:/Users/havoc/Downloads/IMG_1481.png",
                        "intrinsicId": 4253174892,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"5.750000\", \"ICCProfile\": \"0, 0, 2, 24, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 230, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [536 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"1634758764\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright Apple Inc., 2022\", \"ICCProfile:creation_date\": \"2022:01:01 00:00:00\", \"ICCProfile:creator_signature\": \"6170706c\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"4150504c\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"Apple Computer, Inc.\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"Display P3\", \"ICCProfile:profile_size\": \"536\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Raw profile type icc\": \"\\nicc\\n     536\\n000002186170706c040000006d6e74725247422058595a2007e600010001000000000000\\n616373704150504c000000004150504c000000000000000000000000000000000000f6d6\\n000100000000d32d6170706cecfda38e388547c36db4bd4f7ada182f0000000000000000\\n00000000000000000000000000000000000000000000000a64657363000000fc00000030\\n637072740000012c00000050777470740000017c000000147258595a0000019000000014\\n6758595a000001a4000000146258595a000001b80000001472545243000001cc00000020\\n63686164000001ec0000002c62545243000001cc0000002067545243000001cc00000020\\n6d6c756300000000000000010000000c656e5553000000140000001c0044006900730070\\n006c006100790020005000336d6c756300000000000000010000000c656e555300000034\\n0000001c0043006f00700079007200690067006800740020004100700070006c00650020\\n0049006e0063002e002c0020003200300032003258595a20000000000000f6d500010000\\n0000d32c58595a2000000000000083df00003dbfffffffbb58595a200000000000004abf\\n0000b13700000ab958595a2000000000000028380000110b0000c8b97061726100000000\\n00030000000266660000f2a700000d59000013d000000a5b736633320000000000010c42\\n000005defffff326000007930000fd90fffffba2fffffda3000003dc0000c06e\\n\", \"ResolutionUnit\": \"inch\", \"XResolution\": \"71.9836\", \"YResolution\": \"71.9836\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1738696821,
                        "poseId": 1738696821,
                        "path": "C:/Users/havoc/Downloads/IMG_1483.png",
                        "intrinsicId": 4253174892,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"5.750000\", \"ICCProfile\": \"0, 0, 2, 24, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 230, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [536 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"1634758764\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright Apple Inc., 2022\", \"ICCProfile:creation_date\": \"2022:01:01 00:00:00\", \"ICCProfile:creator_signature\": \"6170706c\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"4150504c\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"Apple Computer, Inc.\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"Display P3\", \"ICCProfile:profile_size\": \"536\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Raw profile type icc\": \"\\nicc\\n     536\\n000002186170706c040000006d6e74725247422058595a2007e600010001000000000000\\n616373704150504c000000004150504c000000000000000000000000000000000000f6d6\\n000100000000d32d6170706cecfda38e388547c36db4bd4f7ada182f0000000000000000\\n00000000000000000000000000000000000000000000000a64657363000000fc00000030\\n637072740000012c00000050777470740000017c000000147258595a0000019000000014\\n6758595a000001a4000000146258595a000001b80000001472545243000001cc00000020\\n63686164000001ec0000002c62545243000001cc0000002067545243000001cc00000020\\n6d6c756300000000000000010000000c656e5553000000140000001c0044006900730070\\n006c006100790020005000336d6c756300000000000000010000000c656e555300000034\\n0000001c0043006f00700079007200690067006800740020004100700070006c00650020\\n0049006e0063002e002c0020003200300032003258595a20000000000000f6d500010000\\n0000d32c58595a2000000000000083df00003dbfffffffbb58595a200000000000004abf\\n0000b13700000ab958595a2000000000000028380000110b0000c8b97061726100000000\\n00030000000266660000f2a700000d59000013d000000a5b736633320000000000010c42\\n000005defffff326000007930000fd90fffffba2fffffda3000003dc0000c06e\\n\", \"ResolutionUnit\": \"inch\", \"XResolution\": \"71.9836\", \"YResolution\": \"71.9836\", \"oiio:ColorSpace\": \"sRGB\"}"
                    },
                    {
                        "viewId": 1800807763,
                        "poseId": 1800807763,
                        "path": "C:/Users/havoc/Downloads/IMG_1477.png",
                        "intrinsicId": 1353460387,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.800000\", \"DateTime\": \"2025:03:27 09:55:12\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"7.69405\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2025:03:27 09:55:12\", \"Exif:DateTimeOriginal\": \"2025:03:27 09:55:12\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FocalLength\": \"4.25\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 11 back dual wide camera 4.25mm f/1.8\", \"Exif:LensSpecification\": \"1.54, 4.25, 1.8, 2.4\", \"Exif:MeteringMode\": \"5\", \"Exif:OffsetTime\": \"+01:00\", \"Exif:OffsetTimeDigitized\": \"+01:00\", \"Exif:OffsetTimeOriginal\": \"+01:00\", \"Exif:PhotographicSensitivity\": \"32\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.2294\", \"Exif:SubsecTimeDigitized\": \"163\", \"Exif:SubsecTimeOriginal\": \"163\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.00166667\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"35.2471\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2025:03:27\", \"GPS:DestBearing\": \"54.5102\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"7.8998\", \"GPS:ImgDirection\": \"54.5102\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"51, 23, 16.29\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"6, 29, 54.31\", \"GPS:LongitudeRef\": \"E\", \"GPS:Speed\": \"0.143254\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"8, 55, 11.01\", \"ICCProfile\": \"0, 0, 2, 24, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 230, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [536 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"1634758764\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright Apple Inc., 2022\", \"ICCProfile:creation_date\": \"2022:01:01 00:00:00\", \"ICCProfile:creator_signature\": \"6170706c\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"4150504c\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"Apple Computer, Inc.\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"Display P3\", \"ICCProfile:profile_size\": \"536\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Make\": \"Apple\", \"Model\": \"iPhone 11\", \"Orientation\": \"1\", \"Raw profile type icc\": \"\\nicc\\n     536\\n000002186170706c040000006d6e74725247422058595a2007e600010001000000000000\\n616373704150504c000000004150504c000000000000000000000000000000000000f6d6\\n000100000000d32d6170706cecfda38e388547c36db4bd4f7ada182f0000000000000000\\n00000000000000000000000000000000000000000000000a64657363000000fc00000030\\n637072740000012c00000050777470740000017c000000147258595a0000019000000014\\n6758595a000001a4000000146258595a000001b80000001472545243000001cc00000020\\n63686164000001ec0000002c62545243000001cc0000002067545243000001cc00000020\\n6d6c756300000000000000010000000c656e5553000000140000001c0044006900730070\\n006c006100790020005000336d6c756300000000000000010000000c656e555300000034\\n0000001c0043006f00700079007200690067006800740020004100700070006c00650020\\n0049006e0063002e002c0020003200300032003258595a20000000000000f6d500010000\\n0000d32c58595a2000000000000083df00003dbfffffffbb58595a200000000000004abf\\n0000b13700000ab958595a2000000000000028380000110b0000c8b97061726100000000\\n00030000000266660000f2a700000d59000013d000000a5b736633320000000000010c42\\n000005defffff326000007930000fd90fffffba2fffffda3000003dc0000c06e\\n\", \"ResolutionUnit\": \"inch\", \"Software\": \"18.3.1\", \"XResolution\": \"71.9836\", \"YResolution\": \"71.9836\", \"date:create\": \"2025-03-27T09:26:31+00:00\", \"date:modify\": \"2025-03-27T09:26:31+00:00\", \"date:timestamp\": \"2025-03-27T09:26:33+00:00\", \"exif:DateTime\": \"2025:03:27 09:55:12\", \"exif:ExifOffset\": \"216, \", \"exif:ExposureTime\": \"1/600\", \"exif:FNumber\": \"9/5\", \"exif:GPSAltitude\": \"189453/5375\", \"exif:GPSAltitudeRef\": \".\", \"exif:GPSDateStamp\": \"2025:03:27\", \"exif:GPSDestBearing\": \"426433/7823\", \"exif:GPSDestBearingRef\": \"T\", \"exif:GPSHPositioningError\": \"391933/49613\", \"exif:GPSImgDirection\": \"426433/7823\", \"exif:GPSImgDirectionRef\": \"T\", \"exif:GPSInfo\": \"2326, \", \"exif:GPSLatitude\": \"51/1,23/1,1629/100\", \"exif:GPSLatitudeRef\": \"N\", \"exif:GPSLongitude\": \"6/1,29/1,5431/100\", \"exif:GPSLongitudeRef\": \"E\", \"exif:GPSSpeed\": \"23139/161524\", \"exif:GPSSpeedRef\": \"K\", \"exif:GPSTimeStamp\": \"8/1,55/1,1101/100\", \"exif:Make\": \"Apple\", \"exif:MakerNote\": \"Apple iOS\", \"exif:Model\": \"iPhone 11\", \"exif:SceneType\": \".\", \"exif:Software\": \"18.3.1\", \"exif:SubjectArea\": \"1981, \", \"icc:copyright\": \"Copyright Apple Inc., 2022\", \"icc:description\": \"Display P3\", \"oiio:ColorSpace\": \"sRGB\", \"unknown\": \"iPhone 11\"}"
                    },
                    {
                        "viewId": 1835876525,
                        "poseId": 1835876525,
                        "path": "C:/Users/havoc/Downloads/IMG_1473.png",
                        "intrinsicId": 1353460387,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.800000\", \"DateTime\": \"2025:03:27 09:54:27\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"9.09802\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2025:03:27 09:54:27\", \"Exif:DateTimeOriginal\": \"2025:03:27 09:54:27\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FocalLength\": \"4.25\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 11 back dual wide camera 4.25mm f/1.8\", \"Exif:LensSpecification\": \"1.54, 4.25, 1.8, 2.4\", \"Exif:MeteringMode\": \"5\", \"Exif:OffsetTime\": \"+01:00\", \"Exif:OffsetTimeDigitized\": \"+01:00\", \"Exif:OffsetTimeOriginal\": \"+01:00\", \"Exif:PhotographicSensitivity\": \"32\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"10.7319\", \"Exif:SubsecTimeDigitized\": \"804\", \"Exif:SubsecTimeOriginal\": \"804\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.000587889\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"35.7151\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2025:03:27\", \"GPS:DestBearing\": \"222.62\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"18.5865\", \"GPS:ImgDirection\": \"222.62\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"51, 23, 16.25\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"6, 29, 54.11\", \"GPS:LongitudeRef\": \"E\", \"GPS:Speed\": \"0.126015\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"8, 54, 27.01\", \"ICCProfile\": \"0, 0, 2, 24, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 230, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [536 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"1634758764\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright Apple Inc., 2022\", \"ICCProfile:creation_date\": \"2022:01:01 00:00:00\", \"ICCProfile:creator_signature\": \"6170706c\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"4150504c\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"Apple Computer, Inc.\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"Display P3\", \"ICCProfile:profile_size\": \"536\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Make\": \"Apple\", \"Model\": \"iPhone 11\", \"Orientation\": \"1\", \"Raw profile type icc\": \"\\nicc\\n     536\\n000002186170706c040000006d6e74725247422058595a2007e600010001000000000000\\n616373704150504c000000004150504c000000000000000000000000000000000000f6d6\\n000100000000d32d6170706cecfda38e388547c36db4bd4f7ada182f0000000000000000\\n00000000000000000000000000000000000000000000000a64657363000000fc00000030\\n637072740000012c00000050777470740000017c000000147258595a0000019000000014\\n6758595a000001a4000000146258595a000001b80000001472545243000001cc00000020\\n63686164000001ec0000002c62545243000001cc0000002067545243000001cc00000020\\n6d6c756300000000000000010000000c656e5553000000140000001c0044006900730070\\n006c006100790020005000336d6c756300000000000000010000000c656e555300000034\\n0000001c0043006f00700079007200690067006800740020004100700070006c00650020\\n0049006e0063002e002c0020003200300032003258595a20000000000000f6d500010000\\n0000d32c58595a2000000000000083df00003dbfffffffbb58595a200000000000004abf\\n0000b13700000ab958595a2000000000000028380000110b0000c8b97061726100000000\\n00030000000266660000f2a700000d59000013d000000a5b736633320000000000010c42\\n000005defffff326000007930000fd90fffffba2fffffda3000003dc0000c06e\\n\", \"ResolutionUnit\": \"inch\", \"Software\": \"18.3.1\", \"XResolution\": \"71.9836\", \"YResolution\": \"71.9836\", \"date:create\": \"2025-03-27T09:31:02+00:00\", \"date:modify\": \"2025-03-27T09:31:02+00:00\", \"date:timestamp\": \"2025-03-27T09:31:04+00:00\", \"exif:DateTime\": \"2025:03:27 09:54:27\", \"exif:ExifOffset\": \"216, \", \"exif:ExposureTime\": \"1/1701\", \"exif:FNumber\": \"9/5\", \"exif:GPSAltitude\": \"58037/1625\", \"exif:GPSAltitudeRef\": \".\", \"exif:GPSDateStamp\": \"2025:03:27\", \"exif:GPSDestBearing\": \"897382/4031\", \"exif:GPSDestBearingRef\": \"T\", \"exif:GPSHPositioningError\": \"224023/12053\", \"exif:GPSImgDirection\": \"897382/4031\", \"exif:GPSImgDirectionRef\": \"T\", \"exif:GPSInfo\": \"2326, \", \"exif:GPSLatitude\": \"51/1,23/1,1625/100\", \"exif:GPSLatitudeRef\": \"N\", \"exif:GPSLongitude\": \"6/1,29/1,5411/100\", \"exif:GPSLongitudeRef\": \"E\", \"exif:GPSSpeed\": \"9821/77935\", \"exif:GPSSpeedRef\": \"K\", \"exif:GPSTimeStamp\": \"8/1,54/1,2701/100\", \"exif:Make\": \"Apple\", \"exif:MakerNote\": \"Apple iOS\", \"exif:Model\": \"iPhone 11\", \"exif:SceneType\": \".\", \"exif:Software\": \"18.3.1\", \"exif:SubjectArea\": \"1983, \", \"icc:copyright\": \"Copyright Apple Inc., 2022\", \"icc:description\": \"Display P3\", \"oiio:ColorSpace\": \"sRGB\", \"unknown\": \"iPhone 11\"}"
                    },
                    {
                        "viewId": 1899140800,
                        "poseId": 1899140800,
                        "path": "C:/Users/havoc/Downloads/plantPNG.png",
                        "intrinsicId": 1353460387,
                        "rigId": -1,
                        "subPoseId": -1,
                        "metadata": "{\"AliceVision:SensorWidth\": \"4.800000\", \"DateTime\": \"2025:03:27 09:55:00\", \"Exif:ApertureValue\": \"1.69599\", \"Exif:BrightnessValue\": \"7.7105\", \"Exif:ColorSpace\": \"65535\", \"Exif:DateTimeDigitized\": \"2025:03:27 09:55:00\", \"Exif:DateTimeOriginal\": \"2025:03:27 09:55:00\", \"Exif:ExifVersion\": \"0232\", \"Exif:ExposureBiasValue\": \"0\", \"Exif:ExposureMode\": \"0\", \"Exif:ExposureProgram\": \"2\", \"Exif:Flash\": \"16\", \"Exif:FocalLength\": \"4.25\", \"Exif:FocalLengthIn35mmFilm\": \"26\", \"Exif:LensMake\": \"Apple\", \"Exif:LensModel\": \"iPhone 11 back dual wide camera 4.25mm f/1.8\", \"Exif:LensSpecification\": \"1.54, 4.25, 1.8, 2.4\", \"Exif:MeteringMode\": \"5\", \"Exif:OffsetTime\": \"+01:00\", \"Exif:OffsetTimeDigitized\": \"+01:00\", \"Exif:OffsetTimeOriginal\": \"+01:00\", \"Exif:PhotographicSensitivity\": \"32\", \"Exif:PixelXDimension\": \"4032\", \"Exif:PixelYDimension\": \"3024\", \"Exif:SensingMethod\": \"2\", \"Exif:ShutterSpeedValue\": \"9.14203\", \"Exif:SubsecTimeDigitized\": \"570\", \"Exif:SubsecTimeOriginal\": \"570\", \"Exif:WhiteBalance\": \"0\", \"ExposureTime\": \"0.00176991\", \"FNumber\": \"1.8\", \"GPS:Altitude\": \"35.0997\", \"GPS:AltitudeRef\": \"0\", \"GPS:DateStamp\": \"2025:03:27\", \"GPS:DestBearing\": \"87.9834\", \"GPS:DestBearingRef\": \"T\", \"GPS:HPositioningError\": \"9.31823\", \"GPS:ImgDirection\": \"87.9834\", \"GPS:ImgDirectionRef\": \"T\", \"GPS:Latitude\": \"51, 23, 16.27\", \"GPS:LatitudeRef\": \"N\", \"GPS:Longitude\": \"6, 29, 54.24\", \"GPS:LongitudeRef\": \"E\", \"GPS:Speed\": \"0\", \"GPS:SpeedRef\": \"K\", \"GPS:TimeStamp\": \"8, 55, 0.01\", \"ICCProfile\": \"0, 0, 2, 24, 97, 112, 112, 108, 4, 0, 0, 0, 109, 110, 116, 114, 82, 71, 66, 32, 88, 89, 90, 32, 7, 230, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 97, 99, 115, 112, 65, 80, 80, 76, 0, 0, 0, 0, 65, 80, 80, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ... [536 x uint8]\", \"ICCProfile:attributes\": \"Reflective, Glossy, Positive, Color\", \"ICCProfile:cmm_type\": \"1634758764\", \"ICCProfile:color_space\": \"RGB\", \"ICCProfile:copyright\": \"Copyright Apple Inc., 2022\", \"ICCProfile:creation_date\": \"2022:01:01 00:00:00\", \"ICCProfile:creator_signature\": \"6170706c\", \"ICCProfile:device_class\": \"Display device profile\", \"ICCProfile:flags\": \"Not Embedded, Independent\", \"ICCProfile:manufacturer\": \"4150504c\", \"ICCProfile:model\": \"0\", \"ICCProfile:platform_signature\": \"Apple Computer, Inc.\", \"ICCProfile:profile_connection_space\": \"XYZ\", \"ICCProfile:profile_description\": \"Display P3\", \"ICCProfile:profile_size\": \"536\", \"ICCProfile:profile_version\": \"4.0.0\", \"ICCProfile:rendering_intent\": \"Perceptual\", \"Make\": \"Apple\", \"Model\": \"iPhone 11\", \"Orientation\": \"1\", \"Raw profile type icc\": \"\\nicc\\n     536\\n000002186170706c040000006d6e74725247422058595a2007e600010001000000000000\\n616373704150504c000000004150504c000000000000000000000000000000000000f6d6\\n000100000000d32d6170706cecfda38e388547c36db4bd4f7ada182f0000000000000000\\n00000000000000000000000000000000000000000000000a64657363000000fc00000030\\n637072740000012c00000050777470740000017c000000147258595a0000019000000014\\n6758595a000001a4000000146258595a000001b80000001472545243000001cc00000020\\n63686164000001ec0000002c62545243000001cc0000002067545243000001cc00000020\\n6d6c756300000000000000010000000c656e5553000000140000001c0044006900730070\\n006c006100790020005000336d6c756300000000000000010000000c656e555300000034\\n0000001c0043006f00700079007200690067006800740020004100700070006c00650020\\n0049006e0063002e002c0020003200300032003258595a20000000000000f6d500010000\\n0000d32c58595a2000000000000083df00003dbfffffffbb58595a200000000000004abf\\n0000b13700000ab958595a2000000000000028380000110b0000c8b97061726100000000\\n00030000000266660000f2a700000d59000013d000000a5b736633320000000000010c42\\n000005defffff326000007930000fd90fffffba2fffffda3000003dc0000c06e\\n\", \"ResolutionUnit\": \"inch\", \"Software\": \"18.3.1\", \"XResolution\": \"71.9836\", \"YResolution\": \"71.9836\", \"date:create\": \"2025-03-27T09:26:31+00:00\", \"date:modify\": \"2025-03-27T09:26:31+00:00\", \"date:timestamp\": \"2025-03-27T09:26:32+00:00\", \"exif:DateTime\": \"2025:03:27 09:55:00\", \"exif:ExifOffset\": \"216, \", \"exif:ExposureTime\": \"1/565\", \"exif:FNumber\": \"9/5\", \"exif:GPSAltitude\": \"353173/10062\", \"exif:GPSAltitudeRef\": \".\", \"exif:GPSDateStamp\": \"2025:03:27\", \"exif:GPSDestBearing\": \"90095/1024\", \"exif:GPSDestBearingRef\": \"T\", \"exif:GPSHPositioningError\": \"185731/19932\", \"exif:GPSImgDirection\": \"90095/1024\", \"exif:GPSImgDirectionRef\": \"T\", \"exif:GPSInfo\": \"2326, \", \"exif:GPSLatitude\": \"51/1,23/1,1627/100\", \"exif:GPSLatitudeRef\": \"N\", \"exif:GPSLongitude\": \"6/1,29/1,5424/100\", \"exif:GPSLongitudeRef\": \"E\", \"exif:GPSSpeed\": \"0/1\", \"exif:GPSSpeedRef\": \"K\", \"exif:GPSTimeStamp\": \"8/1,55/1,1/100\", \"exif:Make\": \"Apple\", \"exif:MakerNote\": \"Apple iOS\", \"exif:Model\": \"iPhone 11\", \"exif:SceneType\": \".\", \"exif:Software\": \"18.3.1\", \"exif:SubjectArea\": \"1983, \", \"icc:copyright\": \"Copyright Apple Inc., 2022\", \"icc:description\": \"Display P3\", \"oiio:ColorSpace\": \"sRGB\", \"unknown\": \"iPhone 11\"}"
                    }
                ],
                "intrinsics": [
                    {
                        "intrinsicId": 1353460387,
                        "initialFocalLength": 5.666666666666667,
                        "focalLength": 5.666666666666667,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 3024,
                        "height": 4032,
                        "sensorWidth": 4.8,
                        "sensorHeight": 3.5999999999999996,
                        "serialNumber": "C:/Users/havoc/Downloads_Apple_iPhone 11",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "estimated",
                        "distortionInitializationMode": "none",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "undistortionOffset": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "undistortionParams": [],
                        "locked": false
                    },
                    {
                        "intrinsicId": 4253174892,
                        "initialFocalLength": -1.0,
                        "focalLength": 9.254485322430197,
                        "pixelRatio": 1.0,
                        "pixelRatioLocked": true,
                        "type": "radial3",
                        "width": 3024,
                        "height": 4032,
                        "sensorWidth": 5.75,
                        "sensorHeight": 4.3125,
                        "serialNumber": "C:/Users/havoc/Downloads__0",
                        "principalPoint": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "initializationMode": "unknown",
                        "distortionInitializationMode": "none",
                        "distortionParams": [
                            0.0,
                            0.0,
                            0.0
                        ],
                        "undistortionOffset": {
                            "x": 0.0,
                            "y": 0.0
                        },
                        "undistortionParams": [],
                        "locked": false
                    }
                ],
                "sensorDatabase": "${ALICEVISION_SENSOR_DB}",
                "lensCorrectionProfileInfo": "${ALICEVISION_LENS_PROFILE_INFO}",
                "lensCorrectionProfileSearchIgnoreCameraModel": true,
                "defaultFieldOfView": 45.0,
                "groupCameraFallback": "folder",
                "allowedCameraModels": [
                    "pinhole",
                    "radial1",
                    "radial3",
                    "brown",
                    "fisheye4",
                    "fisheye1",
                    "3deanamorphic4",
                    "3deradial4",
                    "3declassicld"
                ],
                "rawColorInterpretation": "LibRawWhiteBalancing",
                "colorProfileDatabase": "${ALICEVISION_COLOR_PROFILE_DB}",
                "errorOnMissingColorProfile": true,
                "viewIdMethod": "metadata",
                "viewIdRegex": ".*?(\\d+)",
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/cameraInit.sfm"
            }
        },
        "DepthMap_1": {
            "nodeType": "DepthMap",
            "position": [
                1200,
                0
            ],
            "parallelization": {
                "blockSize": 12,
                "size": 14,
                "split": 2
            },
            "uids": {
                "0": "9176487f3cdebaf605a845d4ad9807ec9ad72c7f"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{PrepareDenseScene_1.input}",
                "imagesFolder": "{PrepareDenseScene_1.output}",
                "downscale": 2,
                "minViewAngle": 2.0,
                "maxViewAngle": 70.0,
                "tiling": {
                    "tileBufferWidth": 1024,
                    "tileBufferHeight": 1024,
                    "tilePadding": 64,
                    "autoAdjustSmallImage": true
                },
                "chooseTCamsPerTile": true,
                "maxTCams": 10,
                "sgm": {
                    "sgmScale": 2,
                    "sgmStepXY": 2,
                    "sgmStepZ": -1,
                    "sgmMaxTCamsPerTile": 4,
                    "sgmWSH": 4,
                    "sgmUseSfmSeeds": true,
                    "sgmSeedsRangeInflate": 0.2,
                    "sgmDepthThicknessInflate": 0.0,
                    "sgmMaxSimilarity": 1.0,
                    "sgmGammaC": 5.5,
                    "sgmGammaP": 8.0,
                    "sgmP1": 10.0,
                    "sgmP2Weighting": 100.0,
                    "sgmMaxDepths": 1500,
                    "sgmFilteringAxes": "YX",
                    "sgmDepthListPerTile": true,
                    "sgmUseConsistentScale": false
                },
                "refine": {
                    "refineEnabled": true,
                    "refineScale": 1,
                    "refineStepXY": 1,
                    "refineMaxTCamsPerTile": 4,
                    "refineSubsampling": 10,
                    "refineHalfNbDepths": 15,
                    "refineWSH": 3,
                    "refineSigma": 15.0,
                    "refineGammaC": 15.5,
                    "refineGammaP": 8.0,
                    "refineInterpolateMiddleDepth": false,
                    "refineUseConsistentScale": false
                },
                "colorOptimization": {
                    "colorOptimizationEnabled": true,
                    "colorOptimizationNbIterations": 100
                },
                "customPatchPattern": {
                    "sgmUseCustomPatchPattern": false,
                    "refineUseCustomPatchPattern": false,
                    "customPatchPatternSubparts": [],
                    "customPatchPatternGroupSubpartsPerLevel": false
                },
                "intermediateResults": {
                    "exportIntermediateDepthSimMaps": false,
                    "exportIntermediateNormalMaps": false,
                    "exportIntermediateVolumes": false,
                    "exportIntermediateCrossVolumes": false,
                    "exportIntermediateTopographicCutVolumes": false,
                    "exportIntermediateVolume9pCsv": false,
                    "exportTilePattern": false
                },
                "nbGPUs": 0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/",
                "depth": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap.exr",
                "sim": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_simMap.exr",
                "tilePattern": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_tilePattern.obj",
                "depthSgm": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgm.exr",
                "depthSgmUpscaled": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_sgmUpscaled.exr",
                "depthRefined": "{cache}/{nodeType}/{uid0}/<VIEW_ID>_depthMap_refinedFused.exr"
            }
        },
        "MeshFiltering_1": {
            "nodeType": "MeshFiltering",
            "position": [
                1800,
                0
            ],
            "parallelization": {
                "blockSize": 0,
                "size": 1,
                "split": 1
            },
            "uids": {
                "0": "e79a4e9e3fccffc66ebb336ff12c5d88c5e5198c"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "inputMesh": "{Meshing_1.outputMesh}",
                "outputMeshFileType": "obj",
                "keepLargestMeshOnly": false,
                "smoothingSubset": "all",
                "smoothingBoundariesNeighbours": 0,
                "smoothingIterations": 5,
                "smoothingLambda": 1.0,
                "filteringSubset": "all",
                "filteringIterations": 1,
                "filterLargeTrianglesFactor": 60.0,
                "filterTrianglesRatio": 0.0,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "outputMesh": "{cache}/{nodeType}/{uid0}/mesh.{outputMeshFileTypeValue}"
            }
        },
        "FeatureMatching_1": {
            "nodeType": "FeatureMatching",
            "position": [
                600,
                0
            ],
            "parallelization": {
                "blockSize": 20,
                "size": 14,
                "split": 1
            },
            "uids": {
                "0": "47ae7fb8c1c2569c88f9e0bab8dea5246da91a59"
            },
            "internalFolder": "{cache}/{nodeType}/{uid0}/",
            "inputs": {
                "input": "{ImageMatching_1.input}",
                "featuresFolders": "{ImageMatching_1.featuresFolders}",
                "imagePairsList": "{ImageMatching_1.output}",
                "describerTypes": "{FeatureExtraction_1.describerTypes}",
                "photometricMatchingMethod": "ANN_L2",
                "geometricEstimator": "acransac",
                "geometricFilterType": "fundamental_matrix",
                "distanceRatio": 0.8,
                "maxIteration": 2048,
                "geometricError": 0.0,
                "knownPosesGeometricErrorMax": 5.0,
                "minRequired2DMotion": -1.0,
                "maxMatches": 0,
                "savePutativeMatches": false,
                "crossMatching": false,
                "guidedMatching": false,
                "matchFromKnownCameraPoses": false,
                "exportDebugFiles": false,
                "verboseLevel": "info"
            },
            "internalInputs": {
                "invalidation": "",
                "comment": "",
                "label": "",
                "color": ""
            },
            "outputs": {
                "output": "{cache}/{nodeType}/{uid0}/"
            }
        }
    }
}