import AVFoundation
import XCTest

extension XCTestCase {
    func testMD5(_ buffer: AVAudioPCMBuffer) {
        let localMD5 = buffer.md5
        let name = self.description
        XCTAssert(validatedMD5s[name] == buffer.md5, "\nFAILEDMD5 \"\(name)\": \"\(localMD5)\",")
    }
}

let validatedMD5s: [String: String] = [
    "-[AmplitudeEnvelopeTests testAttack]": "62d55ce46ebda5ec90b93bfd32967c49",
    "-[AmplitudeEnvelopeTests testDecay]": "bec2f15c2ef3110cd5e55260b9671d05",
    "-[AmplitudeEnvelopeTests testDefault]": "914c64fe6304ad257fc2b0ae158808f7",
    "-[AmplitudeEnvelopeTests testParameters]": "5d1d7d1cee074ceb4b74a9ef7ceb601b",
    "-[AmplitudeEnvelopeTests testSustain]": "9b23334cea8bb4c6965c820c750594cc",
    "-[AmplitudeEnvelopeTests testRelease]": "c65afa7279eef3df9b512b22ffde4d3e",
    "-[AmplitudeEnvelopeTests testDoubleStop]": "c65afa7279eef3df9b512b22ffde4d3e",
    "-[AmplitudeTapTests testDefault]": "b90b7df4d69e57898ee39d89891f8f91",
    "-[AudioPlayerTests testBasic]": "c7e1a8f2293beba52bbbb1967f2586ab",
    "-[AudioPlayerTests testLoop]": "f0a73fe1aca7479cba6a777373ff90a3",
    "-[AudioPlayerTests testScheduleFile]": "7238ac02ab6a53f570fe304e76fcff5e",
    "-[AudioPlayerTests testVolume]": "5924bc88c255b36e4ccd63f2efd93078",
    "-[AutoPannerTests testDefault]": "52b115ac04406e28eb16b77248db7235",
    "-[AutoPannerTests testDepth]": "ab17fe93f3dd2c4b80e628fda12adb56",
    "-[AutoPannerTests testFrequency]": "b2707a5a0d833dadca0e25f71c3244e3",
    "-[AutoPannerTests testParameters]": "13d57bfee643b5acb94850da9d37adf0",
    "-[AutoWahOperationTests testAmplitude]": "f0a49149e16c4951e9be1b32559d879f",
    "-[AutoWahOperationTests testDefault]": "33ac3730e0c99c68bd9df591bb7c6fc7",
    "-[AutoWahOperationTests testWah]": "78d1404745a844950dc905c097e75c19",
    "-[AutoWahTests testAmplitude]": "9b24dc7b0c2a1aaa87f7ce6d061f9da3",
    "-[AutoWahTests testBypass]": "f4cc261bdf98ae17320f9561941c8664",
    "-[AutoWahTests testDefault]": "f4cc261bdf98ae17320f9561941c8664",
    "-[AutoWahTests testMix]": "8321d947f2f35ad18769c353e303e28c",
    "-[AutoWahTests testParamters]": "84694271628d94b1488b4487f868da5f",
    "-[AutoWahTests testWah]": "66ac186b270539dcd1f0f83441f2221b",
    "-[BalancerTests testDefault]": "0f3dd22d7b6d06fa668ccc43e1144648",
    "-[BandPassButterworthFilterTests testBandwidth]": "c8020933fb8ce38109cd07f820955e10",
    "-[BandPassButterworthFilterTests testCenterFrequency]": "999e59dd6c9404dd6988713ddabd1023",
    "-[BandPassButterworthFilterTests testDefault]": "ed21ec24dc2d48f1f0ab8813fb11ff16",
    "-[BandPassButterworthFilterTests testParameters]": "d7c3dcb43fca8705fecd0329fb4779ab",
    "-[BandRejectButterworthFilterTests testBandwidth]": "63d4e3208a3f0b923ea9f31d9b27af40",
    "-[BandRejectButterworthFilterTests testCenterFrequency]": "79044de981ae85796b15732beff3e199",
    "-[BandRejectButterworthFilterTests testDefault]": "826f0b6a8ee57d46c1d5605c85dc0ff4",
    "-[BandRejectButterworthFilterTests testParameters]": "0516e6a95f7fdfee7a85ce09095d20c9",
    "-[BitCrusherTests testBitDepth]": "cbea9ac22fb7368651860a1200714cfa",
    "-[BitCrusherTests testBypass]": "f4cc261bdf98ae17320f9561941c8664",
    "-[BitCrusherTests testDefault]": "268e98a3153e3dd66b205f1a2b8dc76c",
    "-[BitCrusherTests testParameters]": "471729937c45b7ebef9ca81358abad87",
    "-[BitCrusherTests testSampleRate]": "c66efe22d73e0fe9cfbb122fbca1f89e",
    "-[BitcrushTests testBitDepth]": "684be2a207ff360bea240abd64852d46",
    "-[BitcrushTests testDefault]": "1f6538957b9df9492ce59eb6f95a87db",
    "-[BitcrushTests testParameters]": "a507d516adaa4805dbdc017480c02475",
    "-[BitcrushTests testSampleRate]": "2d20ce82109c020b3a83d9178b3fd3fd",
    "-[BrownianNoiseTests testAmplitude]": "f39d02113ca82527e3644b4eb8de03aa",
    "-[BrownianNoiseTests testDefault]": "687ea22a287762cd48048165334431de",
    "-[ChorusTests testDefault]": "dce14537d48050129cdf1c52354c1f69",
    "-[ChorusTests testDepth]": "a2f1845556cc4f5114d3ba8454ae729f",
    "-[ChorusTests testDryWetMix]": "c9442a7d4010981fcae1ce802beeab3f",
    "-[ChorusTests testFeedback]": "01826a709dbc20a44f47a3edb55afb6f",
    "-[ChorusTests testFrequency]": "16fa81b10e283190654ee45cac7bf6f1",
    "-[ChorusTests testParameters]": "3c469aadd14ee3a6ed41b96d7f3213f7",
    "-[ChowningReverbTests testDefault]": "a19cdac88fe811fa50a4d9a7e19a6183",
    "-[ClarinetTest testClarinet]": "1db0a9fa9901af443d404e7e18676cc0",
    "-[ClarinetTest testVelocity]": "26efd42f23e15319228f423373cac169",
    "-[ClipTests testClip]": "705b0fd1857f398f8b4457f6f6d7d235",
    "-[ClipTests testDefault]": "a6361a90caf7627e88eff4410dda95e9",
    "-[ClipperTests testDefault]": "a9f44d20a71f55c72270301de3abe073",
    "-[ClipperTests testParameters1]": "365043e2eae82b69d80f8f2e10e0a138",
    "-[ClipperTests testParameters2]": "bb735b5ce586b9784e5bd8849dbc433b",
    "-[CompressorTests testAttackTime]": "99be8d7be014d568c039612e00552cbe",
    "-[CompressorTests testDefault]": "a09bbd1457f112513351d8531161955d",
    "-[CompressorTests testHeadRoom]": "2404b992b78cc06bf2d535361fb9ce5c",
    "-[CompressorTests testMasterGain]": "589a334dd22dc4ec1decf3793e2c0719",
    "-[CompressorTests testParameters]": "8a11bf5f56ba8ee30fa7d5798d8a4ae7",
    "-[CompressorTests testThreshold]": "937d2ea7e925a039f738c81a80dde70e",
    "-[CostelloReverbTests testCutoffFrequency]": "5af09fc60582fd26fe879101bc9e3afa",
    "-[CostelloReverbTests testDefault]": "f1cdbaa331e4ae5fbae76539e0f34c80",
    "-[CostelloReverbTests testFeedback]": "f7ef874f35434130757c17e7f069c1b8",
    "-[CostelloReverbTests testParametersSetAfterInit]": "9541eb81defe013eca240a07cca344c0",
    "-[CostelloReverbTests testParametersSetOnInit]": "9541eb81defe013eca240a07cca344c0",
    "-[DCBlockOperationTests testDefault]": "9df204fbc98bb8965081cb30a89715fc",
    "-[DCBlockTests testDefault]": "3853ec426676fa97905dd10161552682",
    "-[DecimatorTests testDecimation]": "3579b0868e85bddf6384bf9ff3fba2c9",
    "-[DecimatorTests testDefault]": "931366a7979c25c53d9d366e91cb71a5",
    "-[DecimatorTests testMix]": "931366a7979c25c53d9d366e91cb71a5",
    "-[DecimatorTests testParameters]": "56c2cf3f8b76ce2af52af7b46fa505bf",
    "-[DecimatorTests testRounding]": "bf4a1ec2ea4cc0bf1f132cdfb5ba30d5",
    "-[DelayOperationTests testDefault]": "aa620c12d5209cec39b67adba0a28e4a",
    "-[DelayOperationTests testFeedback]": "bc2165fffbf0446998ba9dd6dbf97a74",
    "-[DelayOperationTests testParameters]": "3103c3385f4ad4756f1b113f0afc28a0",
    "-[DelayOperationTests testTime]": "cbd8d8d9257e6b8963559654f9bfa20c",
    "-[DelayTests testDryWetMix]": "7b57b3d6769e6f492b701d5ece883b81",
    "-[DelayTests testFeedback]": "2be59a298f03eca1a17eca5dc088075c",
    "-[DelayTests testLowpassCutoff]": "b423be1853feafc9a481fb18d4a879a6",
    "-[DelayTests testParameters]": "8fdd8d8c7febdbca91b8b479f94ccc31",
    "-[DelayTests testTime]": "938ade03df377bed55c5b907b6ced8f7",
    "-[DiodeClipperTests testDefault]": "030ee7f6fbaa56bc69af19c5cee2982f",
    "-[DiodeClipperTests testParameters1]": "536370ea1e7af39d60141275961e8afe",
    "-[DiodeClipperTests testParameters2]": "f33abb656496355b13fb73e5252a7439",
    "-[DistortTests testDefault]": "028c59ba5375ccb47aab560188ee36ca",
    "-[DistortionTests testCubicTerm]": "1719ae1cf6a3a2c97cabfe90cef8fdd4",
    "-[DistortionTests testDecay]": "f7af9766f9e928f1854ae07c07c18759",
    "-[DistortionTests testDecimation]": "3f4b851ee8d8281edcdcdc3a8baa3490",
    "-[DistortionTests testDecimationMix]": "93b733a04af444bc836d3f430760a367",
    "-[DistortionTests testDefault]": "1719ae1cf6a3a2c97cabfe90cef8fdd4",
    "-[DistortionTests testDelay]": "a22f8ce2d39eec8fb07a6e36254951b6",
    "-[DistortionTests testDelayMix]": "6b0babc657aa62e7b5374e9797ca893b",
    "-[DistortionTests testFinalMix]": "38833ef32f9b21de2b13ba1dbcde9167",
    "-[DistortionTests testLinearTerm]": "1719ae1cf6a3a2c97cabfe90cef8fdd4",
    "-[DistortionTests testParameters]": "534ec37cf66c60d26089a51754fccb67",
    "-[DistortionTests testPolynomialMix]": "e7ac2037e3191494ab5373447c6ad69e",
    "-[DistortionTests testRingModBalance]": "7b8755ef9e7ee3b614995bb827109abe",
    "-[DistortionTests testRingModFreq1]": "36ae2b9ef22dcd6c97c1e8dd040bed03",
    "-[DistortionTests testRingModFreq2]": "8cfaa15c9ee06faaecb29d0a6593adc6",
    "-[DistortionTests testRingModMix]": "2a739e899f29ece740bdbd8cd4303309",
    "-[DistortionTests testRounding]": "480b80aa61d1ecd72a11f90a4d66e6ee",
    "-[DistortionTests testSoftClipGain]": "c2ac60f1a94e65f13751202ff2207b5a",
    "-[DistortionTests testSquaredTerm]": "1719ae1cf6a3a2c97cabfe90cef8fdd4",
    "-[DripTests testDampingFactor]": "4da4d7e49ac8b2ad136b7c2593f6e773",
    "-[DripTests testDefault]": "b0a6e9c515ff5bc43ad0aebaa05b057f",
    "-[DripTests testIntensity]": "a1cf4153c34661d789ef00e0f2886e24",
    "-[DryWetMixerTests testBalance0]": "f4cc261bdf98ae17320f9561941c8664",
    "-[DryWetMixerTests testBalance1]": "97fcf6571400101defdfbb1c5cb39ab6",
    "-[DryWetMixerTests testDefault]": "da695836ce37e13aec5bda3b015f16b7",
    "-[DynamicRangeCompressorTests testAttackDuration]": "61f5b1d44ffe85a5fb99e35097f3c16d",
    "-[DynamicRangeCompressorTests testDefault]": "33ac3730e0c99c68bd9df591bb7c6fc7",
    "-[DynamicRangeCompressorTests testParameters]": "cc9af37b165e789e38c8ac2bf0e95efc",
    "-[DynamicRangeCompressorTests testRatio]": "b54b39c39cdee9d763a70d8d320790b2",
    "-[DynamicRangeCompressorTests testReleaseDuration]": "69cfe49af5f722eeaf9a6a451a96f1af",
    "-[DynamicRangeCompressorTests testThreshold]": "93f389a2cba5bf504ecd10a72e4ca2f6",
    "-[DynamicsProcessorTests testDefault]": "70fa0fb4d94ccb4a36fdd55be270d0e8",
    "-[DynaRangeCompressorTests testAttackTime]": "bf83e4a23c448338f5769dbd9f978474",
    "-[DynaRangeCompressorTests testDefault]": "bf83e4a23c448338f5769dbd9f978474",
    "-[DynaRangeCompressorTests testParameters]": "bf83e4a23c448338f5769dbd9f978474",
    "-[DynaRangeCompressorTests testRage]": "0b054b9ba845bfa82d4e2d2e5520d412",
    "-[DynaRangeCompressorTests testRatio]": "bf83e4a23c448338f5769dbd9f978474",
    "-[DynaRangeCompressorTests testReleaseTime]": "bf83e4a23c448338f5769dbd9f978474",
    "-[DynaRangeCompressorTests testThreshold]": "589f283639438df1abf674c2c0da86ca",
    "-[EqualizerFilterTests testBandwidth]": "c684947449ae4a781fcfa7e401905a6f",
    "-[EqualizerFilterTests testCenterFrequency]": "02dd8c4d5a7bff2fd39c810a2b1180c6",
    "-[EqualizerFilterTests testDefault]": "7a23164d0c0193b6465c4759dcd5bb0f",
    "-[EqualizerFilterTests testGain]": "20db1608fb4f0f1b41602cfe421127b7",
    "-[EqualizerFilterTests testParameters]": "04d2992a5821a9e10f6060af9ad64ad0",
    "-[ExpanderTests testDefault]": "df47ebd58262370633c79f9813780d23",
    "-[FFTTapTests testBasic]": "31521ba97588f48cb20505205b0cd8f3",
    "-[FMOscillatorOperationTests testDefault]": "e82a86ae4e7d47f24eeba9700e4745d4",
    "-[FMOscillatorOperationTests testFMOscillatorOperation]": "691ee890bdeee00f0b5e79d471fd82ee",
    "-[FMOscillatorTests testDefault]": "2ab6d83efd88014de7c8af0cde83f784",
    "-[FMOscillatorTests testParametersSetAfterInit]": "ab0df0b1dd221c152cc56510d39486e4",
    "-[FMOscillatorTests testParametersSetOnInit]": "ab0df0b1dd221c152cc56510d39486e4",
    "-[FaderTests testBypass]": "f4cc261bdf98ae17320f9561941c8664",
    "-[FaderTests testDefault]": "f4cc261bdf98ae17320f9561941c8664",
    "-[FaderTests testFlipStereo]": "07a9109f769945ab10e5bd335fdd2422",
    "-[FaderTests testFlipStereoThrice]": "07a9109f769945ab10e5bd335fdd2422",
    "-[FaderTests testFlipStereoTwice]": "37622527365e3a33cd525e165478b07c",
    "-[FaderTests testGain]": "112b2f8a2cbc9e2fa50244fdf08f4fe3",
    "-[FaderTests testMany]": "f4cc261bdf98ae17320f9561941c8664",
    "-[FaderTests testMixToMono]": "621c28248ec0671717e94c82f485b70f",
    "-[FaderTests testParameters]": "33ac3730e0c99c68bd9df591bb7c6fc7",
    "-[FaderTests testParameters2]": "112b2f8a2cbc9e2fa50244fdf08f4fe3",
    "-[FlangerTests testDefault]": "4f17495706d3b8f7d36c789187e29b70",
    "-[FlangerTests testDepth]": "fec462ca0447ca54605f4d119427a5cc",
    "-[FlangerTests testDryWetMix]": "400f9f83bb8872d53cfd97236167629c",
    "-[FlangerTests testFeedback]": "7db6b6c622daa9f8cf371ccb454d020a",
    "-[FlangerTests testFrequency]": "82508f84b8275ff8b03204f6d511dae0",
    "-[FlangerTests testParameters]": "1c859a4f3820a3c4456bacaa6d2a65d5",
    "-[FlatFrequencyResponseReverbTests testDefault]": "b96287972aec48657102427d99614a80",
    "-[FlatFrequencyResponseReverbTests testLoopDuration]": "f8ebc03bc8b208e8325da6fda364a40f",
    "-[FlatFrequencyResponseReverbTests testReverbDuration]": "67b33bd0d0bf5b5761f5e3ea54a15b25",
    "-[FluteTests testFlute]": "264beca825da812550d7b7b06fbaf3ee",
    "-[FluteTests testVelocity]": "f8596d2c7dedccd52c0b60adc4d84821",
    "-[FormantFilterTests testAttack]": "603433b77057f5f8712fefaef047bf26",
    "-[FormantFilterTests testCenterFrequency]": "27eae4579d9cc5413840f0ffd312c78e",
    "-[FormantFilterTests testDecay]": "24e70d91132540d3d9b2935d3521811d",
    "-[FormantFilterTests testDefault]": "e1357a42f7cb8e4ff646e877acca3ba6",
    "-[HighPassButterworthFilterOperationTests testDefault]": "5a0e078f1fe8036e808ee73d851ca170",
    "-[HighPassButterworthFilterTests testCutoffFrequency]": "20d808447412fdc505e3dfe636e528af",
    "-[HighPassButterworthFilterTests testDefault]": "a68fb26d0930ed57a8a3f1472008f58e",
    "-[HighPassFilterOperationTests testDefault]": "9a96736bfd8f7e2f3ec0800115d7a258",
    "-[HighPassFilterOperationTests testHalfPowerPoint]": "e2d18c533d3f4937a5b0bd358079b4a7",
    "-[HighPassFilterTests testCutoffFrequency]": "dba8d067e68ebb18faf4f833373cb93d",
    "-[HighPassFilterTests testDefault]": "66b4df75af5ccf0d206819341a2d875a",
    "-[HighPassFilterTests testParameters]": "36741bfd5d093f3d2bd9ca0acfff03b8",
    "-[HighPassFilterTests testResonance]": "c2521ac478b399bc2dadf888a7e6a1f7",
    "-[HighShelfFilterTests testDefault]": "f4cc261bdf98ae17320f9561941c8664",
    "-[HighShelfFilterTests testGain]": "7ad69bf803f231c834def47bf29b95c8",
    "-[HighShelfFilterTests testParameters]": "7ad69bf803f231c834def47bf29b95c8",
    "-[HighShelfParametricEqualizerFilterTests testCenterFrequency]": "23e528f0b56e06178bca66611a07ecbd",
    "-[HighShelfParametricEqualizerFilterTests testDefault]": "978ef1e8665ecb723453b055e3ef9b79",
    "-[HighShelfParametricEqualizerFilterTests testGain]": "fe1407e5df8f740d0871eedbbb6d6a5e",
    "-[HighShelfParametricEqualizerFilterTests testParameters]": "057e788e8b0ce372c666a1b9bab1f113",
    "-[HighShelfParametricEqualizerFilterTests testQ]": "200b4f988edfefb7b2b0f0d8d06dccb0",
    "-[KorgLowPassFilterOperationTests testDefault]": "0b457dcabd0e31347fd3b3f86b0878e4",
    "-[KorgLowPassFilterOperationTests testParameters]": "66c51d0f77be384aa2cf0bcc403f15ae",
    "-[KorgLowPassFilterTests testCutoffFrequency]": "35a3e4c6214be98e8b3315686b0a518b",
    "-[KorgLowPassFilterTests testDefault]": "2bd39ed0ef73a9e45d1f918ac609e224",
    "-[KorgLowPassFilterTests testParameters]": "5a4d635931d298f5452ff397b1bd6a5c",
    "-[KorgLowPassFilterTests testResonance]": "c1a1e4cd3ffbaa208bda57360c50fd10",
    "-[KorgLowPassFilterTests testSaturation]": "b2119a3c9e4664e121a0d9b4e853dc25",
    "-[LowPassButterworthFilterOperationTests testDefault]": "4030ec731d5fe48b70b01a58808a05d1",
    "-[LowPassButterworthFilterTests testCutoffFrequency]": "6f170f3d0fc4a4af364d3c92d24b3e4a",
    "-[LowPassButterworthFilterTests testDefault]": "675717ba46eaa9b9765346fbd40a96b3",
    "-[LowPassFilterOperationTests testDefault]": "70e0c5bc8a067fe4ecd49ce0c2ace742",
    "-[LowPassFilterTests testCutoffFrequency]": "17fb6b6d8947a90c7eab1bdb621de7ee",
    "-[LowPassFilterTests testDefault]": "9b155606de91f1eaeac7a2da84c8d38b",
    "-[LowPassFilterTests testParameters]": "8fca4df57d6b15673978baa02ce9481d",
    "-[LowPassFilterTests testResonance]": "2b7ea29c1057669ccb5d7d5693542713",
    "-[LowShelfFilterTests testCutoffFrequency]": "f36df45579f098037fdddc70f0e134c3",
    "-[LowShelfFilterTests testDefault]": "f4cc261bdf98ae17320f9561941c8664",
    "-[LowShelfFilterTests testGain]": "bfa4e3792af93d6b2590bc9e4427923d",
    "-[LowShelfParametricEqualizerFilterTests testCornerFrequency]": "808a05bf546aaac339c6cc9b1fd10048",
    "-[LowShelfParametricEqualizerFilterTests testDefault]": "0fb8a302c8537666afb94fd45092fba2",
    "-[LowShelfParametricEqualizerFilterTests testGain]": "35adf0bd9267475e0badda3a73cdcb48",
    "-[LowShelfParametricEqualizerFilterTests testParameters]": "9adf94b42512d16651da25e6405cb201",
    "-[LowShelfParametricEqualizerFilterTests testQ]": "ef3c06536583bee2c4ab77cec1ff8ba2",
    "-[MandolinStringTests testAmplitude]": "6eb67e5c2defc9e1e51c1df6f9310d60",
    "-[MandolinStringTests testMandolin]": "f219d8ba04a3cc19c4235c651ecc9367",
    "-[MetalBarTests testDefault]": "87a83c455de5670938aa053a0a709070",
    "-[ModalResonanceFilterOperationTests testDefault]": "f5e64258e81665a421c74df41cb161c1",
    "-[ModalResonanceFilterTests testDefault]": "7e8ba41198b75c9319458a5b41be7f2b",
    "-[ModalResonanceFilterTests testFrequency]": "f8aec6dedeb54432d60730917d1f962d",
    "-[ModalResonanceFilterTests testParameters]": "8f3befce039957f408bcf460c134ec9d",
    "-[ModalResonanceFilterTests testQualityFactor]": "d167c25dc868c53e425a775b4bc14289",
    "-[MoogLadderFilterTests testDefault]": "83cf43bb17287d5d2b30c603886b502b",
    "-[MoogLadderTests testCutoffFrequency]": "761c6466be425691c4ee317b7b25a0f2",
    "-[MoogLadderTests testDefault]": "bbadbebdf87d1cb78315b0a84edbb2cc",
    "-[MoogLadderTests testParameters]": "73a86cfb0e8fc7cd3e2c9badd834a1ec",
    "-[MoogLadderTests testResonance]": "40d075cbc08afdc1a58dbe2661898013",
    "-[MorphingOscillatorOperationTests testDefault]": "f4cc261bdf98ae17320f9561941c8664",
    "-[MorphingOscillatorTests testDefault]": "22f4e39ca1dae5dc2866513027236ef6",
    "-[MorphingOscillatorTests testParametersSetAfterInit]": "27d346246fed34eea572e30060f30950",
    "-[MorphingOscillatorTests testParametersSetOnInit]": "27d346246fed34eea572e30060f30950",
    "-[NodeTests testDisconnect]": "c7e1a8f2293beba52bbbb1967f2586ab",
    "-[NodeTests testDynamicConnection]": "12feb67de0e15c5f940a1950ae9674b9",
    "-[NodeTests testDynamicConnection2]": "eb9af2b94efa3b380ce9dbd978aaf577",
    "-[NodeTests testDynamicConnection3]": "9ddc5665a34d066a39b518ea3d39f2fa",
    "-[NodeTests testDynamicOutput]": "54ee4e17fa5e5d06d0bb08eb920116c3",
    "-[NodeTests testNodeBasic]": "fe588c950655234071ead700d7eaa8e3",
    "-[NodeTests testNodeConnection]": "a633cfbb20066a3832cefc0f232596f9",
    "-[NodeTests testNodeDetach]": "c7e1a8f2293beba52bbbb1967f2586ab",
    "-[NodeTests testTwoEngines]": "42b1eafdf0fc632f46230ad0497a29bf",
    "-[OperationGeneratorParametersTests testSetParameters]": "0b20180a92ea138d82977d4d38cf9524",
    "-[OperationGeneratorParametersTests testSetParameters2]": "e67a55d97b098c5b5da81a8f8be1e1ff",
    "-[OperationGeneratorParametersTests testSetParameters3]": "bd8d9e95bb74f8547487327c950f3e16",
    "-[OscillatorTests testAmpitude]": "86497903abc5f53ef15fecf5660709bb",
    "-[OscillatorTests testDefault]": "f4cc261bdf98ae17320f9561941c8664",
    "-[OscillatorTests testDetuningMultiplier]": "b9caf0d0e39aa5bf6073f861ff7cdd23",
    "-[OscillatorTests testDetuningOffset]": "ee8fc07672ed022a4c86146b18a38aca",
    "-[OscillatorTests testFrequency]": "33fc3ddee3e17226ddfc976f080b7e00",
    "-[OscillatorTests testNewAutomationAmplitude]": "de84a09903129c3c22cc035cfd53ff05",
    "-[OscillatorTests testNewAutomationDelayed]": "1e27ce4bd7bc90a6d336f575d1667414",
    "-[OscillatorTests testNewAutomationFrequency]": "5c8c218d2c21e8c436493bb09a80a47a",
    "-[OscillatorTests testNewAutomationMultiple]": "c1840e8045b8d976ca0aaddb984da4c5",
    "-[OscillatorTests testParameters]": "7ae6c2133daa0b06f24c29d979424e14",
    "-[OscillatorTests testParametersSetAfterInit]": "7ae6c2133daa0b06f24c29d979424e14",
    "-[OscillatorTests testRamping]": "1d31ae4d8c147c87e438a6d83ced6dae",
    "-[PWMOscillatorTests testAmplitude]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PWMOscillatorTests testDefault]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PWMOscillatorTests testDetuningMultiplier]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PWMOscillatorTests testDetuningOffset]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PWMOscillatorTests testFrequency]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PWMOscillatorTests testParameters]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PWMOscillatorTests testParametersSetAfterInit]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PWMOscillatorTests testPulseWidth]": "9df204fbc98bb8965081cb30a89715fc",
    "-[PannerTests testBypass]": "f4cc261bdf98ae17320f9561941c8664",
    "-[PannerTests testDefault]": "b82c29bc51a7fe86fc51e58536d46646",
    "-[PannerTests testPanLeft]": "dbaf4ac5b4f3b6d2dc7d391742e7e434",
    "-[PannerTests testPanRight]": "37622527365e3a33cd525e165478b07c",
    "-[ParameterAutomationTests testDelayedAutomation]": "6e6f7b8d6e5d813e0e427b1b39b5ff16",
    "-[PeakLimiterTests testAttackTime]": "894e306bfac264fffec4c8b02c8cafbb",
    "-[PeakLimiterTests testDecayTime]": "07087decea5200c88617bd8a91ad6642",
    "-[PeakLimiterTests testDefault]": "07087decea5200c88617bd8a91ad6642",
    "-[PeakLimiterTests testParameters]": "61e7789f36193789c0fed56a80f743da",
    "-[PeakLimiterTests testPreGain]": "8ae54b65b8ba08fe8571163bb4ec778f",
    "-[PeakingParametricEqualizerFilterTests testCenterFrequency]": "9aac25b9d75227d947b5b5900e6a487f",
    "-[PeakingParametricEqualizerFilterTests testDefault]": "6581fb5950415cfb44a63fe04bd3d1f5",
    "-[PeakingParametricEqualizerFilterTests testGain]": "3a50483b0c72ba49aed509c6560d9c47",
    "-[PeakingParametricEqualizerFilterTests testParameters]": "3173a7a6263a5f3011ab97239a10ac58",
    "-[PeakingParametricEqualizerFilterTests testQ]": "475ba663eabcf2ef0e5e8fdbcf5020eb",
    "-[PhaseDistortionOscillatorTests testAmplitude]": "8744e5a152b5838322c657d06b41f39c",
    "-[PhaseDistortionOscillatorTests testDefault]": "05e9a49726d7202b48c69bfbd921bdab",
    "-[PhaseDistortionOscillatorTests testDetuningMultiplier]": "ce2e581b0388d4f758e08bf9ce591b40",
    "-[PhaseDistortionOscillatorTests testDetuningOffset]": "787a546c70f61d15f7b7e986e53b15c3",
    "-[PhaseDistortionOscillatorTests testFrequency]": "57c3ddd6de2c581edc2b1729d9234dad",
    "-[PhaseDistortionOscillatorTests testParameters]": "397791dfd102dfbd63e583c1432a24b2",
    "-[PhaseDistortionOscillatorTests testParametersSetAfterInit]": "260881270e092c6bfe66835bc3b4ff4d",
    "-[PhaseDistortionOscillatorTests testPhaseDistortion]": "1e50f90f1144c15ae5cab6af16cd7191",
    "-[PhaseLockedVocoderTests testDefault]": "b9506750c7ceeccbf853ba55be4f2892",
    "-[PhasorTests testDefault]": "3828cd394361df9739360d1b910516cf",
    "-[PinkNoiseOperationTests testAmplitude]": "de15af9138e2d5c993fd207b028e877c",
    "-[PinkNoiseOperationTests testDefault]": "79e0b102124e0b7521fb277d3f8d27f9",
    "-[PinkNoiseOperationTests testParameterSweep]": "ac20cbf3b0342430bab4350de2619feb",
    "-[PinkNoiseTests testAmplitude]": "6704180ca2db755fd17742bb5d2da047",
    "-[PinkNoiseTests testDefault]": "79e0b102124e0b7521fb277d3f8d27f9",
    "-[PitchShifterTests testCrossfade]": "f39eb3df3908ddf21db31f2ba4b39f40",
    "-[PitchShifterTests testDefault]": "3a82a866e2cde01c734b409f93f55d75",
    "-[PitchShifterTests testParameters]": "9cedb4e5f45466fe9623f53431e8059d",
    "-[PitchShifterTests testShift]": "a05786085394af65e6f9b3815db443ff",
    "-[PitchShifterTests testWindowSize]": "a62fda45b9d393270e953f40f1eb8183",
    "-[PitchTapTests testBasic]": "10e7831ee61299f51dd0ef03fa50bb25",
    "-[PluckedStringOperationTests testDefault]": "bdef4981144f808c1a375a277f4da66f",
    "-[PluckedStringTests testDefault]": "9e2d3aa3b50fa53a43b798901f0cb0e5",
    "-[ResonantFilterOperationTests testDefault]": "8d0749af7e7172cff2123c7bd8499f61",
    "-[ResonantFilterOperationTests testParameters1]": "5a4e6ac549b9c3710916d6eba86d42b0",
    "-[ResonantFilterOperationTests testParameters2]": "224bcf0c1da8d00d959f50d849b2dc4d",
    "-[ResonantFilterOperationTests testParameters3]": "9df204fbc98bb8965081cb30a89715fc",
    "-[ResonantFilterTests testBandwidth]": "2c0235b86bf312525068f1f94371c7de",
    "-[ResonantFilterTests testDefault]": "d37f9a549bbb24c537067e784f16417f",
    "-[ResonantFilterTests testFrequency]": "c9b3e33baba7e565e266d5b0445ea38c",
    "-[ResonantFilterTests testParameters]": "634d92e38ccbbaf7113bc862b83253b0",
    "-[ReverbTests testBypass]": "f4cc261bdf98ae17320f9561941c8664",
    "-[ReverbTests testCathedral]": "c54880d8a97c6bdefa38b1c1cea3c9cd",
    "-[ReverbTests testDefault]": "ca817ccf320266f573af82b32fec5521",
    "-[ReverbTests testSmallRoom]": "125ff55041fa3c7bed7b6b820587e041",
    "-[ReverberateWithChowningTests testDefault]": "5ad11ac78f1ed3f1d54aeaad4f88ea0c",
    "-[ReverberateWithCombFilterTests testDefault]": "aff58757d7951a2d9aada9cfc307eb24",
    "-[ReverberateWithCostelloTests testDefault]": "f1cdbaa331e4ae5fbae76539e0f34c80",
    "-[ReverberateWithFlatFrequencyResponseTests testDefault]": "f917e8d3e66b0373b7c005bf7044e9d4",
    "-[RhinGuitarProcessorTests testDefault]": "4af943f449e054ae311fda40ceeee916",
    "-[RhinGuitarProcessorTests testDistortion]": "4155f9a352c587b20673a32fe1362664",
    "-[RhinGuitarProcessorTests testHighGain]": "4155f9a352c587b20673a32fe1362664",
    "-[RhinGuitarProcessorTests testLowGain]": "af43c93eb9a942ed4d2d865b8e3d922d",
    "-[RhinGuitarProcessorTests testMidGain]": "f724828c95d6193f6019c8eef4f99d12",
    "-[RhinGuitarProcessorTests testPostGain]": "dae132fc942cf6b411f398fc0ce1faf9",
    "-[RhinGuitarProcessorTests testPreGain]": "dcda6d71b3cacdd78a3cf51fd3edeff7",
    "-[RhodesPianoKeyTests testAmplitude]": "d349565cae5618b5d6326f20623d8ea5",
    "-[RhodesPianoKeyTests testRhodesPiano]": "7341d6c60e58433aa7992ee080c297c4",
    "-[RingModulatorTests testDefault]": "6a3caaab80db5285c43975d80f40d90b",
    "-[RolandTB303FilterTests testCutoffFrequency]": "1e7b4d8e22c304d3c8941d31b837c4d0",
    "-[RolandTB303FilterTests testDefault]": "ef2831bac388194646e4893cac3b3ba9",
    "-[RolandTB303FilterTests testDistortion]": "f7a8fc8a8ecf14353980635e9acdb921",
    "-[RolandTB303FilterTests testParameters]": "df839ee521b6cda4c986cb189aec41f7",
    "-[RolandTB303FilterTests testResonance]": "edaf975353b3a0d316b7525c1fded23c",
    "-[RolandTB303FilterTests testResonanceAsymmetry]": "64f95d8bee65f71c2b3fb46e150d9877",
    "-[SawtoothTests testDefault]": "379388bf41f4ece5cf274bf53f270c46",
    "-[SawtoothWaveTests testDefault]": "2a5f4c75768a09c068f2c27377142aa7",
    "-[SequencerTrackTests testLoop]": "dfab5f544f9d714ed0fb95d4e077699b",
    "-[SequencerTrackTests testOneShot]": "8d547bfc6b1c47e82deb53ed6646c389",
    "-[SequencerTrackTests testTempo]": "65f227785671ce944a8cc5ed2b66a4c1",
    "-[ShakerTests testShaker]": "709fbb05ec97f539079dd77e8c96bc4d",
    "-[ShakerTests testShakerAmplitude]": "57b501c34d5b4114ff8b1464a6842103",
    "-[ShakerTests testShakerType]": "998478fb4c871a653b296033d2318f4e",
    "-[SineWaveTests testDefault]": "91ec96732b1d1d40a585b6415eef8b51",
    "-[SmoothDelayTests testDefault]": "b9cd6ad81aeb540819724102a2efc2fe",
    "-[SmoothDelayTests testFeedback]": "5ff850c80c7e0b968bd7c5b794849a34",
    "-[SmoothDelayTests testParameters]": "f416637680390859ba810ab258c94434",
    "-[SmoothDelayTests testParameterSweep]": "1ea7ab2a8d2e8f07d15b16b8d9e2c3e7",
    "-[SmoothDelayTests testTime]": "928b88c948556e0e2196435306303833",
    "-[SquareTests testDefault]": "9e7c2af4b9e70a73ca7d8453d59d6953",
    "-[SquareWaveTests testDefault]": "9d4465fdcff811f568807c43e41859e1",
    "-[StereoFieldLimiterTests testDefault]": "112b2f8a2cbc9e2fa50244fdf08f4fe3",
    "-[StereoFieldLimiterTests testHalf]": "62497f78a5e315b6d79228aaa959a2ab",
    "-[StereoFieldLimiterTests testNone]": "dbaf4ac5b4f3b6d2dc7d391742e7e434",
    "-[StringResonatorOperationTests testDefault]": "7332e03a06fbfe49582d7cffa4250765",
    "-[StringResonatorTests testBandwidth]": "e1eb4a83dbcecf235e6e4ae06a670c0f",
    "-[StringResonatorTests testDefault]": "230354874afe6296f53107399b13e849",
    "-[StringResonatorTests testFrequency]": "ef48c90a95b4f313d149e21029d6a929",
    "-[StringResonatorTests testParameters]": "4f0c4dbda24a8c591207fc5b68ac1b3d",
    "-[TableTests testReverseSawtooth]": "01c214265dd49e5ab627e5b4f4d00fe0",
    "-[TableTests testSawtooth]": "7a3dc1fdc7f7c4d113ba9d1119143e67",
    "-[TableTests testSine]": "f4cc261bdf98ae17320f9561941c8664",
    "-[TableTests testTriangle]": "54fb40c15242198d45b31b6a79187d07",
	"-[TableTests testHarmonicWithPartialAmplitudes]": "75d01266f4d35ea0074a1bf469d63f27",
    "-[TanhDistortionTests testDefault]": "b3a07866018f81cc2e3572769e76ae17",
    "-[TanhDistortionTests testNegativeShapeParameter]": "a91935bdd8a161196c06d9294a58213d",
    "-[TanhDistortionTests testParameters]": "f5975f4dcf5ec3b1801b62ad7d16ed5e",
    "-[TanhDistortionTests testPositiveShapeParameter]": "0b912d30b6dc459cab4c5ca0c32665bf",
    "-[TanhDistortionTests testPostgain]": "d4c9b247a6e709a5297fd65a49e804b7",
    "-[TanhDistortionTests testPregain]": "028c59ba5375ccb47aab560188ee36ca",
    "-[ThreePoleLowPassFilterOperationTests testParameterSweep]": "621779ffd353388fc0c07964d9cc7ade",
    "-[ThreePoleLowpassFilterTests testCutoffFrequency]": "0ed7e39384a86f4fd60557c6f7356eba",
    "-[ThreePoleLowpassFilterTests testDefault]": "db4bf81e36e5acf48858f47fa7bc3cdd",
    "-[ThreePoleLowpassFilterTests testDistortion]": "cbeaca830d74bc7ca1ea0eba72afaf29",
    "-[ThreePoleLowpassFilterTests testParameters]": "7f68550707a4652fd6cc23a58c747721",
    "-[ThreePoleLowpassFilterTests testResonance]": "7f3cbede7df3f4921852945c7720aa7c",
    "-[ToneComplementFilterTests testDefault]": "79255527ed356289594d63da4c1190ce",
    "-[ToneComplementFilterTests testHalfPowerPoint]": "57b54542b5785e6d4016d1a50fc0cee0",
    "-[ToneFilterTests testDefault]": "86a3a4f039683a86a53939457e23de12",
    "-[ToneFilterTests testHalfPowerPoint]": "9819b2fae4cb5caa7db1963fadb177ed",
    "-[TremoloTests testDefault]": "139959d264237e1deca9f301360e8d60",
    "-[TremoloTests testDepth]": "cb6b185b0b6a3ee8c26f39b19156d9d0",
    "-[TremoloTests testFrequency]": "ac1c0de14dceb73fea040e900696aa92",
    "-[TremoloTests testParameters]": "c1f56c08e95b39e3fae00780ed8be0b6",
    "-[TriangleTests testParameterSweep]": "65fc18963547c200e7154c987b2c73b7",
    "-[TriangleWaveTests testParameterSweep]": "e7d8cc44420bbf3474ff7fae34e6895b",
    "-[TubularBellsTests testAmplitude]": "3c14777a9e2c94336b7dc349b5ccefc3",
    "-[TubularBellsTests testTubularBells]": "dc87914ab7836f859709c3d84df1d4e5",
    "-[VariableDelayOperationTests testParameterSweep]": "b44bc825bbbb4ff4459812be481c61b7",
    "-[VariableDelayTests testDefault]": "4ae4fdbb83ddb9436f669b40c0e6ed9c",
    "-[VariableDelayTests testFeedback]": "e8ef9f9469a80c9f5145f5c956d4d16a",
    "-[VariableDelayTests testMaximum]": "cf8a39cfb8a601cdd19d7ca66e829fc7",
    "-[VariableDelayTests testMaximumSurpassed]": "cf8a39cfb8a601cdd19d7ca66e829fc7",
    "-[VariableDelayTests testParametersSetAfterInit]": "c05b2046f084b7e5878850935445a65c",
    "-[VariableDelayTests testParametersSetOnInit]": "c05b2046f084b7e5878850935445a65c",
    "-[VariableDelayTests testTime]": "7aa143f6e6f2108ca5469471cc2024a0",
    "-[VocalTractOperationTests testDefault]": "5b3296351674e4e4d3a5cca9a1bf355f",
    "-[VocalTractOperationTests testParameterSweep]": "e846c8d1a61587825d0c699d162e3cd0",
    "-[VocalTractTests testDefault]": "9df204fbc98bb8965081cb30a89715fc",
    "-[VocalTractTests testFrequency]": "9df204fbc98bb8965081cb30a89715fc",
    "-[VocalTractTests testNasality]": "9df204fbc98bb8965081cb30a89715fc",
    "-[VocalTractTests testParametersSetAfterInit]": "9df204fbc98bb8965081cb30a89715fc",
    "-[VocalTractTests testParametersSetOnInit]": "9df204fbc98bb8965081cb30a89715fc",
    "-[VocalTractTests testTenseness]": "9df204fbc98bb8965081cb30a89715fc",
    "-[VocalTractTests testTongueDiameter]": "9df204fbc98bb8965081cb30a89715fc",
    "-[VocalTractTests testTonguePosition]": "9df204fbc98bb8965081cb30a89715fc",
    "-[WhiteNoiseOperationTests testAmplitude]": "1fdb585751ad480ad39f16cae4589cf7",
    "-[WhiteNoiseOperationTests testDefault]": "bbe4898f76a6bd42a573f618ba831372",
    "-[WhiteNoiseOperationTests testParameterSweep]": "f8bf5004f0d3c528b491a65c7db78865",
    "-[WhiteNoiseTests testAmplitude]": "1bdd36a87d9d1a9df891eac4073b9eb3",
    "-[WhiteNoiseTests testDefault]": "bbe4898f76a6bd42a573f618ba831372",
    "-[ZitaReverbTests testDefault]": "fc22d06477b89a21e1fd9e936a6d2de8",
    "-[ZitaReverbTests testParametersSetAfterInit]": "da4a8779395fda584c1710f5958dacbc",
    "-[ZitaReverbTests testParametersSetOnInit]": "da4a8779395fda584c1710f5958dacbc"
]



