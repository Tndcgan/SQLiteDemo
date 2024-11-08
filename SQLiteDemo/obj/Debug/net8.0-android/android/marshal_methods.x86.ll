; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [319 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [632 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 13198555, ; 2: SQLiteDemo.dll => 0xc964db => 0
	i32 15721112, ; 3: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 236
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 270
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 145
	i32 53857724, ; 9: ca/Microsoft.Maui.Controls.resources => 0x335cdbc => 279
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 188
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 254
	i32 113429830, ; 15: zh-HK/Microsoft.Maui.Controls.resources => 0x6c2cd46 => 309
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 254
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 19: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 274
	i32 142721839, ; 20: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 21: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 22: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 23: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 210
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 256
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 308
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 309
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 208
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 32: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 230
	i32 230752869, ; 33: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 34: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 261689757, ; 37: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 213
	i32 276479776, ; 38: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 39: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 232
	i32 280482487, ; 40: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 229
	i32 280992041, ; 41: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 280
	i32 291076382, ; 42: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 298918909, ; 43: System.Net.Ping.dll => 0x11d123fd => 69
	i32 318968648, ; 44: Xamarin.AndroidX.Activity.dll => 0x13031348 => 199
	i32 321597661, ; 45: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 46: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 293
	i32 342366114, ; 47: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 231
	i32 347068432, ; 48: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 193
	i32 356389973, ; 49: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 292
	i32 357576608, ; 50: cs/Microsoft.Maui.Controls.resources => 0x15502fa0 => 280
	i32 360082299, ; 51: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 52: System.IO.Pipes => 0x15ebe147 => 55
	i32 374914964, ; 53: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 54: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 379916513, ; 55: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 56: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 57: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 58: _Microsoft.Android.Resource.Designer => 0x17969339 => 315
	i32 403441872, ; 59: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 60: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 304
	i32 441335492, ; 61: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 214
	i32 442565967, ; 62: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 63: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 227
	i32 451504562, ; 64: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 65: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 459347974, ; 66: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 67: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 68: System.dll => 0x1bff388e => 164
	i32 476646585, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 229
	i32 486930444, ; 70: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 242
	i32 498788369, ; 71: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 72: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 291
	i32 503918385, ; 73: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 285
	i32 513247710, ; 74: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 182
	i32 526420162, ; 75: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527168573, ; 76: hi/Microsoft.Maui.Controls.resources => 0x1f6bf43d => 288
	i32 527452488, ; 77: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 274
	i32 530272170, ; 78: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 79: Microsoft.Extensions.Logging => 0x20216150 => 178
	i32 540030774, ; 80: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 81: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 82: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 83: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 84: Jsr305Binding => 0x213954e7 => 267
	i32 569601784, ; 85: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 265
	i32 577335427, ; 86: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 87: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 299
	i32 601371474, ; 88: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 89: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 90: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 627609679, ; 91: Xamarin.AndroidX.CustomView => 0x2568904f => 219
	i32 639843206, ; 92: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 225
	i32 643868501, ; 93: System.Net => 0x2660a755 => 81
	i32 662205335, ; 94: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 95: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 261
	i32 666292255, ; 96: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 206
	i32 672442732, ; 97: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 98: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 99: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 279
	i32 690569205, ; 100: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 101: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 276
	i32 693804605, ; 102: System.Windows => 0x295a9e3d => 154
	i32 699345723, ; 103: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 104: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 271
	i32 700358131, ; 105: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 106: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 294
	i32 709557578, ; 107: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 282
	i32 720511267, ; 108: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 275
	i32 722857257, ; 109: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 110: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 748832960, ; 111: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 191
	i32 752232764, ; 112: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 113: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 196
	i32 759454413, ; 114: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 115: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 116: System.IO.Compression => 0x2e394f87 => 46
	i32 789151979, ; 117: Microsoft.Extensions.Options => 0x2f0980eb => 181
	i32 790371945, ; 118: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 220
	i32 804715423, ; 119: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 120: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 234
	i32 823281589, ; 121: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 122: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 123: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 124: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 125: Xamarin.AndroidX.Print => 0x3246f6cd => 247
	i32 870878177, ; 126: ar/Microsoft.Maui.Controls.resources => 0x33e88be1 => 278
	i32 873119928, ; 127: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 128: System.Globalization.dll => 0x34505120 => 42
	i32 878954865, ; 129: System.Net.Http.Json => 0x3463c971 => 63
	i32 904024072, ; 130: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 131: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 926902833, ; 132: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 306
	i32 928116545, ; 133: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 270
	i32 952186615, ; 134: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 135: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 275
	i32 966729478, ; 136: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 268
	i32 967690846, ; 137: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 231
	i32 975236339, ; 138: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 139: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 140: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 141: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 142: System.Collections.dll => 0x3b2c715c => 12
	i32 993161700, ; 143: zh-Hans/Microsoft.Maui.Controls.resources => 0x3b3271e4 => 310
	i32 994442037, ; 144: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 994547685, ; 145: es/Microsoft.Maui.Controls.resources => 0x3b4797e5 => 284
	i32 1001831731, ; 146: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 147: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 251
	i32 1019214401, ; 148: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 149: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 177
	i32 1029334545, ; 150: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 281
	i32 1031528504, ; 151: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 269
	i32 1035644815, ; 152: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 204
	i32 1036536393, ; 153: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 154: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 155: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 238
	i32 1067306892, ; 156: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 157: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 158: Xamarin.Kotlin.StdLib => 0x409e66d8 => 272
	i32 1098259244, ; 159: System => 0x41761b2c => 164
	i32 1121599056, ; 160: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 237
	i32 1127624469, ; 161: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 180
	i32 1149092582, ; 162: Xamarin.AndroidX.Window => 0x447dc2e6 => 264
	i32 1170634674, ; 163: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 164: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 260
	i32 1178241025, ; 165: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 245
	i32 1178797549, ; 166: fi/Microsoft.Maui.Controls.resources => 0x464305ed => 285
	i32 1203215381, ; 167: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 298
	i32 1204270330, ; 168: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 206
	i32 1208641965, ; 169: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 170: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 171: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 296
	i32 1243150071, ; 172: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 265
	i32 1253011324, ; 173: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1264511973, ; 174: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 255
	i32 1267360935, ; 175: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 259
	i32 1273260888, ; 176: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 211
	i32 1275534314, ; 177: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 276
	i32 1278448581, ; 178: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 203
	i32 1292207520, ; 179: SQLitePCLRaw.core.dll => 0x4d0585a0 => 192
	i32 1293217323, ; 180: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 222
	i32 1309188875, ; 181: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 182: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 264
	i32 1324164729, ; 183: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 184: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 185: System.IO => 0x514d38cd => 57
	i32 1376866003, ; 186: Xamarin.AndroidX.SavedState => 0x52114ed3 => 251
	i32 1379779777, ; 187: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 188: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 189: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 215
	i32 1408764838, ; 190: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 191: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 192: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1434145427, ; 193: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 194: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 268
	i32 1439761251, ; 195: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 196: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 197: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 198: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 199: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461234159, ; 200: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 201: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 202: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 203: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 205
	i32 1470490898, ; 204: Microsoft.Extensions.Primitives => 0x57a5e912 => 182
	i32 1479771757, ; 205: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 206: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 207: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 208: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 252
	i32 1493001747, ; 209: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 288
	i32 1514721132, ; 210: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 283
	i32 1536373174, ; 211: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1543031311, ; 212: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 213: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 214: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 215: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 303
	i32 1554762148, ; 216: fr/Microsoft.Maui.Controls.resources => 0x5cabc9a4 => 286
	i32 1565862583, ; 217: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 218: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 219: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 220: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1580413037, ; 221: sv/Microsoft.Maui.Controls.resources => 0x5e33306d => 304
	i32 1582372066, ; 222: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 221
	i32 1591080825, ; 223: zh-Hant/Microsoft.Maui.Controls.resources => 0x5ed5f779 => 311
	i32 1592978981, ; 224: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1597949149, ; 225: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 269
	i32 1601112923, ; 226: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1603525486, ; 227: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x5f93db6e => 312
	i32 1604827217, ; 228: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1618516317, ; 229: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 230: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 241
	i32 1622358360, ; 231: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 232: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 263
	i32 1635184631, ; 233: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 225
	i32 1636350590, ; 234: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 218
	i32 1639515021, ; 235: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 236: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 237: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 238: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 239: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 257
	i32 1658251792, ; 240: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 266
	i32 1670060433, ; 241: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 213
	i32 1675553242, ; 242: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 243: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1678508291, ; 244: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 245: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 246: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 247: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 248: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 273
	i32 1701541528, ; 249: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1711441057, ; 250: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 193
	i32 1720223769, ; 251: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 234
	i32 1726116996, ; 252: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 253: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 254: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 209
	i32 1736233607, ; 255: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 301
	i32 1744735666, ; 256: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 257: Mono.Android.Export => 0x6816ab6a => 169
	i32 1750313021, ; 258: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 259: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 260: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 261: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 262: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 256
	i32 1770582343, ; 263: Microsoft.Extensions.Logging.dll => 0x6988f147 => 178
	i32 1776026572, ; 264: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 265: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1780572499, ; 266: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1788241197, ; 267: Xamarin.AndroidX.Fragment => 0x6a96652d => 227
	i32 1808609942, ; 268: Xamarin.AndroidX.Loader => 0x6bcd3296 => 241
	i32 1809966115, ; 269: nb/Microsoft.Maui.Controls.resources => 0x6be1e423 => 296
	i32 1813058853, ; 270: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 272
	i32 1813201214, ; 271: Xamarin.Google.Android.Material => 0x6c13413e => 266
	i32 1818569960, ; 272: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 246
	i32 1818787751, ; 273: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1821794637, ; 274: hu/Microsoft.Maui.Controls.resources => 0x6c96614d => 290
	i32 1824175904, ; 275: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 276: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1827303595, ; 277: Microsoft.VisualStudio.DesignTools.TapContract => 0x6cea70ab => 314
	i32 1828688058, ; 278: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 179
	i32 1842015223, ; 279: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 307
	i32 1847515442, ; 280: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 196
	i32 1858542181, ; 281: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 282: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1879696579, ; 283: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 284: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 207
	i32 1885918049, ; 285: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0x7068d361 => 314
	i32 1888955245, ; 286: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 287: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 288: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 289: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 290: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 291: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 292: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1960264639, ; 293: ja/Microsoft.Maui.Controls.resources => 0x74d743bf => 293
	i32 1961813231, ; 294: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 253
	i32 1968388702, ; 295: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 174
	i32 1983156543, ; 296: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 273
	i32 1985761444, ; 297: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 198
	i32 2011961780, ; 298: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2014344398, ; 299: hr/Microsoft.Maui.Controls.resources => 0x781074ce => 289
	i32 2019465201, ; 300: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 238
	i32 2025202353, ; 301: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 278
	i32 2031763787, ; 302: Xamarin.Android.Glide => 0x791a414b => 195
	i32 2043674646, ; 303: it/Microsoft.Maui.Controls.resources => 0x79d00016 => 292
	i32 2045470958, ; 304: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 305: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 233
	i32 2060060697, ; 306: System.Windows.dll => 0x7aca0819 => 154
	i32 2070888862, ; 307: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 308: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 309: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2103459038, ; 310: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 194
	i32 2127167465, ; 311: System.Console => 0x7ec9ffe9 => 20
	i32 2130563989, ; 312: SQLiteDemo => 0x7efdd395 => 0
	i32 2142473426, ; 313: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 314: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 315: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2150663486, ; 316: ko/Microsoft.Maui.Controls.resources => 0x8030853e => 294
	i32 2159891885, ; 317: Microsoft.Maui => 0x80bd55ad => 186
	i32 2165051842, ; 318: ro/Microsoft.Maui.Controls.resources => 0x810c11c2 => 301
	i32 2181898931, ; 319: Microsoft.Extensions.Options.dll => 0x820d22b3 => 181
	i32 2192057212, ; 320: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 179
	i32 2193016926, ; 321: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 322: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 277
	i32 2201231467, ; 323: System.Net.Http => 0x8334206b => 64
	i32 2217644978, ; 324: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 260
	i32 2222056684, ; 325: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 326: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 242
	i32 2252106437, ; 327: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 328: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 329: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 330: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 175
	i32 2267999099, ; 331: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 197
	i32 2270573516, ; 332: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 286
	i32 2279755925, ; 333: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 249
	i32 2289298199, ; 334: th/Microsoft.Maui.Controls.resources => 0x8873eb17 => 305
	i32 2293034957, ; 335: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 336: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 337: System.Net.Mail => 0x88ffe49e => 66
	i32 2305521784, ; 338: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 339: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 201
	i32 2320631194, ; 340: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 341: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 342: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 343: System.Net.Primitives => 0x8c40e0db => 70
	i32 2368005991, ; 344: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2369760409, ; 345: tr/Microsoft.Maui.Controls.resources => 0x8d3fac99 => 306
	i32 2371007202, ; 346: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 174
	i32 2378619854, ; 347: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 348: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2401565422, ; 349: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 350: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 224
	i32 2409983638, ; 351: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x8fa56e96 => 313
	i32 2421380589, ; 352: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2421992093, ; 353: nl/Microsoft.Maui.Controls.resources => 0x905caa9d => 297
	i32 2423080555, ; 354: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 211
	i32 2435356389, ; 355: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 356: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 357: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 358: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 359: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465273461, ; 360: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 191
	i32 2465532216, ; 361: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 214
	i32 2471841756, ; 362: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 363: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 364: Microsoft.Maui.Controls => 0x93dba8a1 => 184
	i32 2483903535, ; 365: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 366: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 367: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 368: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 369: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 236
	i32 2520433370, ; 370: sk/Microsoft.Maui.Controls.resources => 0x963ac2da => 303
	i32 2522472828, ; 371: Xamarin.Android.Glide.dll => 0x9659e17c => 195
	i32 2538310050, ; 372: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2562349572, ; 373: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 374: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 375: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 237
	i32 2581819634, ; 376: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 259
	i32 2585220780, ; 377: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 378: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 379: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2605712449, ; 380: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 277
	i32 2615233544, ; 381: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 228
	i32 2616218305, ; 382: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 180
	i32 2617129537, ; 383: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 384: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 385: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 218
	i32 2624644809, ; 386: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 223
	i32 2627185994, ; 387: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 388: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 389: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 232
	i32 2663391936, ; 390: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 197
	i32 2663698177, ; 391: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 392: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 393: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 394: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 395: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 396: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 397: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 257
	i32 2715334215, ; 398: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 399: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 400: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 401: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 402: Xamarin.AndroidX.Activity => 0xa2e0939b => 199
	i32 2735172069, ; 403: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 404: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 205
	i32 2740948882, ; 405: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2748088231, ; 406: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2758225723, ; 407: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 185
	i32 2764765095, ; 408: Microsoft.Maui.dll => 0xa4caf7a7 => 186
	i32 2765824710, ; 409: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2768457651, ; 410: PropertyChanged => 0xa5034fb3 => 189
	i32 2770495804, ; 411: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 271
	i32 2778768386, ; 412: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 262
	i32 2779977773, ; 413: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 250
	i32 2788224221, ; 414: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 228
	i32 2801831435, ; 415: Microsoft.Maui.Graphics => 0xa7008e0b => 188
	i32 2802068195, ; 416: uk/Microsoft.Maui.Controls.resources => 0xa7042ae3 => 307
	i32 2803228030, ; 417: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 418: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 284
	i32 2810250172, ; 419: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 215
	i32 2819470561, ; 420: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 421: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 422: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 250
	i32 2824502124, ; 423: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 424: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 297
	i32 2838993487, ; 425: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 239
	i32 2849599387, ; 426: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 427: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 262
	i32 2855708567, ; 428: Xamarin.AndroidX.Transition => 0xaa36a797 => 258
	i32 2857259519, ; 429: el/Microsoft.Maui.Controls.resources => 0xaa4e51ff => 283
	i32 2861098320, ; 430: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 431: Microsoft.Maui.Essentials => 0xaa8a4878 => 187
	i32 2870099610, ; 432: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 200
	i32 2875164099, ; 433: Jsr305Binding.dll => 0xab5f85c3 => 267
	i32 2875220617, ; 434: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2883495834, ; 435: ru/Microsoft.Maui.Controls.resources => 0xabdea79a => 302
	i32 2884993177, ; 436: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 226
	i32 2887636118, ; 437: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 438: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 439: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 440: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 441: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 442: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2916838712, ; 443: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 263
	i32 2919462931, ; 444: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 445: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 202
	i32 2936416060, ; 446: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 447: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 448: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 449: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 450: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 451: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 452: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 222
	i32 2987532451, ; 453: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 253
	i32 2996846495, ; 454: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 235
	i32 3016983068, ; 455: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 255
	i32 3023353419, ; 456: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 457: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 230
	i32 3038032645, ; 458: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 315
	i32 3056245963, ; 459: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 252
	i32 3057625584, ; 460: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 243
	i32 3059408633, ; 461: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 462: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3075834255, ; 463: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 464: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 290
	i32 3090735792, ; 465: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 466: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 467: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 468: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 469: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 470: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 471: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3147165239, ; 472: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3148237826, ; 473: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 474: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 475: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3178803400, ; 476: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 244
	i32 3192346100, ; 477: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 478: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 479: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 480: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 481: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 221
	i32 3220365878, ; 482: System.Threading => 0xbff2e236 => 148
	i32 3226221578, ; 483: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3251039220, ; 484: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 485: Xamarin.AndroidX.CardView => 0xc235e84d => 209
	i32 3265493905, ; 486: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 487: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 488: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 489: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 490: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3286872994, ; 491: SQLite-net.dll => 0xc3e9b3a2 => 190
	i32 3290767353, ; 492: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 493: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 494: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3316684772, ; 495: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 496: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 219
	i32 3317144872, ; 497: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 498: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 207
	i32 3345895724, ; 499: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 248
	i32 3346324047, ; 500: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 245
	i32 3358260929, ; 501: System.Text.Json => 0xc82afec1 => 137
	i32 3360279109, ; 502: SQLitePCLRaw.core => 0xc849ca45 => 192
	i32 3362336904, ; 503: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 200
	i32 3362522851, ; 504: Xamarin.AndroidX.Core => 0xc86c06e3 => 216
	i32 3366347497, ; 505: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 506: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 249
	i32 3395150330, ; 507: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 508: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 509: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 220
	i32 3428513518, ; 510: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 176
	i32 3429136800, ; 511: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 512: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 513: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 223
	i32 3445260447, ; 514: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 515: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 183
	i32 3463511458, ; 516: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 289
	i32 3471940407, ; 517: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 518: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 519: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 302
	i32 3485117614, ; 520: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 521: System.Transactions => 0xcfd0c798 => 150
	i32 3493954962, ; 522: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 212
	i32 3509114376, ; 523: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 524: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 525: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 526: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3542658132, ; 527: vi/Microsoft.Maui.Controls.resources => 0xd328ac54 => 308
	i32 3560100363, ; 528: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 529: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3596930546, ; 530: de/Microsoft.Maui.Controls.resources => 0xd664cdf2 => 282
	i32 3597029428, ; 531: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 198
	i32 3598340787, ; 532: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 533: System.Linq.dll => 0xd715a361 => 61
	i32 3623444314, ; 534: da/Microsoft.Maui.Controls.resources => 0xd7f95f5a => 281
	i32 3624195450, ; 535: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 536: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 247
	i32 3633644679, ; 537: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 202
	i32 3638274909, ; 538: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 539: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 233
	i32 3643854240, ; 540: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 244
	i32 3645089577, ; 541: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3647796983, ; 542: pt-BR/Microsoft.Maui.Controls.resources => 0xd96cf6f7 => 299
	i32 3657292374, ; 543: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 175
	i32 3660523487, ; 544: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3662115805, ; 545: he/Microsoft.Maui.Controls.resources => 0xda4773dd => 287
	i32 3672681054, ; 546: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3676670898, ; 547: Microsoft.Maui.Controls.HotReload.Forms => 0xdb258bb2 => 312
	i32 3682565725, ; 548: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 208
	i32 3684561358, ; 549: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 212
	i32 3686075795, ; 550: ms/Microsoft.Maui.Controls.resources => 0xdbb50d93 => 295
	i32 3697841164, ; 551: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 311
	i32 3700866549, ; 552: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 553: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 217
	i32 3716563718, ; 554: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 555: Xamarin.AndroidX.Annotation => 0xdda814c6 => 201
	i32 3724971120, ; 556: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 243
	i32 3732100267, ; 557: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 558: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 559: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 560: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3754567612, ; 561: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 194
	i32 3786282454, ; 562: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 210
	i32 3792276235, ; 563: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 564: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 183
	i32 3802395368, ; 565: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 566: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 567: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 568: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 569: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 177
	i32 3844307129, ; 570: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 571: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 572: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 573: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 574: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3876362041, ; 575: SQLite-net => 0xe70c9739 => 190
	i32 3885497537, ; 576: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 577: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 258
	i32 3888767677, ; 578: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 248
	i32 3889960447, ; 579: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 310
	i32 3896106733, ; 580: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 581: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 216
	i32 3901907137, ; 582: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 583: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 584: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 261
	i32 3928044579, ; 585: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 586: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 587: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 246
	i32 3945713374, ; 588: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 589: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 590: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 204
	i32 3959773229, ; 591: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 235
	i32 3980434154, ; 592: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 305
	i32 3987592930, ; 593: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 287
	i32 4003436829, ; 594: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 595: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 203
	i32 4025784931, ; 596: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 597: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 185
	i32 4054681211, ; 598: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 599: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4070331268, ; 600: id/Microsoft.Maui.Controls.resources => 0xf29c5384 => 291
	i32 4073602200, ; 601: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 602: Microsoft.Maui.Essentials.dll => 0xf40add04 => 187
	i32 4099507663, ; 603: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 604: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 605: Xamarin.AndroidX.Emoji2 => 0xf479582c => 224
	i32 4102112229, ; 606: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 300
	i32 4119206479, ; 607: pl/Microsoft.Maui.Controls.resources => 0xf5861a4f => 298
	i32 4125707920, ; 608: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 295
	i32 4126470640, ; 609: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 176
	i32 4127667938, ; 610: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 611: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 612: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4151237749, ; 613: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 614: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 615: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 616: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 617: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 618: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 240
	i32 4182880526, ; 619: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0xf951b10e => 313
	i32 4184000013, ; 620: PropertyChanged.dll => 0xf962c60d => 189
	i32 4185676441, ; 621: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 622: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 623: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4234116406, ; 624: pt/Microsoft.Maui.Controls.resources => 0xfc5f7d36 => 300
	i32 4256097574, ; 625: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 217
	i32 4258378803, ; 626: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 239
	i32 4260525087, ; 627: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 628: Microsoft.Maui.Controls.dll => 0xfea12dee => 184
	i32 4274976490, ; 629: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 630: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 240
	i32 4294763496 ; 631: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 226
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [632 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 0, ; 2
	i32 108, ; 3
	i32 236, ; 4
	i32 270, ; 5
	i32 48, ; 6
	i32 80, ; 7
	i32 145, ; 8
	i32 279, ; 9
	i32 30, ; 10
	i32 124, ; 11
	i32 188, ; 12
	i32 102, ; 13
	i32 254, ; 14
	i32 309, ; 15
	i32 107, ; 16
	i32 254, ; 17
	i32 139, ; 18
	i32 274, ; 19
	i32 77, ; 20
	i32 124, ; 21
	i32 13, ; 22
	i32 210, ; 23
	i32 132, ; 24
	i32 256, ; 25
	i32 151, ; 26
	i32 308, ; 27
	i32 309, ; 28
	i32 18, ; 29
	i32 208, ; 30
	i32 26, ; 31
	i32 230, ; 32
	i32 1, ; 33
	i32 59, ; 34
	i32 42, ; 35
	i32 91, ; 36
	i32 213, ; 37
	i32 147, ; 38
	i32 232, ; 39
	i32 229, ; 40
	i32 280, ; 41
	i32 54, ; 42
	i32 69, ; 43
	i32 199, ; 44
	i32 83, ; 45
	i32 293, ; 46
	i32 231, ; 47
	i32 193, ; 48
	i32 292, ; 49
	i32 280, ; 50
	i32 131, ; 51
	i32 55, ; 52
	i32 149, ; 53
	i32 74, ; 54
	i32 145, ; 55
	i32 62, ; 56
	i32 146, ; 57
	i32 315, ; 58
	i32 165, ; 59
	i32 304, ; 60
	i32 214, ; 61
	i32 12, ; 62
	i32 227, ; 63
	i32 125, ; 64
	i32 152, ; 65
	i32 113, ; 66
	i32 166, ; 67
	i32 164, ; 68
	i32 229, ; 69
	i32 242, ; 70
	i32 84, ; 71
	i32 291, ; 72
	i32 285, ; 73
	i32 182, ; 74
	i32 150, ; 75
	i32 288, ; 76
	i32 274, ; 77
	i32 60, ; 78
	i32 178, ; 79
	i32 51, ; 80
	i32 103, ; 81
	i32 114, ; 82
	i32 40, ; 83
	i32 267, ; 84
	i32 265, ; 85
	i32 120, ; 86
	i32 299, ; 87
	i32 52, ; 88
	i32 44, ; 89
	i32 119, ; 90
	i32 219, ; 91
	i32 225, ; 92
	i32 81, ; 93
	i32 136, ; 94
	i32 261, ; 95
	i32 206, ; 96
	i32 8, ; 97
	i32 73, ; 98
	i32 279, ; 99
	i32 155, ; 100
	i32 276, ; 101
	i32 154, ; 102
	i32 92, ; 103
	i32 271, ; 104
	i32 45, ; 105
	i32 294, ; 106
	i32 282, ; 107
	i32 275, ; 108
	i32 109, ; 109
	i32 129, ; 110
	i32 191, ; 111
	i32 25, ; 112
	i32 196, ; 113
	i32 72, ; 114
	i32 55, ; 115
	i32 46, ; 116
	i32 181, ; 117
	i32 220, ; 118
	i32 22, ; 119
	i32 234, ; 120
	i32 86, ; 121
	i32 43, ; 122
	i32 160, ; 123
	i32 71, ; 124
	i32 247, ; 125
	i32 278, ; 126
	i32 3, ; 127
	i32 42, ; 128
	i32 63, ; 129
	i32 16, ; 130
	i32 53, ; 131
	i32 306, ; 132
	i32 270, ; 133
	i32 105, ; 134
	i32 275, ; 135
	i32 268, ; 136
	i32 231, ; 137
	i32 34, ; 138
	i32 158, ; 139
	i32 85, ; 140
	i32 32, ; 141
	i32 12, ; 142
	i32 310, ; 143
	i32 51, ; 144
	i32 284, ; 145
	i32 56, ; 146
	i32 251, ; 147
	i32 36, ; 148
	i32 177, ; 149
	i32 281, ; 150
	i32 269, ; 151
	i32 204, ; 152
	i32 35, ; 153
	i32 58, ; 154
	i32 238, ; 155
	i32 173, ; 156
	i32 17, ; 157
	i32 272, ; 158
	i32 164, ; 159
	i32 237, ; 160
	i32 180, ; 161
	i32 264, ; 162
	i32 153, ; 163
	i32 260, ; 164
	i32 245, ; 165
	i32 285, ; 166
	i32 298, ; 167
	i32 206, ; 168
	i32 29, ; 169
	i32 52, ; 170
	i32 296, ; 171
	i32 265, ; 172
	i32 5, ; 173
	i32 255, ; 174
	i32 259, ; 175
	i32 211, ; 176
	i32 276, ; 177
	i32 203, ; 178
	i32 192, ; 179
	i32 222, ; 180
	i32 85, ; 181
	i32 264, ; 182
	i32 61, ; 183
	i32 112, ; 184
	i32 57, ; 185
	i32 251, ; 186
	i32 99, ; 187
	i32 19, ; 188
	i32 215, ; 189
	i32 111, ; 190
	i32 101, ; 191
	i32 102, ; 192
	i32 104, ; 193
	i32 268, ; 194
	i32 71, ; 195
	i32 38, ; 196
	i32 32, ; 197
	i32 103, ; 198
	i32 73, ; 199
	i32 9, ; 200
	i32 123, ; 201
	i32 46, ; 202
	i32 205, ; 203
	i32 182, ; 204
	i32 9, ; 205
	i32 43, ; 206
	i32 4, ; 207
	i32 252, ; 208
	i32 288, ; 209
	i32 283, ; 210
	i32 31, ; 211
	i32 138, ; 212
	i32 92, ; 213
	i32 93, ; 214
	i32 303, ; 215
	i32 286, ; 216
	i32 49, ; 217
	i32 141, ; 218
	i32 112, ; 219
	i32 140, ; 220
	i32 304, ; 221
	i32 221, ; 222
	i32 311, ; 223
	i32 115, ; 224
	i32 269, ; 225
	i32 157, ; 226
	i32 312, ; 227
	i32 76, ; 228
	i32 79, ; 229
	i32 241, ; 230
	i32 37, ; 231
	i32 263, ; 232
	i32 225, ; 233
	i32 218, ; 234
	i32 64, ; 235
	i32 138, ; 236
	i32 15, ; 237
	i32 116, ; 238
	i32 257, ; 239
	i32 266, ; 240
	i32 213, ; 241
	i32 48, ; 242
	i32 70, ; 243
	i32 80, ; 244
	i32 126, ; 245
	i32 94, ; 246
	i32 121, ; 247
	i32 273, ; 248
	i32 26, ; 249
	i32 193, ; 250
	i32 234, ; 251
	i32 97, ; 252
	i32 28, ; 253
	i32 209, ; 254
	i32 301, ; 255
	i32 149, ; 256
	i32 169, ; 257
	i32 4, ; 258
	i32 98, ; 259
	i32 33, ; 260
	i32 93, ; 261
	i32 256, ; 262
	i32 178, ; 263
	i32 21, ; 264
	i32 41, ; 265
	i32 170, ; 266
	i32 227, ; 267
	i32 241, ; 268
	i32 296, ; 269
	i32 272, ; 270
	i32 266, ; 271
	i32 246, ; 272
	i32 2, ; 273
	i32 290, ; 274
	i32 134, ; 275
	i32 111, ; 276
	i32 314, ; 277
	i32 179, ; 278
	i32 307, ; 279
	i32 196, ; 280
	i32 58, ; 281
	i32 95, ; 282
	i32 39, ; 283
	i32 207, ; 284
	i32 314, ; 285
	i32 25, ; 286
	i32 94, ; 287
	i32 89, ; 288
	i32 99, ; 289
	i32 10, ; 290
	i32 87, ; 291
	i32 100, ; 292
	i32 293, ; 293
	i32 253, ; 294
	i32 174, ; 295
	i32 273, ; 296
	i32 198, ; 297
	i32 7, ; 298
	i32 289, ; 299
	i32 238, ; 300
	i32 278, ; 301
	i32 195, ; 302
	i32 292, ; 303
	i32 88, ; 304
	i32 233, ; 305
	i32 154, ; 306
	i32 33, ; 307
	i32 116, ; 308
	i32 82, ; 309
	i32 194, ; 310
	i32 20, ; 311
	i32 0, ; 312
	i32 11, ; 313
	i32 162, ; 314
	i32 3, ; 315
	i32 294, ; 316
	i32 186, ; 317
	i32 301, ; 318
	i32 181, ; 319
	i32 179, ; 320
	i32 84, ; 321
	i32 277, ; 322
	i32 64, ; 323
	i32 260, ; 324
	i32 143, ; 325
	i32 242, ; 326
	i32 157, ; 327
	i32 41, ; 328
	i32 117, ; 329
	i32 175, ; 330
	i32 197, ; 331
	i32 286, ; 332
	i32 249, ; 333
	i32 305, ; 334
	i32 131, ; 335
	i32 75, ; 336
	i32 66, ; 337
	i32 172, ; 338
	i32 201, ; 339
	i32 143, ; 340
	i32 106, ; 341
	i32 151, ; 342
	i32 70, ; 343
	i32 156, ; 344
	i32 306, ; 345
	i32 174, ; 346
	i32 121, ; 347
	i32 127, ; 348
	i32 152, ; 349
	i32 224, ; 350
	i32 313, ; 351
	i32 141, ; 352
	i32 297, ; 353
	i32 211, ; 354
	i32 20, ; 355
	i32 14, ; 356
	i32 135, ; 357
	i32 75, ; 358
	i32 59, ; 359
	i32 191, ; 360
	i32 214, ; 361
	i32 167, ; 362
	i32 168, ; 363
	i32 184, ; 364
	i32 15, ; 365
	i32 74, ; 366
	i32 6, ; 367
	i32 23, ; 368
	i32 236, ; 369
	i32 303, ; 370
	i32 195, ; 371
	i32 91, ; 372
	i32 1, ; 373
	i32 136, ; 374
	i32 237, ; 375
	i32 259, ; 376
	i32 134, ; 377
	i32 69, ; 378
	i32 146, ; 379
	i32 277, ; 380
	i32 228, ; 381
	i32 180, ; 382
	i32 88, ; 383
	i32 96, ; 384
	i32 218, ; 385
	i32 223, ; 386
	i32 31, ; 387
	i32 45, ; 388
	i32 232, ; 389
	i32 197, ; 390
	i32 109, ; 391
	i32 158, ; 392
	i32 35, ; 393
	i32 22, ; 394
	i32 114, ; 395
	i32 57, ; 396
	i32 257, ; 397
	i32 144, ; 398
	i32 118, ; 399
	i32 120, ; 400
	i32 110, ; 401
	i32 199, ; 402
	i32 139, ; 403
	i32 205, ; 404
	i32 54, ; 405
	i32 105, ; 406
	i32 185, ; 407
	i32 186, ; 408
	i32 133, ; 409
	i32 189, ; 410
	i32 271, ; 411
	i32 262, ; 412
	i32 250, ; 413
	i32 228, ; 414
	i32 188, ; 415
	i32 307, ; 416
	i32 159, ; 417
	i32 284, ; 418
	i32 215, ; 419
	i32 163, ; 420
	i32 132, ; 421
	i32 250, ; 422
	i32 161, ; 423
	i32 297, ; 424
	i32 239, ; 425
	i32 140, ; 426
	i32 262, ; 427
	i32 258, ; 428
	i32 283, ; 429
	i32 169, ; 430
	i32 187, ; 431
	i32 200, ; 432
	i32 267, ; 433
	i32 40, ; 434
	i32 302, ; 435
	i32 226, ; 436
	i32 81, ; 437
	i32 56, ; 438
	i32 37, ; 439
	i32 97, ; 440
	i32 166, ; 441
	i32 172, ; 442
	i32 263, ; 443
	i32 82, ; 444
	i32 202, ; 445
	i32 98, ; 446
	i32 30, ; 447
	i32 159, ; 448
	i32 18, ; 449
	i32 127, ; 450
	i32 119, ; 451
	i32 222, ; 452
	i32 253, ; 453
	i32 235, ; 454
	i32 255, ; 455
	i32 165, ; 456
	i32 230, ; 457
	i32 315, ; 458
	i32 252, ; 459
	i32 243, ; 460
	i32 170, ; 461
	i32 16, ; 462
	i32 144, ; 463
	i32 290, ; 464
	i32 125, ; 465
	i32 118, ; 466
	i32 38, ; 467
	i32 115, ; 468
	i32 47, ; 469
	i32 142, ; 470
	i32 117, ; 471
	i32 34, ; 472
	i32 173, ; 473
	i32 95, ; 474
	i32 53, ; 475
	i32 244, ; 476
	i32 129, ; 477
	i32 153, ; 478
	i32 24, ; 479
	i32 161, ; 480
	i32 221, ; 481
	i32 148, ; 482
	i32 104, ; 483
	i32 89, ; 484
	i32 209, ; 485
	i32 60, ; 486
	i32 142, ; 487
	i32 100, ; 488
	i32 5, ; 489
	i32 13, ; 490
	i32 190, ; 491
	i32 122, ; 492
	i32 135, ; 493
	i32 28, ; 494
	i32 72, ; 495
	i32 219, ; 496
	i32 24, ; 497
	i32 207, ; 498
	i32 248, ; 499
	i32 245, ; 500
	i32 137, ; 501
	i32 192, ; 502
	i32 200, ; 503
	i32 216, ; 504
	i32 168, ; 505
	i32 249, ; 506
	i32 101, ; 507
	i32 123, ; 508
	i32 220, ; 509
	i32 176, ; 510
	i32 163, ; 511
	i32 167, ; 512
	i32 223, ; 513
	i32 39, ; 514
	i32 183, ; 515
	i32 289, ; 516
	i32 17, ; 517
	i32 171, ; 518
	i32 302, ; 519
	i32 137, ; 520
	i32 150, ; 521
	i32 212, ; 522
	i32 155, ; 523
	i32 130, ; 524
	i32 19, ; 525
	i32 65, ; 526
	i32 308, ; 527
	i32 147, ; 528
	i32 47, ; 529
	i32 282, ; 530
	i32 198, ; 531
	i32 79, ; 532
	i32 61, ; 533
	i32 281, ; 534
	i32 106, ; 535
	i32 247, ; 536
	i32 202, ; 537
	i32 49, ; 538
	i32 233, ; 539
	i32 244, ; 540
	i32 14, ; 541
	i32 299, ; 542
	i32 175, ; 543
	i32 68, ; 544
	i32 287, ; 545
	i32 171, ; 546
	i32 312, ; 547
	i32 208, ; 548
	i32 212, ; 549
	i32 295, ; 550
	i32 311, ; 551
	i32 78, ; 552
	i32 217, ; 553
	i32 108, ; 554
	i32 201, ; 555
	i32 243, ; 556
	i32 67, ; 557
	i32 63, ; 558
	i32 27, ; 559
	i32 160, ; 560
	i32 194, ; 561
	i32 210, ; 562
	i32 10, ; 563
	i32 183, ; 564
	i32 11, ; 565
	i32 78, ; 566
	i32 126, ; 567
	i32 83, ; 568
	i32 177, ; 569
	i32 66, ; 570
	i32 107, ; 571
	i32 65, ; 572
	i32 128, ; 573
	i32 122, ; 574
	i32 190, ; 575
	i32 77, ; 576
	i32 258, ; 577
	i32 248, ; 578
	i32 310, ; 579
	i32 8, ; 580
	i32 216, ; 581
	i32 2, ; 582
	i32 44, ; 583
	i32 261, ; 584
	i32 156, ; 585
	i32 128, ; 586
	i32 246, ; 587
	i32 23, ; 588
	i32 133, ; 589
	i32 204, ; 590
	i32 235, ; 591
	i32 305, ; 592
	i32 287, ; 593
	i32 29, ; 594
	i32 203, ; 595
	i32 62, ; 596
	i32 185, ; 597
	i32 90, ; 598
	i32 87, ; 599
	i32 291, ; 600
	i32 148, ; 601
	i32 187, ; 602
	i32 36, ; 603
	i32 86, ; 604
	i32 224, ; 605
	i32 300, ; 606
	i32 298, ; 607
	i32 295, ; 608
	i32 176, ; 609
	i32 50, ; 610
	i32 6, ; 611
	i32 90, ; 612
	i32 21, ; 613
	i32 162, ; 614
	i32 96, ; 615
	i32 50, ; 616
	i32 113, ; 617
	i32 240, ; 618
	i32 313, ; 619
	i32 189, ; 620
	i32 130, ; 621
	i32 76, ; 622
	i32 27, ; 623
	i32 300, ; 624
	i32 217, ; 625
	i32 239, ; 626
	i32 7, ; 627
	i32 184, ; 628
	i32 110, ; 629
	i32 240, ; 630
	i32 226 ; 631
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.2xx @ 96b6bb65e8736e45180905177aa343f0e1854ea3"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
