.class public final Lcom/android/server/CoverObserver;
.super Landroid/os/UEventObserver;
.source "CoverObserver.java"


# static fields
.field public static final ACTION_COVER_EVENT:Ljava/lang/String; = "android.intent.action.COVER_EVENT"

.field private static final COVER_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/hall/state"

.field private static final COVER_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/hall"

.field public static final EXTRA_COVER_STATE:Ljava/lang/String; = "android.intent.extra.COVER_STATE"

.field public static final EXTRA_COVER_STATE_COVERED:I = 0x1

.field public static final EXTRA_COVER_STATE_UNCOVERED:I = 0x0

.field private static final HALL_OPEN_KEY:Ljava/lang/String; = "hall_support_key"

.field private static final MSG_COVER_STATE_CHANGED:I

.field public static final TAG:Ljava/lang/String;

.field private static final intentSwitchOFF:Landroid/content/Intent;

.field private static final intentSwitchON:Landroid/content/Intent;


# instance fields
.field private isScreenOn:Z

.field private isWaitScreenOn:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverState:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mSystemReady:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field piezoObserver:Lcom/android/server/PiezoObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/android/server/CoverObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HALL_SWITCH_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/CoverObserver;->intentSwitchON:Landroid/content/Intent;

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HALL_SWITCH_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/CoverObserver;->intentSwitchOFF:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 69
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/CoverObserver;->mLock:Ljava/lang/Object;

    .line 71
    iput v2, p0, Lcom/android/server/CoverObserver;->mCoverState:I

    .line 79
    iput-boolean v2, p0, Lcom/android/server/CoverObserver;->isScreenOn:Z

    .line 80
    iput-boolean v2, p0, Lcom/android/server/CoverObserver;->isWaitScreenOn:Z

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/CoverObserver;->piezoObserver:Lcom/android/server/PiezoObserver;

    .line 267
    new-instance v1, Lcom/android/server/CoverObserver$1;

    invoke-direct {v1, p0, v3}, Lcom/android/server/CoverObserver$1;-><init>(Lcom/android/server/CoverObserver;Z)V

    iput-object v1, p0, Lcom/android/server/CoverObserver;->mHandler:Landroid/os/Handler;

    .line 86
    sget-object v1, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    const-string v2, "create Hall Observer"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-object p1, p0, Lcom/android/server/CoverObserver;->mContext:Landroid/content/Context;

    .line 89
    :try_start_0
    new-instance v1, Lcom/android/server/PiezoObserver;

    iget-object v2, p0, Lcom/android/server/CoverObserver;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/PiezoObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/CoverObserver;->piezoObserver:Lcom/android/server/PiezoObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/android/server/CoverObserver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/CoverObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 96
    iget-object v1, p0, Lcom/android/server/CoverObserver;->mPowerManager:Landroid/os/PowerManager;

    sget-object v2, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/CoverObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 97
    invoke-direct {p0}, Lcom/android/server/CoverObserver;->init()V

    .line 98
    const-string v1, "DEVPATH=/devices/virtual/switch/hall"

    invoke-virtual {p0, v1}, Lcom/android/server/CoverObserver;->startObserving(Ljava/lang/String;)V

    .line 99
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    const-string v2, "create PiezoObsever error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/CoverObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/CoverObserver;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/server/CoverObserver;->handleCoverStateChange()V

    return-void
.end method

.method private handleCoverStateChange()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 190
    iget-object v4, p0, Lcom/android/server/CoverObserver;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 191
    :try_start_0
    sget-object v3, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cover state changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/CoverObserver;->mCoverState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v3, p0, Lcom/android/server/CoverObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 195
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 197
    sget-object v3, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    const-string v5, "Device not provisioned, skipping cover broadcast"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    monitor-exit v4

    .line 243
    :goto_0
    return-void

    .line 200
    :cond_0
    const-string v3, "hall_support_key"

    const/4 v5, 0x1

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 202
    sget-object v3, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    const-string v5, "hall is close ---- "

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    monitor-exit v4

    goto :goto_0

    .line 242
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 212
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :try_start_1
    iget v3, p0, Lcom/android/server/CoverObserver;->mCoverState:I

    if-ne v3, v7, :cond_2

    .line 214
    iget-object v3, p0, Lcom/android/server/CoverObserver;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/CoverObserver;->intentSwitchOFF:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 215
    iget-object v3, p0, Lcom/android/server/CoverObserver;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/CoverObserver;->intentSwitchON:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/CoverObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    :goto_2
    :try_start_3
    monitor-exit v4

    goto :goto_0

    .line 219
    :cond_2
    const/4 v2, 0x0

    .line 220
    .local v2, "wait_counter":I
    :goto_3
    iget-object v3, p0, Lcom/android/server/CoverObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x28

    if-ge v2, v3, :cond_3

    .line 222
    const-wide/16 v6, 0x32

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 225
    :cond_3
    :try_start_5
    const-string v3, "MyTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wait_counter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v3, p0, Lcom/android/server/CoverObserver;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/CoverObserver;->intentSwitchON:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 228
    iget-object v3, p0, Lcom/android/server/CoverObserver;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/server/CoverObserver;->intentSwitchOFF:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 238
    .end local v2    # "wait_counter":I
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    const-string v5, "-mWakeLock.release error"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 223
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "wait_counter":I
    :catch_1
    move-exception v3

    goto :goto_4
.end method

.method private init()V
    .locals 7

    .prologue
    .line 145
    iget-object v5, p0, Lcom/android/server/CoverObserver;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 147
    const/16 v4, 0x400

    :try_start_0
    new-array v0, v4, [C

    .line 148
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/hall/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    .local v2, "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v6, 0x400

    :try_start_1
    invoke-virtual {v2, v0, v4, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 151
    .local v3, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/CoverObserver;->mCoverState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 161
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "len":I
    :goto_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    return-void

    .line 154
    .restart local v0    # "buffer":[C
    .restart local v2    # "file":Ljava/io/FileReader;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 156
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    sget-object v4, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    const-string v6, "This kernel does not have hall sensor support"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 158
    :catch_1
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v4, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method private isInFactoryMode()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 247
    :try_start_0
    iget-object v7, p0, Lcom/android/server/CoverObserver;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 248
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 249
    .local v4, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 250
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 251
    .local v3, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v3, :cond_0

    .line 252
    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 253
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    const-string v7, "com.validation"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    .line 263
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :goto_0
    return v5

    .line 259
    :catch_0
    move-exception v2

    .line 260
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    move v5, v6

    .line 263
    goto :goto_0
.end method

.method private updateLocked()V
    .locals 3

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/android/server/CoverObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    iget-object v1, p0, Lcom/android/server/CoverObserver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 187
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    sget-object v1, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    const-string v2, "-mWakeLock.acquire error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 103
    sget-object v2, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    sget-object v2, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hall sensor UEVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/android/server/CoverObserver;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 109
    :try_start_0
    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 110
    .local v1, "newState":I
    iget v2, p0, Lcom/android/server/CoverObserver;->mCoverState:I

    if-eq v1, v2, :cond_4

    .line 112
    iput v1, p0, Lcom/android/server/CoverObserver;->mCoverState:I

    .line 113
    iget-boolean v2, p0, Lcom/android/server/CoverObserver;->mSystemReady:Z

    if-eqz v2, :cond_4

    .line 115
    iget-object v2, p0, Lcom/android/server/CoverObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/CoverObserver;->isScreenOn:Z

    .line 116
    sget-object v2, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cover state-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/CoverObserver;->mCoverState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "---screenON/OFF-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/CoverObserver;->isScreenOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget v2, p0, Lcom/android/server/CoverObserver;->mCoverState:I

    if-nez v2, :cond_2

    .line 119
    iget-boolean v2, p0, Lcom/android/server/CoverObserver;->isScreenOn:Z

    if-nez v2, :cond_1

    .line 120
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/CoverObserver;->isWaitScreenOn:Z

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/android/server/CoverObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/android/server/CoverObserver;->isInFactoryMode()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    .end local v1    # "newState":I
    :goto_0
    return-void

    .line 130
    .restart local v1    # "newState":I
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/CoverObserver;->updateLocked()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .end local v1    # "newState":I
    :cond_4
    :goto_1
    :try_start_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    sget-object v2, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

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
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public seedScreenOnHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-boolean v0, p0, Lcom/android/server/CoverObserver;->isWaitScreenOn:Z

    if-eqz v0, :cond_0

    .line 140
    iput-boolean v1, p0, Lcom/android/server/CoverObserver;->isWaitScreenOn:Z

    .line 141
    iget-object v0, p0, Lcom/android/server/CoverObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 143
    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/android/server/CoverObserver;->TAG:Ljava/lang/String;

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v1, p0, Lcom/android/server/CoverObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/server/CoverObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/CoverObserver;->isScreenOn:Z

    .line 169
    iget v0, p0, Lcom/android/server/CoverObserver;->mCoverState:I

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/android/server/CoverObserver;->updateLocked()V

    .line 172
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/CoverObserver;->mSystemReady:Z

    .line 173
    monitor-exit v1

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
