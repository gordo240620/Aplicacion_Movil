; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [437 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [874 x i64] [
	i64 17802880886401652, ; 0: tr/Microsoft.VisualStudio.Threading.resources.dll => 0x3f3fa037366a74 => 390
	i64 24362543149721218, ; 1: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 252
	i64 33071413975074826, ; 2: Microsoft.VisualStudio.RemoteControl => 0x757e469a34480a => 196
	i64 98382396393917666, ; 3: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 185
	i64 120698629574877762, ; 4: Mono.Android => 0x1accec39cafe242 => 171
	i64 131669012237370309, ; 5: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 190
	i64 177794975121655083, ; 6: ja/Microsoft.VisualStudio.Utilities.resources.dll => 0x277a7967ef9c52b => 399
	i64 196720943101637631, ; 7: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 58
	i64 210390243030528795, ; 8: ru/Microsoft.ServiceHub.Resources.dll => 0x2eb74cfb40af31b => 363
	i64 210515253464952879, ; 9: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 239
	i64 229794953483747371, ; 10: System.ValueTuple.dll => 0x330654aed93802b => 151
	i64 232391251801502327, ; 11: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 280
	i64 279670469376841020, ; 12: zh-Hant\Microsoft.VisualStudio.Composition.resources => 0x3e196cf655f953c => 379
	i64 295915112840604065, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 283
	i64 311281864840114177, ; 14: ja\Microsoft.VisualStudio.Utilities.resources => 0x451e534f2d0f001 => 399
	i64 316157742385208084, ; 15: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 246
	i64 350667413455104241, ; 16: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 132
	i64 390014653889418737, ; 17: ja/Microsoft.VisualStudio.Validation.resources.dll => 0x5699c42e64695f1 => 412
	i64 396868157601372792, ; 18: Microsoft.VisualStudio.DesignTools.TapContract => 0x581f57c947e5a78 => 435
	i64 408699061380389292, ; 19: Microsoft.VisualStudio.Utilities => 0x5abfda1859d19ac => 200
	i64 422779754995088667, ; 20: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 56
	i64 435118502366263740, ; 21: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 282
	i64 449765079935339303, ; 22: StreamJsonRpc.dll => 0x63de2f50debcb27 => 206
	i64 486738060028624626, ; 23: es/Microsoft.ServiceHub.Framework.resources.dll => 0x6c13dafceab3ef2 => 343
	i64 502670939551102150, ; 24: System.Management.dll => 0x6f9d88e66daf4c6 => 219
	i64 545109961164950392, ; 25: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 314
	i64 560278790331054453, ; 26: System.Reflection.Primitives => 0x7c6829760de3975 => 95
	i64 602010118039455382, ; 27: zh-Hans\Microsoft.VisualStudio.Utilities.resources => 0x85ac50344eec696 => 405
	i64 634308326490598313, ; 28: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 265
	i64 649145001856603771, ; 29: System.Security.SecureString => 0x90239f09b62167b => 129
	i64 675799254782331204, ; 30: ko/Microsoft.VisualStudio.Threading.resources.dll => 0x960ebd778c64944 => 386
	i64 676272570642346617, ; 31: fr/Microsoft.ServiceHub.Resources.dll => 0x9629a51e87a3279 => 357
	i64 702024105029695270, ; 32: System.Drawing.Common => 0x9be17343c0e7726 => 217
	i64 741126920112013441, ; 33: TrashTec_MVVM_5B => 0xa490301d6c18081 => 0
	i64 750875890346172408, ; 34: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 145
	i64 775433664847856186, ; 35: it\Microsoft.VisualStudio.Composition.resources => 0xac2e4cf4c22c23a => 371
	i64 790155713624325618, ; 36: ru\Microsoft.ServiceHub.Framework.resources => 0xaf7326f63d2bdf2 => 350
	i64 798450721097591769, ; 37: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 240
	i64 799765834175365804, ; 38: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 807768407251849530, ; 39: zh-Hans\Microsoft.VisualStudio.Validation.resources => 0xb35c5162f07913a => 418
	i64 849051935479314978, ; 40: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 317
	i64 872800313462103108, ; 41: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 251
	i64 895210737996778430, ; 42: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 266
	i64 940822596282819491, ; 43: System.Transactions => 0xd0e792aa81923a3 => 150
	i64 960778385402502048, ; 44: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 104
	i64 1010599046655515943, ; 45: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 95
	i64 1120440138749646132, ; 46: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 295
	i64 1121665720830085036, ; 47: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 325
	i64 1166741338400454851, ; 48: zh-Hant/Microsoft.VisualStudio.Validation.resources.dll => 0x10311910cc1f78c3 => 419
	i64 1182549588684364891, ; 49: zh-Hans\Microsoft.VisualStudio.Threading.resources => 0x10694295e2d0dc5b => 391
	i64 1268860745194512059, ; 50: System.Drawing.dll => 0x119be62002c19ebb => 36
	i64 1301626418029409250, ; 51: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 28
	i64 1315114680217950157, ; 52: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 235
	i64 1369545283391376210, ; 53: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 273
	i64 1404195534211153682, ; 54: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 50
	i64 1425944114962822056, ; 55: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 115
	i64 1476839205573959279, ; 56: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 70
	i64 1486715745332614827, ; 57: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 187
	i64 1492954217099365037, ; 58: System.Net.HttpListener => 0x14b809f350210aad => 65
	i64 1513467482682125403, ; 59: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 170
	i64 1534910729791260118, ; 60: zh-Hans/Microsoft.ServiceHub.Framework.resources.dll => 0x154d192d2b24c5d6 => 352
	i64 1537168428375924959, ; 61: System.Threading.Thread.dll => 0x15551e8a954ae0df => 145
	i64 1556147632182429976, ; 62: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 323
	i64 1576750169145655260, ; 63: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 294
	i64 1624659445732251991, ; 64: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 234
	i64 1628611045998245443, ; 65: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 269
	i64 1636321030536304333, ; 66: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 259
	i64 1651782184287836205, ; 67: System.Globalization.Calendars => 0x16ec4f2524cb982d => 40
	i64 1659332977923810219, ; 68: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 89
	i64 1660779948839220459, ; 69: it/Microsoft.VisualStudio.Threading.resources.dll => 0x170c469074a734eb => 384
	i64 1682513316613008342, ; 70: System.Net.dll => 0x17597cf276952bd6 => 81
	i64 1731380447121279447, ; 71: Newtonsoft.Json => 0x18071957e9b889d7 => 205
	i64 1735388228521408345, ; 72: System.Net.Mail.dll => 0x181556663c69b759 => 66
	i64 1743969030606105336, ; 73: System.Memory.dll => 0x1833d297e88f2af8 => 62
	i64 1767386781656293639, ; 74: System.Private.Uri.dll => 0x188704e9f5582107 => 86
	i64 1795316252682057001, ; 75: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 233
	i64 1825687700144851180, ; 76: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 106
	i64 1835311033149317475, ; 77: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 313
	i64 1836611346387731153, ; 78: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 280
	i64 1854145951182283680, ; 79: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 102
	i64 1875417405349196092, ; 80: System.Drawing.Primitives => 0x1a06d2319b6c713c => 35
	i64 1875917498431009007, ; 81: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 230
	i64 1881198190668717030, ; 82: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 335
	i64 1897575647115118287, ; 83: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 282
	i64 1911806496241183156, ; 84: tr\Microsoft.VisualStudio.Utilities.resources => 0x1a8819e10fbd69b4 => 404
	i64 1920760634179481754, ; 85: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 188
	i64 1930726298510463061, ; 86: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 173
	i64 1959996714666907089, ; 87: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 335
	i64 1972385128188460614, ; 88: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 119
	i64 1981742497975770890, ; 89: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 267
	i64 1983698669889758782, ; 90: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 309
	i64 2019660174692588140, ; 91: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 327
	i64 2040001226662520565, ; 92: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 142
	i64 2062890601515140263, ; 93: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 141
	i64 2064708342624596306, ; 94: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 303
	i64 2080945842184875448, ; 95: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 53
	i64 2102659300918482391, ; 96: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 35
	i64 2106033277907880740, ; 97: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 141
	i64 2130792593772371839, ; 98: es/Microsoft.ServiceHub.Resources.dll => 0x1d92189319d5df7f => 356
	i64 2133195048986300728, ; 99: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 205
	i64 2141794003861218914, ; 100: cs/Microsoft.VisualStudio.Validation.resources.dll => 0x1db92e4c7e35a662 => 407
	i64 2165310824878145998, ; 101: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 227
	i64 2165725771938924357, ; 102: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 237
	i64 2200176636225660136, ; 103: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 183
	i64 2262844636196693701, ; 104: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 251
	i64 2283599909513827695, ; 105: pt-BR/Microsoft.VisualStudio.Validation.resources.dll => 0x1fb0fa04c7af956f => 415
	i64 2287834202362508563, ; 106: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 107: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2302323944321350744, ; 108: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 331
	i64 2304837677853103545, ; 109: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 279
	i64 2315304989185124968, ; 110: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 51
	i64 2329709569556905518, ; 111: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 262
	i64 2335283022205148317, ; 112: ko\Microsoft.VisualStudio.Composition.resources => 0x206897892c89dc9d => 373
	i64 2335503487726329082, ; 113: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 136
	i64 2337758774805907496, ; 114: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 101
	i64 2423932764996432979, ; 115: es/Microsoft.VisualStudio.Utilities.resources.dll => 0x21a38a01d90af453 => 396
	i64 2430359805989914396, ; 116: ko\Microsoft.VisualStudio.Utilities.resources => 0x21ba5f5df06a871c => 400
	i64 2470498323731680442, ; 117: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 244
	i64 2479423007379663237, ; 118: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 289
	i64 2497223385847772520, ; 119: System.Runtime => 0x22a7eb7046413568 => 116
	i64 2547086958574651984, ; 120: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 228
	i64 2592350477072141967, ; 121: System.Xml.dll => 0x23f9e10627330e8f => 163
	i64 2602673633151553063, ; 122: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 334
	i64 2624866290265602282, ; 123: mscorlib.dll => 0x246d65fbde2db8ea => 166
	i64 2632269733008246987, ; 124: System.Net.NameResolution => 0x2487b36034f808cb => 67
	i64 2656907746661064104, ; 125: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 179
	i64 2662981627730767622, ; 126: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 309
	i64 2704260652175460545, ; 127: System.Composition.Convention => 0x258776bc40fc08c1 => 210
	i64 2706075432581334785, ; 128: System.Net.WebSockets => 0x258de944be6c0701 => 80
	i64 2783046991838674048, ; 129: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 101
	i64 2787234703088983483, ; 130: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 284
	i64 2796533598066548032, ; 131: de\Microsoft.ServiceHub.Resources => 0x26cf487da3339d40 => 355
	i64 2815524396660695947, ; 132: System.Security.AccessControl => 0x2712c0857f68238b => 117
	i64 2844780895111324988, ; 133: System.Composition.TypedParts => 0x277ab126dceda53c => 213
	i64 2851879596360956261, ; 134: System.Configuration.ConfigurationManager => 0x2793e9620b477965 => 214
	i64 2874659109084101369, ; 135: de/Microsoft.VisualStudio.Validation.resources.dll => 0x27e4d73aa74c7af9 => 408
	i64 2895129759130297543, ; 136: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 314
	i64 2923871038697555247, ; 137: Jsr305Binding => 0x2893ad37e69ec52f => 296
	i64 2957510711280508021, ; 138: zh-Hant/Microsoft.VisualStudio.Threading.resources.dll => 0x290b305285499c75 => 392
	i64 2991907748835029057, ; 139: de/StreamJsonRpc.resources.dll => 0x2985643eea0cf041 => 421
	i64 3017136373564924869, ; 140: System.Net.WebProxy => 0x29df058bd93f63c5 => 78
	i64 3017704767998173186, ; 141: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 295
	i64 3062772059105072826, ; 142: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0x2a8126f5e2f316ba => 434
	i64 3106852385031680087, ; 143: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 114
	i64 3110390492489056344, ; 144: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 121
	i64 3135773902340015556, ; 145: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 48
	i64 3216235690883836477, ; 146: cs/Microsoft.VisualStudio.Utilities.resources.dll => 0x2ca25d520d106a3d => 393
	i64 3238539556702659506, ; 147: Microsoft.Win32.SystemEvents.dll => 0x2cf19a917c5023b2 => 203
	i64 3281594302220646930, ; 148: System.Security.Principal => 0x2d8a90a198ceba12 => 128
	i64 3289520064315143713, ; 149: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 260
	i64 3303437397778967116, ; 150: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 231
	i64 3311221304742556517, ; 151: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 82
	i64 3325875462027654285, ; 152: System.Runtime.Numerics => 0x2e27e21c8958b48d => 110
	i64 3328853167529574890, ; 153: System.Net.Sockets.dll => 0x2e327651a008c1ea => 75
	i64 3341463492655001636, ; 154: it\Microsoft.ServiceHub.Framework.resources => 0x2e5f4357bda33024 => 345
	i64 3344514922410554693, ; 155: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 306
	i64 3373397458776442943, ; 156: tr/Microsoft.ServiceHub.Resources.dll => 0x2ed0b71da093483f => 364
	i64 3378246407733840341, ; 157: pl\Microsoft.VisualStudio.Threading.resources => 0x2ee1f13588b709d5 => 387
	i64 3429672777697402584, ; 158: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 190
	i64 3437845325506641314, ; 159: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 53
	i64 3493805808809882663, ; 160: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 286
	i64 3494946837667399002, ; 161: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 177
	i64 3508450208084372758, ; 162: System.Net.Ping => 0x30b084e02d03ad16 => 69
	i64 3522470458906976663, ; 163: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 285
	i64 3531994851595924923, ; 164: System.Numerics => 0x31042a9aade235bb => 83
	i64 3532505434160716017, ; 165: pt-BR\Microsoft.ServiceHub.Framework.resources => 0x3105faf9f24958f1 => 349
	i64 3551103847008531295, ; 166: System.Private.CoreLib.dll => 0x31480e226177735f => 172
	i64 3567343442040498961, ; 167: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 329
	i64 3571415421602489686, ; 168: System.Runtime.dll => 0x319037675df7e556 => 116
	i64 3638003163729360188, ; 169: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 178
	i64 3647754201059316852, ; 170: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 156
	i64 3655542548057982301, ; 171: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 177
	i64 3659371656528649588, ; 172: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 225
	i64 3690127606734143618, ; 173: fr/Microsoft.VisualStudio.Validation.resources.dll => 0x3335f781d7404082 => 410
	i64 3716579019761409177, ; 174: netstandard.dll => 0x3393f0ed5c8c5c99 => 167
	i64 3727469159507183293, ; 175: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 278
	i64 3745789886814214634, ; 176: ko\Microsoft.ServiceHub.Framework.resources => 0x33fbb80e56cfd9ea => 347
	i64 3772598417116884899, ; 177: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 252
	i64 3774851544379141081, ; 178: it\Microsoft.ServiceHub.Resources => 0x3462f77ac68dabd9 => 358
	i64 3808596350265393157, ; 179: System.Diagnostics.PerformanceCounter.dll => 0x34dada33a66b0005 => 216
	i64 3829576749922459295, ; 180: cs/Microsoft.ServiceHub.Framework.resources.dll => 0x352563c39b391e9f => 341
	i64 3869221888984012293, ; 181: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 181
	i64 3869649043256705283, ; 182: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 32
	i64 3875180953283865480, ; 183: MessagePack.dll => 0x35c7688ba0d82b88 => 175
	i64 3890352374528606784, ; 184: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 188
	i64 3892323582453208937, ; 185: ko/Microsoft.VisualStudio.Utilities.resources.dll => 0x36044fad02ffd769 => 400
	i64 3919223565570527920, ; 186: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 122
	i64 3933965368022646939, ; 187: System.Net.Requests => 0x369840a8bfadc09b => 72
	i64 3966267475168208030, ; 188: System.Memory => 0x370b03412596249e => 62
	i64 3986466921713458903, ; 189: System.Composition.Hosting => 0x3752c68b49935ed7 => 211
	i64 4006972109285359177, ; 190: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 161
	i64 4009997192427317104, ; 191: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 113
	i64 4020380517496724220, ; 192: MessagePack.Annotations.dll => 0x37cb42c79f4b1afc => 176
	i64 4073500526318903918, ; 193: System.Private.Xml.dll => 0x3887fb25779ae26e => 88
	i64 4073631083018132676, ; 194: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 186
	i64 4120493066591692148, ; 195: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 340
	i64 4148881117810174540, ; 196: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 105
	i64 4154383907710350974, ; 197: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 198: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 146
	i64 4168469861834746866, ; 199: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 118
	i64 4187479170553454871, ; 200: System.Linq.Expressions => 0x3a1cea1e912fa117 => 58
	i64 4201423742386704971, ; 201: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 246
	i64 4205801962323029395, ; 202: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4224288942162558427, ; 203: Microsoft.VisualStudio.Composition.dll => 0x3a9fb0696235bddb => 195
	i64 4235503420553921860, ; 204: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 52
	i64 4237761919127609754, ; 205: tr\Microsoft.ServiceHub.Resources => 0x3acf8e034847619a => 364
	i64 4282138915307457788, ; 206: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 92
	i64 4321177614414309855, ; 207: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x3bf7e8254e88e9df => 434
	i64 4321865999928413850, ; 208: System.Diagnostics.EventLog.dll => 0x3bfa5a3a8c924e9a => 215
	i64 4356591372459378815, ; 209: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 337
	i64 4373617458794931033, ; 210: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 55
	i64 4388777479429739993, ; 211: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x3ce811dd63a4d5d9 => 433
	i64 4397634830160618470, ; 212: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 129
	i64 4462330757387019284, ; 213: Microsoft.ServiceHub.Resources => 0x3ded622e705a6414 => 194
	i64 4477672992252076438, ; 214: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 152
	i64 4484706122338676047, ; 215: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 41
	i64 4533124835995628778, ; 216: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 92
	i64 4537536889469555869, ; 217: es/Microsoft.VisualStudio.Composition.resources.dll => 0x3ef891c29410549d => 369
	i64 4636684751163556186, ; 218: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 290
	i64 4654490921503260514, ; 219: fr\Microsoft.VisualStudio.Validation.resources => 0x409812d5227b7f62 => 410
	i64 4672453897036726049, ; 220: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 50
	i64 4679594760078841447, ; 221: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 307
	i64 4692118866197340027, ; 222: pl/Microsoft.VisualStudio.Composition.resources.dll => 0x411dc13fb799df7b => 374
	i64 4716677666592453464, ; 223: System.Xml.XmlSerializer => 0x417501590542f358 => 162
	i64 4723252672199750351, ; 224: zh-Hant\StreamJsonRpc.resources => 0x418c5d47cee172cf => 432
	i64 4743821336939966868, ; 225: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 226: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 264
	i64 4794310189461587505, ; 227: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 228
	i64 4795410492532947900, ; 228: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 285
	i64 4809057822547766521, ; 229: System.Drawing => 0x42bd349c3145ecf9 => 36
	i64 4814660307502931973, ; 230: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 67
	i64 4853321196694829351, ; 231: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 109
	i64 4952488434027013261, ; 232: pl/Microsoft.VisualStudio.Validation.resources.dll => 0x44bac5fdc869248d => 414
	i64 4966213257581017890, ; 233: it\Microsoft.VisualStudio.Threading.resources => 0x44eb88a548f3bb22 => 384
	i64 5002337827157170690, ; 234: zh-Hant\Microsoft.ServiceHub.Resources => 0x456bdfc01233da02 => 366
	i64 5051607678629112937, ; 235: es\Microsoft.ServiceHub.Framework.resources => 0x461aea6b4d52ec69 => 343
	i64 5055365687667823624, ; 236: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 229
	i64 5072195939344590231, ; 237: cs/Microsoft.VisualStudio.Threading.resources.dll => 0x46640f554bd02597 => 380
	i64 5081566143765835342, ; 238: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 99
	i64 5099468265966638712, ; 239: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 99
	i64 5103417709280584325, ; 240: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5182934613077526976, ; 241: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 242: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 271
	i64 5244375036463807528, ; 243: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 244: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 128
	i64 5278787618751394462, ; 245: System.Net.WebClient.dll => 0x4942055efc68329e => 76
	i64 5280980186044710147, ; 246: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 263
	i64 5287793306032704698, ; 247: zh-Hans/Microsoft.ServiceHub.Resources.dll => 0x496203fef3c48cba => 365
	i64 5290786973231294105, ; 248: System.Runtime.Loader => 0x496ca6b869b72699 => 109
	i64 5313674019156125223, ; 249: de\Microsoft.ServiceHub.Framework.resources => 0x49bdf65e0c05e627 => 342
	i64 5340835533783596017, ; 250: cs/Microsoft.ServiceHub.Resources.dll => 0x4a1e759efaf47bf1 => 354
	i64 5376510917114486089, ; 251: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 289
	i64 5408338804355907810, ; 252: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 287
	i64 5423376490970181369, ; 253: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 106
	i64 5424449234786381625, ; 254: cs\Microsoft.VisualStudio.Validation.resources => 0x4b4783d6cd94ef39 => 407
	i64 5435342863934572396, ; 255: ru/Microsoft.VisualStudio.Utilities.resources.dll => 0x4b6e37897d46476c => 403
	i64 5440320908473006344, ; 256: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 257: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 258: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 242
	i64 5457765010617926378, ; 259: System.Xml.Serialization => 0x4bbde05c557002ea => 157
	i64 5471532531798518949, ; 260: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 333
	i64 5488847537322884930, ; 261: System.Windows.Extensions => 0x4c2c4dc108687f42 => 223
	i64 5499883080459888738, ; 262: Microsoft.VisualStudio.Threading => 0x4c538285a4fe2862 => 199
	i64 5507995362134886206, ; 263: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 264: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 336
	i64 5527431512186326818, ; 265: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 49
	i64 5570799893513421663, ; 266: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 43
	i64 5573260873512690141, ; 267: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 126
	i64 5574231584441077149, ; 268: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 232
	i64 5591791169662171124, ; 269: System.Linq.Parallel => 0x4d9a087135e137f4 => 59
	i64 5635158070688529302, ; 270: es/Microsoft.VisualStudio.Validation.resources.dll => 0x4e341a68b090bb96 => 409
	i64 5650097808083101034, ; 271: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 119
	i64 5676263520774316728, ; 272: Microsoft.VisualStudio.Validation => 0x4ec623991742e2b8 => 202
	i64 5681707193364847894, ; 273: pt-BR/StreamJsonRpc.resources.dll => 0x4ed97a96e24b1d16 => 428
	i64 5692067934154308417, ; 274: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 292
	i64 5724799082821825042, ; 275: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 255
	i64 5757522595884336624, ; 276: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 241
	i64 5783556987928984683, ; 277: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5815588864042668787, ; 278: de\StreamJsonRpc.resources => 0x50b51f4270fb12f3 => 421
	i64 5896680224035167651, ; 279: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 261
	i64 5924126145606300664, ; 280: pl\StreamJsonRpc.resources => 0x5236b9579177b3f8 => 427
	i64 5959344983920014087, ; 281: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 281
	i64 5979151488806146654, ; 282: System.Formats.Asn1 => 0x52fa3699a489d25e => 38
	i64 5984759512290286505, ; 283: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 124
	i64 6068057819846744445, ; 284: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 330
	i64 6102788177522843259, ; 285: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 281
	i64 6200764641006662125, ; 286: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 330
	i64 6222399776351216807, ; 287: System.Text.Json.dll => 0x565a67a0ffe264a7 => 137
	i64 6251069312384999852, ; 288: System.Transactions.Local => 0x56c0426b870da1ac => 149
	i64 6278736998281604212, ; 289: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 85
	i64 6284145129771520194, ; 290: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 90
	i64 6315590403487358180, ; 291: fr\StreamJsonRpc.resources => 0x57a57c02b2badce4 => 423
	i64 6319713645133255417, ; 292: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 265
	i64 6355862529564748107, ; 293: Microsoft.ServiceHub.Resources.dll => 0x58348f4bbbec294b => 194
	i64 6357457916754632952, ; 294: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 436
	i64 6401687960814735282, ; 295: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 262
	i64 6435971861494892919, ; 296: cs/StreamJsonRpc.resources.dll => 0x59512a4f0cd00977 => 420
	i64 6474126617406440626, ; 297: Microsoft.VisualStudio.RpcContracts.dll => 0x59d8b7db6d6984b2 => 197
	i64 6478287442656530074, ; 298: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 318
	i64 6504860066809920875, ; 299: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 237
	i64 6548213210057960872, ; 300: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 248
	i64 6557084851308642443, ; 301: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 293
	i64 6560151584539558821, ; 302: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 184
	i64 6589202984700901502, ; 303: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 298
	i64 6591971792923354531, ; 304: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 263
	i64 6617685658146568858, ; 305: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 133
	i64 6692579329111691486, ; 306: it/Microsoft.VisualStudio.Composition.resources.dll => 0x5ce0d170e6d310de => 371
	i64 6713049226152416138, ; 307: cs\Microsoft.VisualStudio.Threading.resources => 0x5d298ab43486938a => 380
	i64 6713440830605852118, ; 308: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 96
	i64 6739246970287767386, ; 309: tr/StreamJsonRpc.resources.dll => 0x5d869d69d5a13f5a => 430
	i64 6739853162153639747, ; 310: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 311: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 326
	i64 6746589141607518456, ; 312: pt-BR/Microsoft.VisualStudio.Utilities.resources.dll => 0x5da0b3144f0610f8 => 402
	i64 6766076348542393491, ; 313: Microsoft.ServiceHub.Framework.dll => 0x5de5ee973e0a9c93 => 193
	i64 6772837112740759457, ; 314: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 105
	i64 6777482997383978746, ; 315: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 329
	i64 6786606130239981554, ; 316: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 33
	i64 6791396597476077909, ; 317: de/Microsoft.VisualStudio.Utilities.resources.dll => 0x5e3fe339195bb155 => 394
	i64 6798329586179154312, ; 318: System.Windows => 0x5e5884bd523ca188 => 154
	i64 6814185388980153342, ; 319: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 158
	i64 6876862101832370452, ; 320: System.Xml.Linq => 0x5f6f85a57d108914 => 155
	i64 6894844156784520562, ; 321: System.Numerics.Vectors => 0x5faf683aead1ad72 => 82
	i64 6987056692196838363, ; 322: System.Management => 0x60f7030ae3e88bdb => 219
	i64 7011053663211085209, ; 323: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 257
	i64 7014127154236225539, ; 324: ru\Microsoft.ServiceHub.Resources => 0x61572f7bfdabf803 => 363
	i64 7060896174307865760, ; 325: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 143
	i64 7083547580668757502, ; 326: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 87
	i64 7101497697220435230, ; 327: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 328: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 258
	i64 7112547816752919026, ; 329: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 51
	i64 7118095232192617785, ; 330: tr\Microsoft.VisualStudio.Composition.resources => 0x62c88de6803e1d39 => 377
	i64 7188876148444261747, ; 331: System.Composition.AttributedModel.dll => 0x63c404c4ca4c6d73 => 209
	i64 7192745174564810625, ; 332: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 227
	i64 7220009545223068405, ; 333: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 333
	i64 7270811800166795866, ; 334: System.Linq => 0x64e71ccf51a90a5a => 61
	i64 7284491514466782135, ; 335: pt-BR\Microsoft.ServiceHub.Resources => 0x6517b6700123cbb7 => 362
	i64 7299370801165188114, ; 336: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 54
	i64 7316205155833392065, ; 337: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 338: System.Reflection => 0x65d67f295d0740ad => 97
	i64 7349431895026339542, ; 339: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 226
	i64 7371656174704040109, ; 340: ru\Microsoft.VisualStudio.Composition.resources => 0x664d623bf38c98ad => 376
	i64 7377312882064240630, ; 341: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 342: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 155
	i64 7489048572193775167, ; 343: System.ObjectModel => 0x67ee71ff6b419e3f => 84
	i64 7584834483252033044, ; 344: pt-BR\Microsoft.VisualStudio.Validation.resources => 0x6942bec6be5ef614 => 415
	i64 7592577537120840276, ; 345: System.Diagnostics.Process => 0x695e410af5b2aa54 => 29
	i64 7635299587268401828, ; 346: ja/Microsoft.ServiceHub.Framework.resources.dll => 0x69f6088564d1daa4 => 346
	i64 7637303409920963731, ; 347: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 45
	i64 7643889328271876492, ; 348: fr\Microsoft.VisualStudio.Composition.resources => 0x6a148cd8520b618c => 370
	i64 7654504624184590948, ; 349: System.Net.Http => 0x6a3a4366801b8264 => 64
	i64 7683996460257074599, ; 350: it\Microsoft.VisualStudio.Validation.resources => 0x6aa30a11acfb5da7 => 411
	i64 7692844685477678523, ; 351: de\Microsoft.VisualStudio.Composition.resources => 0x6ac2797ba6260dbb => 368
	i64 7694700312542370399, ; 352: System.Net.Mail => 0x6ac9112a7e2cda5f => 66
	i64 7708790323521193081, ; 353: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 324
	i64 7714652370974252055, ; 354: System.Private.CoreLib => 0x6b0ff375198b9c17 => 172
	i64 7725404731275645577, ; 355: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 266
	i64 7735176074855944702, ; 356: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 357: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 301
	i64 7791074099216502080, ; 358: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 47
	i64 7820441508502274321, ; 359: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 360: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 234
	i64 7889145416849571422, ; 361: fr/Microsoft.VisualStudio.Composition.resources.dll => 0x6d7bdff548b83e5e => 370
	i64 7921741049276291146, ; 362: ja/Microsoft.VisualStudio.Threading.resources.dll => 0x6defad835cbe584a => 385
	i64 8020916254412992903, ; 363: zh-Hant/Microsoft.ServiceHub.Resources.dll => 0x6f5004d635717187 => 366
	i64 8025517457475554965, ; 364: WindowsBase => 0x6f605d9b4786ce95 => 165
	i64 8031450141206250471, ; 365: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 108
	i64 8037258329461389554, ; 366: ru/StreamJsonRpc.resources.dll => 0x6f8a13de0f9878f2 => 429
	i64 8044118961405839122, ; 367: System.ComponentModel.Composition => 0x6fa2739369944712 => 208
	i64 8064050204834738623, ; 368: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 369: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 260
	i64 8085230611270010360, ; 370: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 63
	i64 8087206902342787202, ; 371: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 27
	i64 8103644804370223335, ; 372: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 373: System.Reflection.Extensions => 0x70995ab73cf916ec => 93
	i64 8167236081217502503, ; 374: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 168
	i64 8185542183669246576, ; 375: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 376: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 305
	i64 8199901720993286004, ; 377: pl/StreamJsonRpc.resources.dll => 0x71cbe72b98eb4774 => 427
	i64 8202143405964630621, ; 378: de\Microsoft.VisualStudio.Threading.resources => 0x71d3ddf88d559a5d => 381
	i64 8246048515196606205, ; 379: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 191
	i64 8264926008854159966, ; 380: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 29
	i64 8290740647658429042, ; 381: System.Runtime.Extensions => 0x730ea0b15c929a72 => 103
	i64 8311982169281665208, ; 382: System.Threading.AccessControl => 0x735a17be836a18b8 => 222
	i64 8318905602908530212, ; 383: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 384: System.Security.Cryptography => 0x7423997c6fd56140 => 126
	i64 8398329775253868912, ; 385: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 243
	i64 8400357532724379117, ; 386: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 275
	i64 8406449386989781371, ; 387: pt-BR/Microsoft.VisualStudio.Composition.resources.dll => 0x74a9b52d9dd3817b => 375
	i64 8410671156615598628, ; 388: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 91
	i64 8426919725312979251, ; 389: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 264
	i64 8445070827284110693, ; 390: Microsoft.VisualStudio.Utilities.Internal => 0x7532eb2c6b489d65 => 201
	i64 8476857680833348370, ; 391: System.Security.Permissions.dll => 0x75a3d925fd9d0312 => 221
	i64 8518412311883997971, ; 392: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8540594166003620310, ; 393: ko/Microsoft.ServiceHub.Framework.resources.dll => 0x76864924db6b59d6 => 347
	i64 8563666267364444763, ; 394: System.Private.Uri => 0x76d841191140ca5b => 86
	i64 8568254372587209012, ; 395: it/Microsoft.VisualStudio.Utilities.resources.dll => 0x76e88df48f3f8134 => 398
	i64 8575739357155667659, ; 396: zh-Hant\Microsoft.VisualStudio.Utilities.resources => 0x770325825599aecb => 406
	i64 8595034769595574800, ; 397: ja\Microsoft.VisualStudio.Threading.resources => 0x7747b295a1e02a10 => 385
	i64 8598790081731763592, ; 398: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 254
	i64 8601935802264776013, ; 399: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 287
	i64 8605570381828407308, ; 400: en/Microsoft.VisualStudio.Utilities.resources.dll => 0x776d20ab0281400c => 395
	i64 8614108721271900878, ; 401: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 328
	i64 8623059219396073920, ; 402: System.Net.Quic.dll => 0x77ab42ac514299c0 => 71
	i64 8626175481042262068, ; 403: Java.Interop => 0x77b654e585b55834 => 168
	i64 8638972117149407195, ; 404: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 405: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 274
	i64 8648495978913578441, ; 406: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8674378975880868665, ; 407: TrashTec_MVVM_5B.dll => 0x786195b8407ef339 => 0
	i64 8677882282824630478, ; 408: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 328
	i64 8684531736582871431, ; 409: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 44
	i64 8725526185868997716, ; 410: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 27
	i64 8740830839790451704, ; 411: fr\Microsoft.ServiceHub.Framework.resources => 0x794dab567f7d3bf8 => 344
	i64 8772037756965498393, ; 412: it/Microsoft.VisualStudio.Validation.resources.dll => 0x79bc89dd1c3e2e19 => 411
	i64 8825974560710680624, ; 413: pl/Microsoft.ServiceHub.Framework.resources.dll => 0x7a7c2919d7cb6030 => 348
	i64 8853378295825400934, ; 414: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 302
	i64 8907357455289697290, ; 415: es/Microsoft.VisualStudio.Threading.resources.dll => 0x7b9d4a6991f8440a => 382
	i64 8941376889969657626, ; 416: System.Xml.XDocument => 0x7c1626e87187471a => 158
	i64 8951477988056063522, ; 417: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 277
	i64 8954753533646919997, ; 418: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 112
	i64 8993496018399434829, ; 419: de/Microsoft.ServiceHub.Framework.resources.dll => 0x7ccf50faa996984d => 342
	i64 9045785047181495996, ; 420: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 338
	i64 9138683372487561558, ; 421: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 121
	i64 9171069561746690957, ; 422: it\StreamJsonRpc.resources => 0x7f462f2d0e4f138d => 424
	i64 9312692141327339315, ; 423: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 292
	i64 9324707631942237306, ; 424: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 233
	i64 9360039450522429843, ; 425: fr/Microsoft.ServiceHub.Framework.resources.dll => 0x81e58a49e4082993 => 344
	i64 9468215723722196442, ; 426: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 159
	i64 9554839972845591462, ; 427: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 131
	i64 9575902398040817096, ; 428: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 297
	i64 9584643793929893533, ; 429: System.IO.dll => 0x85037ebfbbd7f69d => 57
	i64 9630107140230300349, ; 430: de\Microsoft.VisualStudio.Validation.resources => 0x85a5036bea6142bd => 408
	i64 9659729154652888475, ; 431: System.Text.RegularExpressions => 0x860e407c9991dd9b => 138
	i64 9662334977499516867, ; 432: System.Numerics.dll => 0x8617827802b0cfc3 => 83
	i64 9667360217193089419, ; 433: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 30
	i64 9678050649315576968, ; 434: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 244
	i64 9679978064620295023, ; 435: it/StreamJsonRpc.resources.dll => 0x865630c35744136f => 424
	i64 9702891218465930390, ; 436: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9776375771063220978, ; 437: Nerdbank.Streams => 0x87aca9f760f57af2 => 204
	i64 9780093022148426479, ; 438: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 294
	i64 9808709177481450983, ; 439: Mono.Android.dll => 0x881f890734e555e7 => 171
	i64 9823691751235222432, ; 440: zh-Hant\Microsoft.ServiceHub.Framework.resources => 0x8854c3997f4f7ba0 => 353
	i64 9825649861376906464, ; 441: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 241
	i64 9827080095733250167, ; 442: zh-Hant/Microsoft.ServiceHub.Framework.resources.dll => 0x8860cd47ed7df877 => 353
	i64 9834056768316610435, ; 443: System.Transactions.dll => 0x8879968718899783 => 150
	i64 9836529246295212050, ; 444: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 94
	i64 9844193899530095610, ; 445: ja\Microsoft.VisualStudio.Validation.resources => 0x889d9a31e18f0bfa => 412
	i64 9907349773706910547, ; 446: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 254
	i64 9933555792566666578, ; 447: System.Linq.Queryable.dll => 0x89db145cf475c552 => 60
	i64 9956195530459977388, ; 448: Microsoft.Maui => 0x8a2b8315b36616ac => 189
	i64 9959489431142554298, ; 449: System.CodeDom => 0x8a3736deb7825aba => 207
	i64 9963664739326433656, ; 450: zh-Hans\Microsoft.ServiceHub.Framework.resources => 0x8a460c4a68a31978 => 352
	i64 9974604633896246661, ; 451: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 157
	i64 9976963888860496507, ; 452: Microsoft.VisualStudio.Telemetry.dll => 0x8a754bcbf46e027b => 198
	i64 9991543690424095600, ; 453: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 313
	i64 10017511394021241210, ; 454: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 183
	i64 10038780035334861115, ; 455: System.Net.Http.dll => 0x8b50e941206af13b => 64
	i64 10051358222726253779, ; 456: System.Private.Xml => 0x8b7d990c97ccccd3 => 88
	i64 10078727084704864206, ; 457: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 79
	i64 10089571585547156312, ; 458: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 47
	i64 10092835686693276772, ; 459: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 187
	i64 10105485790837105934, ; 460: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 143
	i64 10143853363526200146, ; 461: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 310
	i64 10151361150077311800, ; 462: Microsoft.VisualStudio.Utilities.Internal.dll => 0x8ce0e12e890f1b38 => 201
	i64 10224491876966872357, ; 463: ko/Microsoft.VisualStudio.Composition.resources.dll => 0x8de4b130bf7a3525 => 373
	i64 10226222362177979215, ; 464: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 303
	i64 10229024438826829339, ; 465: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 248
	i64 10236703004850800690, ; 466: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 74
	i64 10245369515835430794, ; 467: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 91
	i64 10252714262739571204, ; 468: Microsoft.Maui.Controls.HotReload.Forms => 0x8e48f54cfe2c5204 => 433
	i64 10321854143672141184, ; 469: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 300
	i64 10360651442923773544, ; 470: System.Text.Encoding => 0x8fc86d98211c1e68 => 135
	i64 10364469296367737616, ; 471: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 90
	i64 10376576884623852283, ; 472: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 286
	i64 10406448008575299332, ; 473: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 306
	i64 10407550536276267806, ; 474: zh-Hant/Microsoft.VisualStudio.Composition.resources.dll => 0x906f0c1238ac531e => 379
	i64 10430153318873392755, ; 475: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 245
	i64 10447615475279048428, ; 476: de\Microsoft.VisualStudio.Utilities.resources => 0x90fd62ebc1e1aeec => 394
	i64 10448061532586656644, ; 477: System.Composition.Convention.dll => 0x90fef89b91404384 => 210
	i64 10505221885553605938, ; 478: ja/Microsoft.VisualStudio.Composition.resources.dll => 0x91ca0ba55714fd32 => 372
	i64 10506226065143327199, ; 479: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 308
	i64 10546663366131771576, ; 480: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 112
	i64 10566960649245365243, ; 481: System.Globalization.dll => 0x92a562b96dcd13fb => 42
	i64 10595762989148858956, ; 482: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 159
	i64 10670374202010151210, ; 483: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 484: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 103
	i64 10785150219063592792, ; 485: System.Net.Primitives => 0x95ac8cfb68830758 => 70
	i64 10822644899632537592, ; 486: System.Linq.Queryable => 0x9631c23204ca5ff8 => 60
	i64 10830817578243619689, ; 487: System.Formats.Tar => 0x964ecb340a447b69 => 39
	i64 10835442135346987677, ; 488: pl/Microsoft.VisualStudio.Utilities.resources.dll => 0x965f3936a5a8429d => 401
	i64 10843446450579966237, ; 489: Microsoft.VisualStudio.Composition => 0x967ba91883ca091d => 195
	i64 10847732767863316357, ; 490: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 235
	i64 10899834349646441345, ; 491: System.Web => 0x9743fd975946eb81 => 153
	i64 10943875058216066601, ; 492: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 56
	i64 10964653383833615866, ; 493: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 34
	i64 10991732737396536896, ; 494: zh-Hant/Microsoft.VisualStudio.Utilities.resources.dll => 0x988a7ab01e8d7640 => 406
	i64 11002576679268595294, ; 495: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 182
	i64 11009005086950030778, ; 496: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 189
	i64 11019817191295005410, ; 497: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 232
	i64 11023048688141570732, ; 498: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 499: System.Xml => 0x992e31d0412bf7fc => 163
	i64 11047101296015504039, ; 500: Microsoft.Win32.SystemEvents => 0x994f301942c2f2a7 => 203
	i64 11071824625609515081, ; 501: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 298
	i64 11078422477095414952, ; 502: MessagePack.Annotations => 0x99be768c02f9aca8 => 176
	i64 11079569176516935993, ; 503: ko\Microsoft.ServiceHub.Resources => 0x99c28976c6a8c139 => 360
	i64 11103970607964515343, ; 504: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 319
	i64 11128108736298314439, ; 505: ja\Microsoft.ServiceHub.Resources => 0x9a6efbefb8fb6ac7 => 359
	i64 11129765940661776577, ; 506: es\Microsoft.VisualStudio.Composition.resources => 0x9a74df27ae62f0c1 => 369
	i64 11136029745144976707, ; 507: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 296
	i64 11138965398324199724, ; 508: ru/Microsoft.VisualStudio.Composition.resources.dll => 0x9a958e03547b412c => 376
	i64 11162124722117608902, ; 509: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 291
	i64 11188319605227840848, ; 510: System.Threading.Overlapped => 0x9b44e5671724e550 => 140
	i64 11220793807500858938, ; 511: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 322
	i64 11226290749488709958, ; 512: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 184
	i64 11235648312900863002, ; 513: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 89
	i64 11329751333533450475, ; 514: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 147
	i64 11340910727871153756, ; 515: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 247
	i64 11341245327015630248, ; 516: System.Configuration.ConfigurationManager.dll => 0x9d643289535355a8 => 214
	i64 11347436699239206956, ; 517: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 162
	i64 11385656703440359675, ; 518: zh-Hant\Microsoft.VisualStudio.Validation.resources => 0x9e01fa72af1b90fb => 419
	i64 11392833485892708388, ; 519: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 276
	i64 11426995335776520728, ; 520: it/Microsoft.ServiceHub.Resources.dll => 0x9e94d7b70f014a18 => 358
	i64 11432086877643258359, ; 521: cs\Microsoft.ServiceHub.Resources => 0x9ea6ee720754b9f7 => 354
	i64 11432101114902388181, ; 522: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 523: Mono.Android.Export => 0x9edabf8623efc131 => 169
	i64 11448276831755070604, ; 524: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 31
	i64 11465237565819292444, ; 525: ru/Microsoft.VisualStudio.Threading.resources.dll => 0x9f1cb4d2181f8b1c => 389
	i64 11482691884102096350, ; 526: fr/Microsoft.VisualStudio.Threading.resources.dll => 0x9f5ab76e412a95de => 383
	i64 11485890710487134646, ; 527: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11508496261504176197, ; 528: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 257
	i64 11513602507638267977, ; 529: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 218
	i64 11518296021396496455, ; 530: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 320
	i64 11529969570048099689, ; 531: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 291
	i64 11530571088791430846, ; 532: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 181
	i64 11580057168383206117, ; 533: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 230
	i64 11591352189662810718, ; 534: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 284
	i64 11597174155934063391, ; 535: fr\Microsoft.VisualStudio.Utilities.resources => 0xa0f170734aca5b1f => 397
	i64 11597940890313164233, ; 536: netstandard => 0xa0f429ca8d1805c9 => 167
	i64 11633085459938445148, ; 537: de/Microsoft.VisualStudio.Composition.resources.dll => 0xa17105975164875c => 368
	i64 11672361001936329215, ; 538: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 258
	i64 11692977985522001935, ; 539: System.Threading.Overlapped.dll => 0xa245cd869980680f => 140
	i64 11705530742807338875, ; 540: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 316
	i64 11707554492040141440, ; 541: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 59
	i64 11743665907891708234, ; 542: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 144
	i64 11766809059788673038, ; 543: zh-Hans/Microsoft.VisualStudio.Threading.resources.dll => 0xa34c1a7f248d500e => 391
	i64 11890655789319506262, ; 544: ko/StreamJsonRpc.resources.dll => 0xa5041870e4d4c956 => 426
	i64 11938677804301963148, ; 545: tr/Microsoft.ServiceHub.Framework.resources.dll => 0xa5aeb4358d424f8c => 351
	i64 11991047634523762324, ; 546: System.Net => 0xa668c24ad493ae94 => 81
	i64 12008693925152623904, ; 547: pl\Microsoft.VisualStudio.Utilities.resources => 0xa6a77380091d0d20 => 401
	i64 12011556116648931059, ; 548: System.Security.Cryptography.ProtectedData => 0xa6b19ea5ec87aef3 => 220
	i64 12040886584167504988, ; 549: System.Net.ServicePoint => 0xa719d28d8e121c5c => 74
	i64 12063623837170009990, ; 550: System.Security => 0xa76a99f6ce740786 => 130
	i64 12096697103934194533, ; 551: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 552: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 553: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 93
	i64 12124151557889122664, ; 554: pt-BR\Microsoft.VisualStudio.Utilities.resources => 0xa841a39afafae168 => 402
	i64 12137774235383566651, ; 555: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 288
	i64 12145679461940342714, ; 556: System.Text.Json => 0xa88e1f1ebcb62fba => 137
	i64 12191646537372739477, ; 557: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 224
	i64 12201331334810686224, ; 558: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 113
	i64 12269460666702402136, ; 559: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12313367145828839434, ; 560: System.IO.Pipelines => 0xaae1de2e1c17f00a => 218
	i64 12332222936682028543, ; 561: System.Runtime.Handles => 0xab24db6c07db5dff => 104
	i64 12374012165002318533, ; 562: cs\Microsoft.VisualStudio.Composition.resources => 0xabb95280f55352c5 => 367
	i64 12375446203996702057, ; 563: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12451044538927396471, ; 564: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 256
	i64 12466513435562512481, ; 565: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 270
	i64 12471568088487385307, ; 566: fr\Microsoft.ServiceHub.Resources => 0xad13e9196a6358db => 357
	i64 12475113361194491050, ; 567: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 436
	i64 12481884125606176949, ; 568: zh-Hant/StreamJsonRpc.resources.dll => 0xad388f7afa57e8b5 => 432
	i64 12487638416075308985, ; 569: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 250
	i64 12517810545449516888, ; 570: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 33
	i64 12538491095302438457, ; 571: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 238
	i64 12550732019250633519, ; 572: System.IO.Compression => 0xae2d28465e8e1b2f => 46
	i64 12573751959656727467, ; 573: ru/Microsoft.VisualStudio.Validation.resources.dll => 0xae7ef0c9e93603ab => 416
	i64 12603216663576844694, ; 574: de/Microsoft.VisualStudio.Threading.resources.dll => 0xaee79ec7e3c81996 => 381
	i64 12681088699309157496, ; 575: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 321
	i64 12699999919562409296, ; 576: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 30
	i64 12700543734426720211, ; 577: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 239
	i64 12708238894395270091, ; 578: System.IO => 0xb05cbbf17d3ba3cb => 57
	i64 12708922737231849740, ; 579: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 134
	i64 12717050818822477433, ; 580: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 114
	i64 12726057104018228727, ; 581: Microsoft.NET.StringTools => 0xb09c0982b457c5f7 => 192
	i64 12753841065332862057, ; 582: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 293
	i64 12808034783427285688, ; 583: cs\StreamJsonRpc.resources => 0xb1bf47c69107d2b8 => 420
	i64 12823819093633476069, ; 584: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 334
	i64 12828192437253469131, ; 585: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 304
	i64 12835242264250840079, ; 586: System.IO.Pipes => 0xb21ff0d5d6c0740f => 55
	i64 12843321153144804894, ; 587: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 185
	i64 12843770487262409629, ; 588: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12848781286208560954, ; 589: Microsoft.VisualStudio.Telemetry => 0xb2500a810925df3a => 198
	i64 12859557719246324186, ; 590: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 77
	i64 12928116100519456705, ; 591: es\Microsoft.VisualStudio.Utilities.resources => 0xb369e518ea786fc1 => 396
	i64 12963446364377008305, ; 592: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 217
	i64 12982280885948128408, ; 593: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 249
	i64 13000926602004112928, ; 594: zh-Hans\Microsoft.VisualStudio.Composition.resources => 0xb46c91dcd761a620 => 378
	i64 13019838822340531700, ; 595: cs/Microsoft.VisualStudio.Composition.resources.dll => 0xb4afc26d467295f4 => 367
	i64 13068258254871114833, ; 596: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 111
	i64 13072259076476491058, ; 597: tr\StreamJsonRpc.resources => 0xb569fe5ec941d532 => 430
	i64 13126023683090012938, ; 598: System.Composition.TypedParts.dll => 0xb62900febff1db0a => 213
	i64 13129914918964716986, ; 599: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 253
	i64 13130412034557475351, ; 600: fr\Microsoft.VisualStudio.Threading.resources => 0xb638982d724ffa17 => 383
	i64 13162471042547327635, ; 601: System.Security.Permissions => 0xb6aa7dace9662293 => 221
	i64 13173818576982874404, ; 602: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 102
	i64 13221551921002590604, ; 603: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 308
	i64 13222659110913276082, ; 604: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 322
	i64 13244563641972016158, ; 605: pt-BR/Microsoft.ServiceHub.Framework.resources.dll => 0xb7ce2475accbc41e => 349
	i64 13343850469010654401, ; 606: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 170
	i64 13370592475155966277, ; 607: System.Runtime.Serialization => 0xb98de304062ea945 => 115
	i64 13381594904270902445, ; 608: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 316
	i64 13401370062847626945, ; 609: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 288
	i64 13404347523447273790, ; 610: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 243
	i64 13431476299110033919, ; 611: System.Net.WebClient => 0xba663087f18829ff => 76
	i64 13454009404024712428, ; 612: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 299
	i64 13463706743370286408, ; 613: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 85
	i64 13465488254036897740, ; 614: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 301
	i64 13467053111158216594, ; 615: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 336
	i64 13491513212026656886, ; 616: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 236
	i64 13502641473732064860, ; 617: System.Composition.AttributedModel => 0xbb6304e15b41b65c => 209
	i64 13540124433173649601, ; 618: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 337
	i64 13545416393490209236, ; 619: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 320
	i64 13572454107664307259, ; 620: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 278
	i64 13578472628727169633, ; 621: System.Xml.XPath => 0xbc706ce9fba5c261 => 160
	i64 13580399111273692417, ; 622: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 623: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 249
	i64 13647894001087880694, ; 624: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 625: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 229
	i64 13702626353344114072, ; 626: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 32
	i64 13703125838636057883, ; 627: Microsoft.VisualStudio.Validation.dll => 0xbe2b48591461051b => 202
	i64 13710614125866346983, ; 628: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 117
	i64 13713329104121190199, ; 629: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 37
	i64 13717397318615465333, ; 630: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 631: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 315
	i64 13768883594457632599, ; 632: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 52
	i64 13814445057219246765, ; 633: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 318
	i64 13819460841644211703, ; 634: es\Microsoft.ServiceHub.Resources => 0xbfc8966ab59fbdf7 => 356
	i64 13828521679616088467, ; 635: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 302
	i64 13859681129916375842, ; 636: tr\Microsoft.VisualStudio.Validation.resources => 0xc0577a8e50d9a322 => 417
	i64 13881769479078963060, ; 637: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13882652712560114096, ; 638: System.Windows.Extensions.dll => 0xc0a91716b04239b0 => 223
	i64 13911222732217019342, ; 639: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 123
	i64 13928444506500929300, ; 640: System.Windows.dll => 0xc14bc67b8bba9714 => 154
	i64 13959074834287824816, ; 641: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 256
	i64 13988492781996941750, ; 642: ja\Microsoft.ServiceHub.Framework.resources => 0xc2211c122e0b21b6 => 346
	i64 14043772898905986081, ; 643: tr/Microsoft.VisualStudio.Utilities.resources.dll => 0xc2e5810b618c9421 => 404
	i64 14075334701871371868, ; 644: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 131
	i64 14100563506285742564, ; 645: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 310
	i64 14124974489674258913, ; 646: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 238
	i64 14125464355221830302, ; 647: System.Threading.dll => 0xc407bafdbc707a9e => 148
	i64 14175074915974767561, ; 648: zh-Hans\Microsoft.ServiceHub.Resources => 0xc4b7fb888739e3c9 => 365
	i64 14178052285788134900, ; 649: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 225
	i64 14212104595480609394, ; 650: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 120
	i64 14220608275227875801, ; 651: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 28
	i64 14226382999226559092, ; 652: System.ServiceProcess => 0xc56e43f6938e2a74 => 132
	i64 14232023429000439693, ; 653: System.Resources.Writer.dll => 0xc5824de7789ba78d => 100
	i64 14254574811015963973, ; 654: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 134
	i64 14261073672896646636, ; 655: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 276
	i64 14298246716367104064, ; 656: System.Web.dll => 0xc66d93a217f4e840 => 153
	i64 14327695147300244862, ; 657: System.Reflection.dll => 0xc6d632d338eb4d7e => 97
	i64 14327709162229390963, ; 658: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 125
	i64 14330684041385202088, ; 659: pt-BR/Microsoft.VisualStudio.Threading.resources.dll => 0xc6e0d1355b1fd1a8 => 388
	i64 14331727281556788554, ; 660: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 226
	i64 14346402571976470310, ; 661: System.Net.Ping.dll => 0xc718a920f3686f26 => 69
	i64 14370252628338276234, ; 662: tr/Microsoft.VisualStudio.Validation.resources.dll => 0xc76d64a0ecb9f78a => 417
	i64 14391267691003248864, ; 663: Nerdbank.Streams.dll => 0xc7b80db77dce00e0 => 204
	i64 14415297290983905433, ; 664: pt-BR\StreamJsonRpc.resources => 0xc80d6c82b8bf1899 => 428
	i64 14452298576064698508, ; 665: es\Microsoft.VisualStudio.Validation.resources => 0xc890e0fbbe38588c => 409
	i64 14461014870687870182, ; 666: System.Net.Requests.dll => 0xc8afd8683afdece6 => 72
	i64 14464374589798375073, ; 667: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 331
	i64 14486659737292545672, ; 668: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 261
	i64 14495724990987328804, ; 669: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 279
	i64 14522721392235705434, ; 670: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 312
	i64 14551742072151931844, ; 671: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 136
	i64 14561513370130550166, ; 672: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 124
	i64 14574160591280636898, ; 673: System.Net.Quic => 0xca41d1d72ec783e2 => 71
	i64 14614774114972620539, ; 674: zh-Hans/Microsoft.VisualStudio.Composition.resources.dll => 0xcad21ba00b8456fb => 378
	i64 14622043554576106986, ; 675: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 111
	i64 14636892923918804708, ; 676: ja/StreamJsonRpc.resources.dll => 0xcb20b090919be6e4 => 425
	i64 14644440854989303794, ; 677: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 271
	i64 14656309759869513278, ; 678: Microsoft.VisualStudio.RemoteControl.dll => 0xcb65ac12fb1cee3e => 196
	i64 14669215534098758659, ; 679: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 179
	i64 14690985099581930927, ; 680: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 152
	i64 14705122255218365489, ; 681: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 323
	i64 14744092281598614090, ; 682: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 339
	i64 14753596820584604397, ; 683: zh-Hans/StreamJsonRpc.resources.dll => 0xccbf4e23f24722ed => 431
	i64 14771404191615744121, ; 684: pl\Microsoft.VisualStudio.Composition.resources => 0xccfe91d99af8f879 => 374
	i64 14792063746108907174, ; 685: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 299
	i64 14819209644871321045, ; 686: zh-Hans/Microsoft.VisualStudio.Utilities.resources.dll => 0xcda868a80e9905d5 => 405
	i64 14820817770416679739, ; 687: tr\Microsoft.VisualStudio.Threading.resources => 0xcdae1f3cf67bab3b => 390
	i64 14832630590065248058, ; 688: System.Security.Claims => 0xcdd816ef5d6e873a => 118
	i64 14847150824983734404, ; 689: Microsoft.VisualStudio.RpcContracts => 0xce0bad0301cda884 => 197
	i64 14852515768018889994, ; 690: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 247
	i64 14889905118082851278, ; 691: GoogleGson.dll => 0xcea391d0969961ce => 174
	i64 14892012299694389861, ; 692: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 340
	i64 14904040806490515477, ; 693: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 307
	i64 14912225920358050525, ; 694: System.Security.Principal.Windows => 0xcef2de7759506add => 127
	i64 14935719434541007538, ; 695: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 133
	i64 14954917835170835695, ; 696: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 180
	i64 14984936317414011727, ; 697: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 77
	i64 14987728460634540364, ; 698: System.IO.Compression.dll => 0xcfff1ba06622494c => 46
	i64 14988210264188246988, ; 699: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 250
	i64 15015154896917945444, ; 700: System.Net.Security.dll => 0xd0608bd33642dc64 => 73
	i64 15023260263817286165, ; 701: es/StreamJsonRpc.resources.dll => 0xd07d579d01121215 => 422
	i64 15023528575408771796, ; 702: ko\StreamJsonRpc.resources => 0xd07e4ba42a2b92d4 => 426
	i64 15024878362326791334, ; 703: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 63
	i64 15044901218619597537, ; 704: en\Microsoft.VisualStudio.Utilities.resources => 0xd0ca39f270a9a2e1 => 395
	i64 15071021337266399595, ; 705: System.Resources.Reader.dll => 0xd127060e7a18a96b => 98
	i64 15076659072870671916, ; 706: System.ObjectModel.dll => 0xd13b0d8c1620662c => 84
	i64 15078030747917693565, ; 707: pl/Microsoft.VisualStudio.Threading.resources.dll => 0xd13fed14120d327d => 387
	i64 15111608613780139878, ; 708: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 324
	i64 15115185479366240210, ; 709: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 43
	i64 15133485256822086103, ; 710: System.Linq.dll => 0xd204f0a9127dd9d7 => 61
	i64 15150743910298169673, ; 711: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 277
	i64 15201252454341482878, ; 712: ja\StreamJsonRpc.resources => 0xd2f5b2914a0f197e => 425
	i64 15227001540531775957, ; 713: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 178
	i64 15234786388537674379, ; 714: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 37
	i64 15237913642941303365, ; 715: pl\Microsoft.ServiceHub.Framework.resources => 0xd377f1b96d984a45 => 348
	i64 15249474349747396247, ; 716: zh-Hans\StreamJsonRpc.resources => 0xd3a104203c1fde97 => 431
	i64 15250465174479574862, ; 717: System.Globalization.Calendars.dll => 0xd3a489469852174e => 40
	i64 15272359115529052076, ; 718: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 240
	i64 15279429628684179188, ; 719: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 305
	i64 15299439993936780255, ; 720: System.Xml.XPath.dll => 0xd452879d55019bdf => 160
	i64 15300862763834473199, ; 721: System.Composition.Hosting.dll => 0xd457959dc35afaef => 211
	i64 15338463749992804988, ; 722: System.Resources.Reader => 0xd4dd2b839286f27c => 98
	i64 15352427450275134006, ; 723: System.Composition.Runtime.dll => 0xd50ec76ce59afa36 => 212
	i64 15370334346939861994, ; 724: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 245
	i64 15391712275433856905, ; 725: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 180
	i64 15455258289457179632, ; 726: pl/Microsoft.ServiceHub.Resources.dll => 0xd67c1b875f01abf0 => 361
	i64 15475196252089753159, ; 727: System.Diagnostics.EventLog => 0xd6c2f1000b441e47 => 215
	i64 15485751695148966188, ; 728: pt-BR/Microsoft.ServiceHub.Resources.dll => 0xd6e8711ea541e12c => 362
	i64 15526743539506359484, ; 729: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 135
	i64 15527772828719725935, ; 730: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 731: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 65
	i64 15536481058354060254, ; 732: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 311
	i64 15541854775306130054, ; 733: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 125
	i64 15557562860424774966, ; 734: System.Net.Sockets => 0xd7e790fe7a6dc536 => 75
	i64 15558627161509849899, ; 735: ru\Microsoft.VisualStudio.Validation.resources => 0xd7eb58f86289eb2b => 416
	i64 15582737692548360875, ; 736: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 269
	i64 15609085926864131306, ; 737: System.dll => 0xd89e9cf3334914ea => 164
	i64 15661133872274321916, ; 738: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 156
	i64 15664356999916475676, ; 739: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 311
	i64 15686827046011320720, ; 740: it\Microsoft.VisualStudio.Utilities.resources => 0xd9b2ce16027eb990 => 398
	i64 15710114879900314733, ; 741: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15743187114543869802, ; 742: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 319
	i64 15750798694401567573, ; 743: ru\Microsoft.VisualStudio.Threading.resources => 0xda9613f6147deb55 => 389
	i64 15755368083429170162, ; 744: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 49
	i64 15777549416145007739, ; 745: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 283
	i64 15783653065526199428, ; 746: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 312
	i64 15817206913877585035, ; 747: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 144
	i64 15847085070278954535, ; 748: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 139
	i64 15885744048853936810, ; 749: System.Resources.Writer => 0xdc75800bd0b6eaaa => 100
	i64 15903718333706527842, ; 750: zh-Hans/Microsoft.VisualStudio.Validation.resources.dll => 0xdcb55b902071e462 => 418
	i64 15928521404965645318, ; 751: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 186
	i64 15934062614519587357, ; 752: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 123
	i64 15937190497610202713, ; 753: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 120
	i64 15953812885175980916, ; 754: ko\Microsoft.VisualStudio.Validation.resources => 0xdd67544ac9f6d374 => 413
	i64 15963349826457351533, ; 755: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 142
	i64 15971679995444160383, ; 756: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 39
	i64 16018552496348375205, ; 757: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 68
	i64 16054465462676478687, ; 758: System.Globalization.Extensions => 0xdecceb47319bdadf => 41
	i64 16090829755721178160, ; 759: tr\Microsoft.ServiceHub.Framework.resources => 0xdf4e1c68f30bdc30 => 351
	i64 16091261637069827414, ; 760: ko/Microsoft.VisualStudio.Validation.resources.dll => 0xdf4fa534296aed56 => 413
	i64 16131251062481977478, ; 761: pl\Microsoft.ServiceHub.Resources => 0xdfddb75fd1e18086 => 361
	i64 16154507427712707110, ; 762: System => 0xe03056ea4e39aa26 => 164
	i64 16177821557421402585, ; 763: StreamJsonRpc => 0xe0832afe21c269d9 => 206
	i64 16201041905702586336, ; 764: System.Diagnostics.PerformanceCounter => 0xe0d5a9c6c49ec7e0 => 216
	i64 16219561732052121626, ; 765: System.Net.Security => 0xe1177575db7c781a => 73
	i64 16236971995090710244, ; 766: pt-BR\Microsoft.VisualStudio.Composition.resources => 0xe15550009b58eee4 => 375
	i64 16288847719894691167, ; 767: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 325
	i64 16315482530584035869, ; 768: WindowsBase.dll => 0xe26c3ceb1e8d821d => 165
	i64 16321164108206115771, ; 769: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 182
	i64 16337011941688632206, ; 770: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 127
	i64 16361933716545543812, ; 771: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 255
	i64 16423015068819898779, ; 772: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 304
	i64 16454459195343277943, ; 773: System.Net.NetworkInformation => 0xe459fb756d988f77 => 68
	i64 16496768397145114574, ; 774: Mono.Android.Export.dll => 0xe4f04b741db987ce => 169
	i64 16520416485536215268, ; 775: es\Microsoft.VisualStudio.Threading.resources => 0xe5444f43c1e4b0e4 => 382
	i64 16565028646146589191, ; 776: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 208
	i64 16582434033142728747, ; 777: Microsoft.NET.StringTools.dll => 0xe620a3e548d2082b => 192
	i64 16583419235299384312, ; 778: ko\Microsoft.VisualStudio.Threading.resources => 0xe62423ee89665bf8 => 386
	i64 16584736615512946867, ; 779: Microsoft.VisualStudio.Utilities.dll => 0xe628d215051038b3 => 200
	i64 16589693266713801121, ; 780: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 268
	i64 16621146507174665210, ; 781: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 242
	i64 16643194905613199096, ; 782: System.Composition.Runtime => 0xe6f8819654aa66f8 => 212
	i64 16648892297579399389, ; 783: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 173
	i64 16649148416072044166, ; 784: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 191
	i64 16677317093839702854, ; 785: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 275
	i64 16702652415771857902, ; 786: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 151
	i64 16709499819875633724, ; 787: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 45
	i64 16737807731308835127, ; 788: System.Runtime.Intrinsics => 0xe848a3736f733137 => 108
	i64 16758309481308491337, ; 789: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 48
	i64 16762783179241323229, ; 790: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 96
	i64 16765015072123548030, ; 791: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 31
	i64 16800021547249663972, ; 792: Microsoft.ServiceHub.Framework => 0xe925aa963eb97fe4 => 193
	i64 16822611501064131242, ; 793: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16827289987956835956, ; 794: cs\Microsoft.VisualStudio.Utilities.resources => 0xe9868b16d8a78674 => 393
	i64 16833383113903931215, ; 795: mscorlib => 0xe99c30c1484d7f4f => 166
	i64 16856067890322379635, ; 796: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16870847574843270873, ; 797: de/Microsoft.ServiceHub.Resources.dll => 0xea214a7bd64b26d9 => 355
	i64 16890310621557459193, ; 798: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 138
	i64 16933958494752847024, ; 799: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 78
	i64 16942731696432749159, ; 800: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 332
	i64 16977952268158210142, ; 801: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 54
	i64 16989020923549080504, ; 802: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 268
	i64 16998075588627545693, ; 803: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 273
	i64 17008137082415910100, ; 804: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17018932226584424969, ; 805: pt-BR\Microsoft.VisualStudio.Threading.resources => 0xec2f64b09e033209 => 388
	i64 17024911836938395553, ; 806: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 231
	i64 17026344819618783825, ; 807: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0xec49ba676cb0a251 => 435
	i64 17031351772568316411, ; 808: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 272
	i64 17037200463775726619, ; 809: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 259
	i64 17062143951396181894, ; 810: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17089008752050867324, ; 811: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 339
	i64 17118171214553292978, ; 812: System.Threading.Channels => 0xed8ff6060fc420b2 => 139
	i64 17160917431135180830, ; 813: ru\Microsoft.VisualStudio.Utilities.resources => 0xee27d37b2e9f181e => 403
	i64 17180572832852637353, ; 814: es\StreamJsonRpc.resources => 0xee6da7f703e876a9 => 422
	i64 17187273293601214786, ; 815: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 816: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 817: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 122
	i64 17230721278011714856, ; 818: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 87
	i64 17234219099804750107, ; 819: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 149
	i64 17260702271250283638, ; 820: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 821: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 34
	i64 17338386382517543202, ; 822: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 79
	i64 17342750010158924305, ; 823: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 317
	i64 17346290192329067203, ; 824: zh-Hant\Microsoft.VisualStudio.Threading.resources => 0xf0ba67067c9dcac3 => 392
	i64 17360349973592121190, ; 825: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 297
	i64 17438153253682247751, ; 826: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 332
	i64 17470386307322966175, ; 827: System.Threading.Timer => 0xf27347c8d0d5709f => 147
	i64 17490334362188023649, ; 828: pl\Microsoft.VisualStudio.Validation.resources => 0xf2ba266f45068761 => 414
	i64 17509662556995089465, ; 829: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 80
	i64 17514990004910432069, ; 830: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 315
	i64 17522591619082469157, ; 831: GoogleGson => 0xf32cc03d27a5bf25 => 174
	i64 17523946658117960076, ; 832: System.Security.Cryptography.ProtectedData.dll => 0xf33190a3c403c18c => 220
	i64 17590473451926037903, ; 833: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 224
	i64 17623389608345532001, ; 834: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 327
	i64 17627500474728259406, ; 835: System.Globalization => 0xf4a176498a351f4e => 42
	i64 17685921127322830888, ; 836: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 837: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 338
	i64 17704177640604968747, ; 838: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 270
	i64 17710060891934109755, ; 839: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 267
	i64 17712670374920797664, ; 840: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17743407583038752114, ; 841: System.CodeDom.dll => 0xf63d3f302bff4572 => 207
	i64 17777860260071588075, ; 842: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 110
	i64 17801122059615118823, ; 843: Microsoft.VisualStudio.Threading.dll => 0xf70a4a32e6baa5e7 => 199
	i64 17806780683907942013, ; 844: ja\Microsoft.VisualStudio.Composition.resources => 0xf71e64b0099ec67d => 372
	i64 17830918774018250459, ; 845: ja/Microsoft.ServiceHub.Resources.dll => 0xf7742627183396db => 359
	i64 17838668724098252521, ; 846: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17849620690824033494, ; 847: cs\Microsoft.ServiceHub.Framework.resources => 0xf7b697726c0774d6 => 341
	i64 17852204549962223340, ; 848: ko/Microsoft.ServiceHub.Resources.dll => 0xf7bfc574021c4eec => 360
	i64 17859375626191382484, ; 849: fr/Microsoft.VisualStudio.Utilities.resources.dll => 0xf7d93f824d6827d4 => 397
	i64 17872609556538910715, ; 850: ru/Microsoft.ServiceHub.Framework.resources.dll => 0xf80843b2d2c0e7fb => 350
	i64 17891337867145587222, ; 851: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 300
	i64 17894845729534052403, ; 852: tr/Microsoft.VisualStudio.Composition.resources.dll => 0xf85743614b4b0833 => 377
	i64 17928294245072900555, ; 853: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 44
	i64 17967933707255284319, ; 854: it/Microsoft.ServiceHub.Framework.resources.dll => 0xf95aec8230b8025f => 345
	i64 17992315986609351877, ; 855: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 161
	i64 18025913125965088385, ; 856: System.Threading => 0xfa28e87b91334681 => 148
	i64 18099568558057551825, ; 857: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 326
	i64 18116111925905154859, ; 858: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 236
	i64 18121036031235206392, ; 859: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 272
	i64 18123834358115542242, ; 860: fr/StreamJsonRpc.resources.dll => 0xfb84cb53137f24e2 => 423
	i64 18146411883821974900, ; 861: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 38
	i64 18146811631844267958, ; 862: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18166800034629147097, ; 863: ru\StreamJsonRpc.resources => 0xfc1d7061319fd9d9 => 429
	i64 18171003490741864161, ; 864: MessagePack => 0xfc2c5f66960d46e1 => 175
	i64 18225059387460068507, ; 865: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 146
	i64 18236439618683771511, ; 866: System.Threading.AccessControl.dll => 0xfd14d9365f819a77 => 222
	i64 18245806341561545090, ; 867: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 868: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 253
	i64 18305135509493619199, ; 869: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 274
	i64 18318849532986632368, ; 870: System.Security.dll => 0xfe39a097c37fa8b0 => 130
	i64 18324163916253801303, ; 871: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 321
	i64 18380184030268848184, ; 872: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 290
	i64 18439108438687598470 ; 873: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 94
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [874 x i32] [
	i32 390, ; 0
	i32 252, ; 1
	i32 196, ; 2
	i32 185, ; 3
	i32 171, ; 4
	i32 190, ; 5
	i32 399, ; 6
	i32 58, ; 7
	i32 363, ; 8
	i32 239, ; 9
	i32 151, ; 10
	i32 280, ; 11
	i32 379, ; 12
	i32 283, ; 13
	i32 399, ; 14
	i32 246, ; 15
	i32 132, ; 16
	i32 412, ; 17
	i32 435, ; 18
	i32 200, ; 19
	i32 56, ; 20
	i32 282, ; 21
	i32 206, ; 22
	i32 343, ; 23
	i32 219, ; 24
	i32 314, ; 25
	i32 95, ; 26
	i32 405, ; 27
	i32 265, ; 28
	i32 129, ; 29
	i32 386, ; 30
	i32 357, ; 31
	i32 217, ; 32
	i32 0, ; 33
	i32 145, ; 34
	i32 371, ; 35
	i32 350, ; 36
	i32 240, ; 37
	i32 18, ; 38
	i32 418, ; 39
	i32 317, ; 40
	i32 251, ; 41
	i32 266, ; 42
	i32 150, ; 43
	i32 104, ; 44
	i32 95, ; 45
	i32 295, ; 46
	i32 325, ; 47
	i32 419, ; 48
	i32 391, ; 49
	i32 36, ; 50
	i32 28, ; 51
	i32 235, ; 52
	i32 273, ; 53
	i32 50, ; 54
	i32 115, ; 55
	i32 70, ; 56
	i32 187, ; 57
	i32 65, ; 58
	i32 170, ; 59
	i32 352, ; 60
	i32 145, ; 61
	i32 323, ; 62
	i32 294, ; 63
	i32 234, ; 64
	i32 269, ; 65
	i32 259, ; 66
	i32 40, ; 67
	i32 89, ; 68
	i32 384, ; 69
	i32 81, ; 70
	i32 205, ; 71
	i32 66, ; 72
	i32 62, ; 73
	i32 86, ; 74
	i32 233, ; 75
	i32 106, ; 76
	i32 313, ; 77
	i32 280, ; 78
	i32 102, ; 79
	i32 35, ; 80
	i32 230, ; 81
	i32 335, ; 82
	i32 282, ; 83
	i32 404, ; 84
	i32 188, ; 85
	i32 173, ; 86
	i32 335, ; 87
	i32 119, ; 88
	i32 267, ; 89
	i32 309, ; 90
	i32 327, ; 91
	i32 142, ; 92
	i32 141, ; 93
	i32 303, ; 94
	i32 53, ; 95
	i32 35, ; 96
	i32 141, ; 97
	i32 356, ; 98
	i32 205, ; 99
	i32 407, ; 100
	i32 227, ; 101
	i32 237, ; 102
	i32 183, ; 103
	i32 251, ; 104
	i32 415, ; 105
	i32 8, ; 106
	i32 14, ; 107
	i32 331, ; 108
	i32 279, ; 109
	i32 51, ; 110
	i32 262, ; 111
	i32 373, ; 112
	i32 136, ; 113
	i32 101, ; 114
	i32 396, ; 115
	i32 400, ; 116
	i32 244, ; 117
	i32 289, ; 118
	i32 116, ; 119
	i32 228, ; 120
	i32 163, ; 121
	i32 334, ; 122
	i32 166, ; 123
	i32 67, ; 124
	i32 179, ; 125
	i32 309, ; 126
	i32 210, ; 127
	i32 80, ; 128
	i32 101, ; 129
	i32 284, ; 130
	i32 355, ; 131
	i32 117, ; 132
	i32 213, ; 133
	i32 214, ; 134
	i32 408, ; 135
	i32 314, ; 136
	i32 296, ; 137
	i32 392, ; 138
	i32 421, ; 139
	i32 78, ; 140
	i32 295, ; 141
	i32 434, ; 142
	i32 114, ; 143
	i32 121, ; 144
	i32 48, ; 145
	i32 393, ; 146
	i32 203, ; 147
	i32 128, ; 148
	i32 260, ; 149
	i32 231, ; 150
	i32 82, ; 151
	i32 110, ; 152
	i32 75, ; 153
	i32 345, ; 154
	i32 306, ; 155
	i32 364, ; 156
	i32 387, ; 157
	i32 190, ; 158
	i32 53, ; 159
	i32 286, ; 160
	i32 177, ; 161
	i32 69, ; 162
	i32 285, ; 163
	i32 83, ; 164
	i32 349, ; 165
	i32 172, ; 166
	i32 329, ; 167
	i32 116, ; 168
	i32 178, ; 169
	i32 156, ; 170
	i32 177, ; 171
	i32 225, ; 172
	i32 410, ; 173
	i32 167, ; 174
	i32 278, ; 175
	i32 347, ; 176
	i32 252, ; 177
	i32 358, ; 178
	i32 216, ; 179
	i32 341, ; 180
	i32 181, ; 181
	i32 32, ; 182
	i32 175, ; 183
	i32 188, ; 184
	i32 400, ; 185
	i32 122, ; 186
	i32 72, ; 187
	i32 62, ; 188
	i32 211, ; 189
	i32 161, ; 190
	i32 113, ; 191
	i32 176, ; 192
	i32 88, ; 193
	i32 186, ; 194
	i32 340, ; 195
	i32 105, ; 196
	i32 18, ; 197
	i32 146, ; 198
	i32 118, ; 199
	i32 58, ; 200
	i32 246, ; 201
	i32 17, ; 202
	i32 195, ; 203
	i32 52, ; 204
	i32 364, ; 205
	i32 92, ; 206
	i32 434, ; 207
	i32 215, ; 208
	i32 337, ; 209
	i32 55, ; 210
	i32 433, ; 211
	i32 129, ; 212
	i32 194, ; 213
	i32 152, ; 214
	i32 41, ; 215
	i32 92, ; 216
	i32 369, ; 217
	i32 290, ; 218
	i32 410, ; 219
	i32 50, ; 220
	i32 307, ; 221
	i32 374, ; 222
	i32 162, ; 223
	i32 432, ; 224
	i32 13, ; 225
	i32 264, ; 226
	i32 228, ; 227
	i32 285, ; 228
	i32 36, ; 229
	i32 67, ; 230
	i32 109, ; 231
	i32 414, ; 232
	i32 384, ; 233
	i32 366, ; 234
	i32 343, ; 235
	i32 229, ; 236
	i32 380, ; 237
	i32 99, ; 238
	i32 99, ; 239
	i32 11, ; 240
	i32 11, ; 241
	i32 271, ; 242
	i32 25, ; 243
	i32 128, ; 244
	i32 76, ; 245
	i32 263, ; 246
	i32 365, ; 247
	i32 109, ; 248
	i32 342, ; 249
	i32 354, ; 250
	i32 289, ; 251
	i32 287, ; 252
	i32 106, ; 253
	i32 407, ; 254
	i32 403, ; 255
	i32 2, ; 256
	i32 26, ; 257
	i32 242, ; 258
	i32 157, ; 259
	i32 333, ; 260
	i32 223, ; 261
	i32 199, ; 262
	i32 21, ; 263
	i32 336, ; 264
	i32 49, ; 265
	i32 43, ; 266
	i32 126, ; 267
	i32 232, ; 268
	i32 59, ; 269
	i32 409, ; 270
	i32 119, ; 271
	i32 202, ; 272
	i32 428, ; 273
	i32 292, ; 274
	i32 255, ; 275
	i32 241, ; 276
	i32 3, ; 277
	i32 421, ; 278
	i32 261, ; 279
	i32 427, ; 280
	i32 281, ; 281
	i32 38, ; 282
	i32 124, ; 283
	i32 330, ; 284
	i32 281, ; 285
	i32 330, ; 286
	i32 137, ; 287
	i32 149, ; 288
	i32 85, ; 289
	i32 90, ; 290
	i32 423, ; 291
	i32 265, ; 292
	i32 194, ; 293
	i32 436, ; 294
	i32 262, ; 295
	i32 420, ; 296
	i32 197, ; 297
	i32 318, ; 298
	i32 237, ; 299
	i32 248, ; 300
	i32 293, ; 301
	i32 184, ; 302
	i32 298, ; 303
	i32 263, ; 304
	i32 133, ; 305
	i32 371, ; 306
	i32 380, ; 307
	i32 96, ; 308
	i32 430, ; 309
	i32 3, ; 310
	i32 326, ; 311
	i32 402, ; 312
	i32 193, ; 313
	i32 105, ; 314
	i32 329, ; 315
	i32 33, ; 316
	i32 394, ; 317
	i32 154, ; 318
	i32 158, ; 319
	i32 155, ; 320
	i32 82, ; 321
	i32 219, ; 322
	i32 257, ; 323
	i32 363, ; 324
	i32 143, ; 325
	i32 87, ; 326
	i32 19, ; 327
	i32 258, ; 328
	i32 51, ; 329
	i32 377, ; 330
	i32 209, ; 331
	i32 227, ; 332
	i32 333, ; 333
	i32 61, ; 334
	i32 362, ; 335
	i32 54, ; 336
	i32 4, ; 337
	i32 97, ; 338
	i32 226, ; 339
	i32 376, ; 340
	i32 17, ; 341
	i32 155, ; 342
	i32 84, ; 343
	i32 415, ; 344
	i32 29, ; 345
	i32 346, ; 346
	i32 45, ; 347
	i32 370, ; 348
	i32 64, ; 349
	i32 411, ; 350
	i32 368, ; 351
	i32 66, ; 352
	i32 324, ; 353
	i32 172, ; 354
	i32 266, ; 355
	i32 1, ; 356
	i32 301, ; 357
	i32 47, ; 358
	i32 24, ; 359
	i32 234, ; 360
	i32 370, ; 361
	i32 385, ; 362
	i32 366, ; 363
	i32 165, ; 364
	i32 108, ; 365
	i32 429, ; 366
	i32 208, ; 367
	i32 12, ; 368
	i32 260, ; 369
	i32 63, ; 370
	i32 27, ; 371
	i32 23, ; 372
	i32 93, ; 373
	i32 168, ; 374
	i32 12, ; 375
	i32 305, ; 376
	i32 427, ; 377
	i32 381, ; 378
	i32 191, ; 379
	i32 29, ; 380
	i32 103, ; 381
	i32 222, ; 382
	i32 14, ; 383
	i32 126, ; 384
	i32 243, ; 385
	i32 275, ; 386
	i32 375, ; 387
	i32 91, ; 388
	i32 264, ; 389
	i32 201, ; 390
	i32 221, ; 391
	i32 9, ; 392
	i32 347, ; 393
	i32 86, ; 394
	i32 398, ; 395
	i32 406, ; 396
	i32 385, ; 397
	i32 254, ; 398
	i32 287, ; 399
	i32 395, ; 400
	i32 328, ; 401
	i32 71, ; 402
	i32 168, ; 403
	i32 1, ; 404
	i32 274, ; 405
	i32 5, ; 406
	i32 0, ; 407
	i32 328, ; 408
	i32 44, ; 409
	i32 27, ; 410
	i32 344, ; 411
	i32 411, ; 412
	i32 348, ; 413
	i32 302, ; 414
	i32 382, ; 415
	i32 158, ; 416
	i32 277, ; 417
	i32 112, ; 418
	i32 342, ; 419
	i32 338, ; 420
	i32 121, ; 421
	i32 424, ; 422
	i32 292, ; 423
	i32 233, ; 424
	i32 344, ; 425
	i32 159, ; 426
	i32 131, ; 427
	i32 297, ; 428
	i32 57, ; 429
	i32 408, ; 430
	i32 138, ; 431
	i32 83, ; 432
	i32 30, ; 433
	i32 244, ; 434
	i32 424, ; 435
	i32 10, ; 436
	i32 204, ; 437
	i32 294, ; 438
	i32 171, ; 439
	i32 353, ; 440
	i32 241, ; 441
	i32 353, ; 442
	i32 150, ; 443
	i32 94, ; 444
	i32 412, ; 445
	i32 254, ; 446
	i32 60, ; 447
	i32 189, ; 448
	i32 207, ; 449
	i32 352, ; 450
	i32 157, ; 451
	i32 198, ; 452
	i32 313, ; 453
	i32 183, ; 454
	i32 64, ; 455
	i32 88, ; 456
	i32 79, ; 457
	i32 47, ; 458
	i32 187, ; 459
	i32 143, ; 460
	i32 310, ; 461
	i32 201, ; 462
	i32 373, ; 463
	i32 303, ; 464
	i32 248, ; 465
	i32 74, ; 466
	i32 91, ; 467
	i32 433, ; 468
	i32 300, ; 469
	i32 135, ; 470
	i32 90, ; 471
	i32 286, ; 472
	i32 306, ; 473
	i32 379, ; 474
	i32 245, ; 475
	i32 394, ; 476
	i32 210, ; 477
	i32 372, ; 478
	i32 308, ; 479
	i32 112, ; 480
	i32 42, ; 481
	i32 159, ; 482
	i32 4, ; 483
	i32 103, ; 484
	i32 70, ; 485
	i32 60, ; 486
	i32 39, ; 487
	i32 401, ; 488
	i32 195, ; 489
	i32 235, ; 490
	i32 153, ; 491
	i32 56, ; 492
	i32 34, ; 493
	i32 406, ; 494
	i32 182, ; 495
	i32 189, ; 496
	i32 232, ; 497
	i32 21, ; 498
	i32 163, ; 499
	i32 203, ; 500
	i32 298, ; 501
	i32 176, ; 502
	i32 360, ; 503
	i32 319, ; 504
	i32 359, ; 505
	i32 369, ; 506
	i32 296, ; 507
	i32 376, ; 508
	i32 291, ; 509
	i32 140, ; 510
	i32 322, ; 511
	i32 184, ; 512
	i32 89, ; 513
	i32 147, ; 514
	i32 247, ; 515
	i32 214, ; 516
	i32 162, ; 517
	i32 419, ; 518
	i32 276, ; 519
	i32 358, ; 520
	i32 354, ; 521
	i32 6, ; 522
	i32 169, ; 523
	i32 31, ; 524
	i32 389, ; 525
	i32 383, ; 526
	i32 107, ; 527
	i32 257, ; 528
	i32 218, ; 529
	i32 320, ; 530
	i32 291, ; 531
	i32 181, ; 532
	i32 230, ; 533
	i32 284, ; 534
	i32 397, ; 535
	i32 167, ; 536
	i32 368, ; 537
	i32 258, ; 538
	i32 140, ; 539
	i32 316, ; 540
	i32 59, ; 541
	i32 144, ; 542
	i32 391, ; 543
	i32 426, ; 544
	i32 351, ; 545
	i32 81, ; 546
	i32 401, ; 547
	i32 220, ; 548
	i32 74, ; 549
	i32 130, ; 550
	i32 25, ; 551
	i32 7, ; 552
	i32 93, ; 553
	i32 402, ; 554
	i32 288, ; 555
	i32 137, ; 556
	i32 224, ; 557
	i32 113, ; 558
	i32 9, ; 559
	i32 218, ; 560
	i32 104, ; 561
	i32 367, ; 562
	i32 19, ; 563
	i32 256, ; 564
	i32 270, ; 565
	i32 357, ; 566
	i32 436, ; 567
	i32 432, ; 568
	i32 250, ; 569
	i32 33, ; 570
	i32 238, ; 571
	i32 46, ; 572
	i32 416, ; 573
	i32 381, ; 574
	i32 321, ; 575
	i32 30, ; 576
	i32 239, ; 577
	i32 57, ; 578
	i32 134, ; 579
	i32 114, ; 580
	i32 192, ; 581
	i32 293, ; 582
	i32 420, ; 583
	i32 334, ; 584
	i32 304, ; 585
	i32 55, ; 586
	i32 185, ; 587
	i32 6, ; 588
	i32 198, ; 589
	i32 77, ; 590
	i32 396, ; 591
	i32 217, ; 592
	i32 249, ; 593
	i32 378, ; 594
	i32 367, ; 595
	i32 111, ; 596
	i32 430, ; 597
	i32 213, ; 598
	i32 253, ; 599
	i32 383, ; 600
	i32 221, ; 601
	i32 102, ; 602
	i32 308, ; 603
	i32 322, ; 604
	i32 349, ; 605
	i32 170, ; 606
	i32 115, ; 607
	i32 316, ; 608
	i32 288, ; 609
	i32 243, ; 610
	i32 76, ; 611
	i32 299, ; 612
	i32 85, ; 613
	i32 301, ; 614
	i32 336, ; 615
	i32 236, ; 616
	i32 209, ; 617
	i32 337, ; 618
	i32 320, ; 619
	i32 278, ; 620
	i32 160, ; 621
	i32 2, ; 622
	i32 249, ; 623
	i32 24, ; 624
	i32 229, ; 625
	i32 32, ; 626
	i32 202, ; 627
	i32 117, ; 628
	i32 37, ; 629
	i32 16, ; 630
	i32 315, ; 631
	i32 52, ; 632
	i32 318, ; 633
	i32 356, ; 634
	i32 302, ; 635
	i32 417, ; 636
	i32 20, ; 637
	i32 223, ; 638
	i32 123, ; 639
	i32 154, ; 640
	i32 256, ; 641
	i32 346, ; 642
	i32 404, ; 643
	i32 131, ; 644
	i32 310, ; 645
	i32 238, ; 646
	i32 148, ; 647
	i32 365, ; 648
	i32 225, ; 649
	i32 120, ; 650
	i32 28, ; 651
	i32 132, ; 652
	i32 100, ; 653
	i32 134, ; 654
	i32 276, ; 655
	i32 153, ; 656
	i32 97, ; 657
	i32 125, ; 658
	i32 388, ; 659
	i32 226, ; 660
	i32 69, ; 661
	i32 417, ; 662
	i32 204, ; 663
	i32 428, ; 664
	i32 409, ; 665
	i32 72, ; 666
	i32 331, ; 667
	i32 261, ; 668
	i32 279, ; 669
	i32 312, ; 670
	i32 136, ; 671
	i32 124, ; 672
	i32 71, ; 673
	i32 378, ; 674
	i32 111, ; 675
	i32 425, ; 676
	i32 271, ; 677
	i32 196, ; 678
	i32 179, ; 679
	i32 152, ; 680
	i32 323, ; 681
	i32 339, ; 682
	i32 431, ; 683
	i32 374, ; 684
	i32 299, ; 685
	i32 405, ; 686
	i32 390, ; 687
	i32 118, ; 688
	i32 197, ; 689
	i32 247, ; 690
	i32 174, ; 691
	i32 340, ; 692
	i32 307, ; 693
	i32 127, ; 694
	i32 133, ; 695
	i32 180, ; 696
	i32 77, ; 697
	i32 46, ; 698
	i32 250, ; 699
	i32 73, ; 700
	i32 422, ; 701
	i32 426, ; 702
	i32 63, ; 703
	i32 395, ; 704
	i32 98, ; 705
	i32 84, ; 706
	i32 387, ; 707
	i32 324, ; 708
	i32 43, ; 709
	i32 61, ; 710
	i32 277, ; 711
	i32 425, ; 712
	i32 178, ; 713
	i32 37, ; 714
	i32 348, ; 715
	i32 431, ; 716
	i32 40, ; 717
	i32 240, ; 718
	i32 305, ; 719
	i32 160, ; 720
	i32 211, ; 721
	i32 98, ; 722
	i32 212, ; 723
	i32 245, ; 724
	i32 180, ; 725
	i32 361, ; 726
	i32 215, ; 727
	i32 362, ; 728
	i32 135, ; 729
	i32 20, ; 730
	i32 65, ; 731
	i32 311, ; 732
	i32 125, ; 733
	i32 75, ; 734
	i32 416, ; 735
	i32 269, ; 736
	i32 164, ; 737
	i32 156, ; 738
	i32 311, ; 739
	i32 398, ; 740
	i32 5, ; 741
	i32 319, ; 742
	i32 389, ; 743
	i32 49, ; 744
	i32 283, ; 745
	i32 312, ; 746
	i32 144, ; 747
	i32 139, ; 748
	i32 100, ; 749
	i32 418, ; 750
	i32 186, ; 751
	i32 123, ; 752
	i32 120, ; 753
	i32 413, ; 754
	i32 142, ; 755
	i32 39, ; 756
	i32 68, ; 757
	i32 41, ; 758
	i32 351, ; 759
	i32 413, ; 760
	i32 361, ; 761
	i32 164, ; 762
	i32 206, ; 763
	i32 216, ; 764
	i32 73, ; 765
	i32 375, ; 766
	i32 325, ; 767
	i32 165, ; 768
	i32 182, ; 769
	i32 127, ; 770
	i32 255, ; 771
	i32 304, ; 772
	i32 68, ; 773
	i32 169, ; 774
	i32 382, ; 775
	i32 208, ; 776
	i32 192, ; 777
	i32 386, ; 778
	i32 200, ; 779
	i32 268, ; 780
	i32 242, ; 781
	i32 212, ; 782
	i32 173, ; 783
	i32 191, ; 784
	i32 275, ; 785
	i32 151, ; 786
	i32 45, ; 787
	i32 108, ; 788
	i32 48, ; 789
	i32 96, ; 790
	i32 31, ; 791
	i32 193, ; 792
	i32 23, ; 793
	i32 393, ; 794
	i32 166, ; 795
	i32 22, ; 796
	i32 355, ; 797
	i32 138, ; 798
	i32 78, ; 799
	i32 332, ; 800
	i32 54, ; 801
	i32 268, ; 802
	i32 273, ; 803
	i32 10, ; 804
	i32 388, ; 805
	i32 231, ; 806
	i32 435, ; 807
	i32 272, ; 808
	i32 259, ; 809
	i32 16, ; 810
	i32 339, ; 811
	i32 139, ; 812
	i32 403, ; 813
	i32 422, ; 814
	i32 13, ; 815
	i32 15, ; 816
	i32 122, ; 817
	i32 87, ; 818
	i32 149, ; 819
	i32 22, ; 820
	i32 34, ; 821
	i32 79, ; 822
	i32 317, ; 823
	i32 392, ; 824
	i32 297, ; 825
	i32 332, ; 826
	i32 147, ; 827
	i32 414, ; 828
	i32 80, ; 829
	i32 315, ; 830
	i32 174, ; 831
	i32 220, ; 832
	i32 224, ; 833
	i32 327, ; 834
	i32 42, ; 835
	i32 26, ; 836
	i32 338, ; 837
	i32 270, ; 838
	i32 267, ; 839
	i32 107, ; 840
	i32 207, ; 841
	i32 110, ; 842
	i32 199, ; 843
	i32 372, ; 844
	i32 359, ; 845
	i32 7, ; 846
	i32 341, ; 847
	i32 360, ; 848
	i32 397, ; 849
	i32 350, ; 850
	i32 300, ; 851
	i32 377, ; 852
	i32 44, ; 853
	i32 345, ; 854
	i32 161, ; 855
	i32 148, ; 856
	i32 326, ; 857
	i32 236, ; 858
	i32 272, ; 859
	i32 423, ; 860
	i32 38, ; 861
	i32 15, ; 862
	i32 429, ; 863
	i32 175, ; 864
	i32 146, ; 865
	i32 222, ; 866
	i32 8, ; 867
	i32 253, ; 868
	i32 274, ; 869
	i32 130, ; 870
	i32 321, ; 871
	i32 290, ; 872
	i32 94 ; 873
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
