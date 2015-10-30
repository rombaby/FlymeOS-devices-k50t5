.class public final Lcom/android/server/PiezoObserver;
.super Landroid/os/UEventObserver;
.source "PiezoObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;,
        Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;
    }
.end annotation


# static fields
.field private static final CERAMIC_SETTINGS_KEY:Ljava/lang/String; = "ceramic_settings"

.field private static final CERAMIC_SPEAKER_NOTIFY_WAVES_STATE_ACTION:Ljava/lang/String; = "ceramic_speaker_notify_waves_state_action"

.field private static final CERAMIC_SPEAKER_OFF:Ljava/lang/String; = "GetPiezoShellSwitchStatus=2"

.field private static final CERAMIC_SPEAKER_OFF_MUSIC_ACTIVE:Ljava/lang/String; = "GetPiezoShellSwitchStatus=4"

.field private static final CERAMIC_SPEAKER_ON:Ljava/lang/String; = "GetPiezoShellSwitchStatus=3"

.field private static final CERAMIC_SPEAKER_ON_MUSIC_ACTIVE:Ljava/lang/String; = "GetPiezoShellSwitchStatus=5"

.field private static final CERAMIC_SPEAKER_OPEN:Ljava/lang/String; = "ceramic_speaker_open"

.field private static final CERAMIC_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/piezo/state"

.field private static final COVER_UEVENT_MATCH_PIEZO:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/piezo"

.field public static final KEY_SETTINGS:Ljava/lang/String; = "ceramics_state"

.field private static final MSG_PIZEO_STATE_CHANGED:I = 0x64

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBluetoothheadsetConnected:Z

.field private mBluetoothheadsetReceiver:Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetPlugReceiver:Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;

.field private mIsHeadsetPlug:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/server/PiezoObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 47
    iput-boolean v2, p0, Lcom/android/server/PiezoObserver;->mIsHeadsetPlug:Z

    .line 48
    iput-boolean v2, p0, Lcom/android/server/PiezoObserver;->mBluetoothheadsetConnected:Z

    .line 49
    new-instance v2, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;

    invoke-direct {v2, p0, v3}, Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;-><init>(Lcom/android/server/PiezoObserver;Lcom/android/server/PiezoObserver$1;)V

    iput-object v2, p0, Lcom/android/server/PiezoObserver;->mHeadsetPlugReceiver:Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;

    .line 50
    new-instance v2, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;

    invoke-direct {v2, p0, v3}, Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;-><init>(Lcom/android/server/PiezoObserver;Lcom/android/server/PiezoObserver$1;)V

    iput-object v2, p0, Lcom/android/server/PiezoObserver;->mBluetoothheadsetReceiver:Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;

    .line 52
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/PiezoObserver;->mLock:Ljava/lang/Object;

    .line 220
    new-instance v2, Lcom/android/server/PiezoObserver$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/server/PiezoObserver$1;-><init>(Lcom/android/server/PiezoObserver;Z)V

    iput-object v2, p0, Lcom/android/server/PiezoObserver;->mHandler:Landroid/os/Handler;

    .line 59
    sget-object v2, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string v3, "create Hall Observer"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v0, "filter1":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/PiezoObserver;->mHeadsetPlugReceiver:Lcom/android/server/PiezoObserver$HeadsetPlugReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v1, "filter2":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/PiezoObserver;->mBluetoothheadsetReceiver:Lcom/android/server/PiezoObserver$BluetoothheadsetReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    const-string v2, "DEVPATH=/devices/virtual/switch/piezo"

    invoke-virtual {p0, v2}, Lcom/android/server/PiezoObserver;->startObserving(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/PiezoObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PiezoObserver;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/server/PiezoObserver;->mIsHeadsetPlug:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/PiezoObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PiezoObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/server/PiezoObserver;->mIsHeadsetPlug:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/PiezoObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PiezoObserver;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PiezoObserver;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PiezoObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/server/PiezoObserver;->initCeramic(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/PiezoObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PiezoObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/server/PiezoObserver;->mBluetoothheadsetConnected:Z

    return p1
.end method

.method private initCeramic(Z)V
    .locals 15
    .param p1, "flag"    # Z

    .prologue
    .line 233
    sget-object v11, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string v12, "----initCermaic-->"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v12, p0, Lcom/android/server/PiezoObserver;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 235
    const/4 v5, 0x0

    .line 237
    .local v5, "file":Ljava/io/FileReader;
    const/16 v11, 0x400

    :try_start_0
    new-array v1, v11, [C

    .line 238
    .local v1, "buffer":[C
    new-instance v6, Ljava/io/FileReader;

    const-string v11, "/sys/class/switch/piezo/state"

    invoke-direct {v6, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 240
    .end local v5    # "file":Ljava/io/FileReader;
    .local v6, "file":Ljava/io/FileReader;
    const/4 v11, 0x0

    const/16 v13, 0x400

    :try_start_1
    invoke-virtual {v6, v1, v11, v13}, Ljava/io/FileReader;->read([CII)I

    move-result v9

    .line 241
    .local v9, "len":I
    new-instance v11, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v11, v1, v13, v9}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 244
    .local v10, "mCoverState":I
    iget-object v11, p0, Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "ceramic_settings"

    invoke-static {v11, v13, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    iget-object v11, p0, Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;

    const-string v13, "audio"

    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 248
    .local v0, "audioManger":Landroid/media/AudioManager;
    iget-object v11, p0, Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "ceramics_state"

    const/4 v14, 0x0

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_1

    const/4 v8, 0x1

    .line 250
    .local v8, "isOpen":Z
    :goto_0
    sget-object v11, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "----initCermaic--mCoverState->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "---state->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    if-eqz v8, :cond_3

    iget-boolean v11, p0, Lcom/android/server/PiezoObserver;->mIsHeadsetPlug:Z

    if-nez v11, :cond_3

    iget-boolean v11, p0, Lcom/android/server/PiezoObserver;->mBluetoothheadsetConnected:Z

    if-nez v11, :cond_3

    .line 258
    new-instance v7, Landroid/content/Intent;

    const-string v11, "ceramic_speaker_notify_waves_state_action"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 259
    .local v7, "intent":Landroid/content/Intent;
    const-string v11, "state"

    const/4 v13, 0x1

    invoke-virtual {v7, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const/16 v11, 0x20

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    iget-object v11, p0, Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 262
    iget-object v11, p0, Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "ceramic_speaker_notify_waves_state_action"

    const/4 v14, 0x1

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 269
    const/4 v11, 0x3

    invoke-static {v11}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v2

    .line 270
    .local v2, "devices":I
    and-int/lit8 v11, v2, 0x2

    if-eqz v11, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 272
    const-string v11, "GetPiezoShellSwitchStatus=5"

    invoke-virtual {v0, v11}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 278
    :goto_1
    sget-object v11, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string v13, "----initCermaic-->GetPiezoShellSwitchStatus=3"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v2    # "devices":I
    :cond_0
    :goto_2
    sget-object v11, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "----initCermaic-->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 314
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v5, v6

    .line 321
    .end local v0    # "audioManger":Landroid/media/AudioManager;
    .end local v1    # "buffer":[C
    .end local v6    # "file":Ljava/io/FileReader;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "isOpen":Z
    .end local v9    # "len":I
    .end local v10    # "mCoverState":I
    .restart local v5    # "file":Ljava/io/FileReader;
    :goto_3
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 322
    return-void

    .line 248
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v0    # "audioManger":Landroid/media/AudioManager;
    .restart local v1    # "buffer":[C
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v9    # "len":I
    .restart local v10    # "mCoverState":I
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 275
    .restart local v2    # "devices":I
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "isOpen":Z
    :cond_2
    :try_start_5
    const-string v11, "GetPiezoShellSwitchStatus=3"

    invoke-virtual {v0, v11}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 306
    .end local v0    # "audioManger":Landroid/media/AudioManager;
    .end local v2    # "devices":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "isOpen":Z
    .end local v9    # "len":I
    .end local v10    # "mCoverState":I
    :catchall_0
    move-exception v11

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    throw v11
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 308
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 309
    .end local v1    # "buffer":[C
    .end local v6    # "file":Ljava/io/FileReader;
    .local v3, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "file":Ljava/io/FileReader;
    :goto_4
    :try_start_7
    sget-object v11, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string v13, "This kernel does not have hall sensor support"

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 314
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 315
    :catch_1
    move-exception v4

    .line 316
    .local v4, "e2":Ljava/lang/Exception;
    :try_start_9
    sget-object v11, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string v13, "close file error"

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 321
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e2":Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    :goto_5
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v11

    .line 280
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v0    # "audioManger":Landroid/media/AudioManager;
    .restart local v1    # "buffer":[C
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v8    # "isOpen":Z
    .restart local v9    # "len":I
    .restart local v10    # "mCoverState":I
    :cond_3
    :try_start_a
    sget-object v11, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string v13, "----initCermaic-->GetPiezoShellSwitchStatus=2"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v7, Landroid/content/Intent;

    const-string v11, "ceramic_speaker_notify_waves_state_action"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v11, "state"

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    const/16 v11, 0x20

    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    iget-object v11, p0, Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 286
    iget-object v11, p0, Lcom/android/server/PiezoObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "ceramic_speaker_notify_waves_state_action"

    const/4 v14, -0x1

    invoke-static {v11, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 287
    if-eqz p1, :cond_0

    .line 291
    const/4 v11, 0x3

    invoke-static {v11}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v2

    .line 292
    .restart local v2    # "devices":I
    and-int/lit8 v11, v2, 0x2

    if-eqz v11, :cond_4

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 294
    const-string v11, "GetPiezoShellSwitchStatus=4"

    invoke-virtual {v0, v11}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 297
    :cond_4
    const-string v11, "GetPiezoShellSwitchStatus=2"

    invoke-virtual {v0, v11}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 315
    .end local v2    # "devices":I
    :catch_2
    move-exception v4

    .line 316
    .restart local v4    # "e2":Ljava/lang/Exception;
    :try_start_b
    sget-object v11, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string v13, "close file error"

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object v5, v6

    .line 320
    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto/16 :goto_3

    .line 310
    .end local v0    # "audioManger":Landroid/media/AudioManager;
    .end local v1    # "buffer":[C
    .end local v4    # "e2":Ljava/lang/Exception;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "isOpen":Z
    .end local v9    # "len":I
    .end local v10    # "mCoverState":I
    :catch_3
    move-exception v3

    .line 311
    .local v3, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_c
    sget-object v11, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string v13, ""

    invoke-static {v11, v13, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 314
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_3

    .line 315
    :catch_4
    move-exception v4

    .line 316
    .restart local v4    # "e2":Ljava/lang/Exception;
    :try_start_e
    sget-object v11, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string v13, "close file error"

    invoke-static {v11, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_3

    .line 313
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "e2":Ljava/lang/Exception;
    :catchall_2
    move-exception v11

    .line 314
    :goto_7
    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 318
    :goto_8
    :try_start_10
    throw v11

    .line 315
    :catch_5
    move-exception v4

    .line 316
    .restart local v4    # "e2":Ljava/lang/Exception;
    sget-object v13, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const-string v14, "close file error"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_8

    .line 321
    .end local v4    # "e2":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v0    # "audioManger":Landroid/media/AudioManager;
    .restart local v1    # "buffer":[C
    .restart local v6    # "file":Ljava/io/FileReader;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "isOpen":Z
    .restart local v9    # "len":I
    .restart local v10    # "mCoverState":I
    :catchall_3
    move-exception v11

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto/16 :goto_5

    .line 313
    .end local v0    # "audioManger":Landroid/media/AudioManager;
    .end local v5    # "file":Ljava/io/FileReader;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "isOpen":Z
    .end local v9    # "len":I
    .end local v10    # "mCoverState":I
    .restart local v6    # "file":Ljava/io/FileReader;
    :catchall_4
    move-exception v11

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_7

    .line 310
    .end local v5    # "file":Ljava/io/FileReader;
    .restart local v6    # "file":Ljava/io/FileReader;
    :catch_6
    move-exception v3

    move-object v5, v6

    .end local v6    # "file":Ljava/io/FileReader;
    .restart local v5    # "file":Ljava/io/FileReader;
    goto :goto_6

    .line 308
    .end local v1    # "buffer":[C
    :catch_7
    move-exception v3

    goto/16 :goto_4
.end method

.method private updateLockedPiezo(I)V
    .locals 2
    .param p1, "newStatue"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/PiezoObserver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 94
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 78
    sget-object v2, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    sget-object v2, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUEvent sensor UEVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    iget-object v3, p0, Lcom/android/server/PiezoObserver;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 83
    :try_start_0
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, "newState":I
    invoke-direct {p0, v1}, Lcom/android/server/PiezoObserver;->updateLockedPiezo(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .end local v1    # "newState":I
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 89
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/android/server/PiezoObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
