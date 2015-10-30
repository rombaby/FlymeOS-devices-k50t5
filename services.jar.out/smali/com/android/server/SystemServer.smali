.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$BootProgressUpdater;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final EPDG_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.epdg.EpdgService"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final IS_USER_BUILD:Z

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final RNS_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.rns.RnsService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field static mMTPROF_disable:Z


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mBootProgressUpdater:Lcom/android/server/SystemServer$BootProgressUpdater;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 231
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "userdebug"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1616
    new-instance v0, Lcom/android/server/SystemServer$BootProgressUpdater;

    invoke-direct {v0, p0}, Lcom/android/server/SystemServer$BootProgressUpdater;-><init>(Lcom/android/server/SystemServer;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mBootProgressUpdater:Lcom/android/server/SystemServer$BootProgressUpdater;

    .line 247
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SystemServer;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public static addBootEvent(Ljava/lang/String;)V
    .locals 4
    .param p0, "bootevent"    # Ljava/lang/String;

    .prologue
    .line 379
    :try_start_0
    sget-boolean v2, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    if-nez v2, :cond_0

    .line 380
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/bootprof"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 381
    .local v1, "fbp":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 382
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 383
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    .end local v1    # "fbp":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof, not found!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 387
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 388
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BOOTPROF"

    const-string v3, "Failure open /proc/bootprof entry"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 411
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 412
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 413
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x103013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 414
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 242
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 243
    return-void
.end method

.method private static native nativeInit()V
.end method

.method private performPendingShutdown()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 394
    const-string v4, "sys.shutdown.requested"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 396
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 397
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_0

    move v1, v3

    .line 400
    .local v1, "reboot":Z
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 401
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "reason":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 408
    .end local v0    # "reason":Ljava/lang/String;
    .end local v1    # "reboot":Z
    :cond_1
    return-void

    .line 403
    .restart local v1    # "reboot":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 372
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 374
    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 256
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 261
    :cond_0
    const-string v0, "SystemServer"

    const-string v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/16 v0, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 265
    const-string v0, "1"

    const-string v1, "ro.mtprof.disable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SystemServer;->mMTPROF_disable:Z

    .line 266
    new-instance v0, Ljava/lang/String;

    const-string v1, "Android:SysServerInit_START"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 276
    const-string v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 281
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 282
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 291
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 295
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 299
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 303
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 306
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 309
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 311
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 312
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 315
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/android/server/SystemServer;->nativeInit()V

    .line 320
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "rm -r /data/piggybank"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 331
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 334
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 335
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 339
    invoke-direct {p0}, Lcom/android/server/SystemServer;->shouldShowProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mBootProgressUpdater:Lcom/android/server/SystemServer$BootProgressUpdater;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 345
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 346
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 347
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 359
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    const-string v0, "SystemServer"

    const-string v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_4
    new-instance v0, Ljava/lang/String;

    const-string v1, "Android:SysServerInit_END"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/SystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 368
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :catch_0
    move-exception v6

    .line 322
    .local v6, "e":Ljava/io/IOException;
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "system server init delete piggybank fail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    .end local v6    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 349
    .local v7, "ex":Ljava/lang/Throwable;
    const-string v0, "System"

    const-string v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v0, "System"

    const-string v1, "************ Failure starting system services"

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v0, :cond_3

    instance-of v0, v7, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_3

    .line 353
    iget-object v0, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    check-cast v7, Ljava/lang/RuntimeException;

    .end local v7    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v0, v7, v8}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto :goto_1
.end method

.method private shouldShowProgress()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1619
    const-string v2, "sys.loadinganimation.enable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private startBootstrapServices()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 427
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 430
    .local v3, "installer":Lcom/android/server/pm/Installer;
    sget-boolean v6, Lcom/android/server/SystemServer;->IS_USER_BUILD:Z

    if-nez v6, :cond_0

    .line 432
    const/4 v4, 0x0

    .line 433
    .local v4, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_0
    new-instance v5, Lcom/mediatek/msglogger/MessageMonitorService;

    invoke-direct {v5}, Lcom/mediatek/msglogger/MessageMonitorService;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .local v5, "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :try_start_1
    const-string v6, "SystemServer"

    const-string v8, "Create message monitor service successfully ."

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const-string v6, "msgmonitorservice"

    invoke-virtual {v5}, Lcom/mediatek/msglogger/MessageMonitorService;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 445
    .end local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 447
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 448
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 454
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 458
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 462
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 465
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x64

    invoke-virtual {v6, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 468
    const-string v6, "vold.decrypt"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "cryptState":Ljava/lang/String;
    const-string v6, "trigger_restart_min_framework"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 470
    const-string v6, "SystemServer"

    const-string v8, "Detected encryption in progress - only parsing core apps"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 478
    :cond_1
    :goto_1
    const-string v6, "0"

    const-string v8, "ro.mtk_antibricking_level"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 479
    .local v1, "disabled":Z
    if-nez v1, :cond_2

    .line 481
    :try_start_2
    const-string v6, "SystemServer"

    const-string v8, "Recovery Manager"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v6, Lcom/mediatek/recovery/RecoveryManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v8}, Lcom/mediatek/recovery/RecoveryManagerService;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    .line 483
    iget-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v6, :cond_2

    .line 484
    const-string v6, "recovery"

    iget-object v8, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v8}, Lcom/mediatek/recovery/RecoveryManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 485
    iget-object v6, p0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v6}, Lcom/mediatek/recovery/RecoveryManagerService;->startBootMonitor()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 494
    :cond_2
    :goto_2
    const-string v6, "SystemServer"

    const-string v8, "Package Manager"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v6, :cond_4

    move v6, v7

    :goto_3
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v8, v3, v6, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 497
    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 498
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 500
    const-string v6, "SystemServer"

    const-string v7, "User Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const-string v6, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 504
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 507
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 508
    return-void

    .line 438
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disabled":Z
    .restart local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_0
    move-exception v2

    .line 439
    .local v2, "e":Ljava/lang/Throwable;
    :goto_4
    const-string v6, "SystemServer"

    const-string v8, "Starting message monitor service exception "

    invoke-static {v6, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 472
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .restart local v0    # "cryptState":Ljava/lang/String;
    :cond_3
    const-string v6, "1"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 473
    const-string v6, "SystemServer"

    const-string v8, "Device encrypted - only parsing core apps"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_1

    .line 487
    .restart local v1    # "disabled":Z
    :catch_1
    move-exception v2

    .line 488
    .restart local v2    # "e":Ljava/lang/Throwable;
    const-string v6, "Failure starting Recovery Manager"

    invoke-direct {p0, v6, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 495
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 438
    .end local v0    # "cryptState":Ljava/lang/String;
    .end local v1    # "disabled":Z
    .restart local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    :catch_2
    move-exception v2

    move-object v4, v5

    .end local v5    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    .restart local v4    # "msgMonitorService":Lcom/mediatek/msglogger/MessageMonitorService;
    goto :goto_4
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/lights/LightsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 518
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 521
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 522
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 525
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 528
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 529
    return-void
.end method

.method private startOtherServices()V
    .locals 118
    .annotation build Landroid/annotation/VibeHook;
        module = .enum Landroid/annotation/VibeHook$VibeHookModule;->THEME:Landroid/annotation/VibeHook$VibeHookModule;
        note = "Lenovo-SW huangzb1 modify 2014-09-26 ,new LenovoAppIconManager,fixed LVPCCR-19"
        type = .enum Landroid/annotation/VibeHook$VibeHookType;->CHANGE_CODE:Landroid/annotation/VibeHook$VibeHookType;
    .end annotation

    .prologue
    .line 537
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 538
    .local v3, "context":Landroid/content/Context;
    const/16 v36, 0x0

    .line 539
    .local v36, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v56, 0x0

    .line 540
    .local v56, "contentService":Lcom/android/server/content/ContentService;
    const/16 v111, 0x0

    .line 541
    .local v111, "vibrator":Lcom/android/server/VibratorService;
    const/16 v38, 0x0

    .line 542
    .local v38, "alarm":Landroid/app/IAlarmManager;
    const/16 v86, 0x0

    .line 543
    .local v86, "mountService":Lcom/android/server/MountService;
    const/4 v7, 0x0

    .line 544
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 545
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v88, 0x0

    .line 546
    .local v88, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v52, 0x0

    .line 547
    .local v52, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v89, 0x0

    .line 548
    .local v89, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v103, 0x0

    .line 549
    .local v103, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v117, 0x0

    .line 550
    .local v117, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v47, 0x0

    .line 551
    .local v47, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v110, 0x0

    .line 552
    .local v110, "usb":Lcom/android/server/usb/UsbService;
    const/16 v101, 0x0

    .line 553
    .local v101, "serial":Lcom/android/server/SerialService;
    const/16 v92, 0x0

    .line 554
    .local v92, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v49, 0x0

    .line 555
    .local v49, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v73, 0x0

    .line 556
    .local v73, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v106, 0x0

    .line 557
    .local v106, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v54, 0x0

    .line 558
    .local v54, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v45, 0x0

    .line 559
    .local v45, "audioService":Landroid/media/AudioService;
    const/16 v83, 0x0

    .line 562
    .local v83, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v84, 0x0

    .line 564
    .local v84, "mom":Lcom/mediatek/mom/MobileManagerService;
    const/16 v69, 0x0

    .line 567
    .local v69, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    const/16 v41, 0x0

    .line 571
    .local v41, "appPcService":Lcom/android/server/am/AppPcService;
    const/16 v39, 0x0

    .line 574
    .local v39, "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    const-string v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v65

    .line 575
    .local v65, "disableStorage":Z
    const-string v4, "config.disable_media"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 576
    .local v61, "disableMedia":Z
    const-string v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v59

    .line 577
    .local v59, "disableBluetooth":Z
    const-string v4, "config.disable_telephony"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v67

    .line 578
    .local v67, "disableTelephony":Z
    const-string v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v60

    .line 579
    .local v60, "disableLocation":Z
    const-string v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v66

    .line 580
    .local v66, "disableSystemUI":Z
    const-string v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    .line 581
    .local v64, "disableNonCoreServices":Z
    const-string v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v62

    .line 582
    .local v62, "disableNetwork":Z
    const-string v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v63

    .line 583
    .local v63, "disableNetworkTime":Z
    const-string v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v75

    .line 587
    .local v75, "isEmulator":Z
    :try_start_0
    const-string v4, "SystemServer"

    const-string v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 590
    const-string v4, "SystemServer"

    const-string v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 595
    const-string v4, "SystemServer"

    const-string v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v107, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v107

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4e

    .line 597
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v107, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string v4, "telephony.registry"

    move-object/from16 v0, v107

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 599
    const-string v4, "SystemServer"

    const-string v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v4, "entropy"

    new-instance v5, Lcom/android/server/EntropyMixer;

    invoke-direct {v5, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 602
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 607
    :try_start_2
    const-string v4, "SystemServer"

    const-string v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    new-instance v37, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 609
    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v37, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_3
    const-string v4, "account"

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_55
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4f

    move-object/from16 v36, v37

    .line 614
    .end local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_4
    const-string v4, "SystemServer"

    const-string v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f

    const/4 v4, 0x1

    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v56

    .line 619
    invoke-static {}, Lcom/mediatek/common/mom/MobileManagerUtils;->isSupported()Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    .line 621
    :try_start_5
    const-string v4, "SystemServer"

    const-string v5, "MobileManagerService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    new-instance v85, Lcom/mediatek/mom/MobileManagerService;

    move-object/from16 v0, v85

    invoke-direct {v0, v3}, Lcom/mediatek/mom/MobileManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 623
    .end local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .local v85, "mom":Lcom/mediatek/mom/MobileManagerService;
    :try_start_6
    const-string v4, "mobile"

    invoke-virtual/range {v85 .. v85}, Lcom/mediatek/mom/MobileManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_54
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_50

    move-object/from16 v84, v85

    .line 630
    .end local v85    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    :cond_0
    :goto_2
    :try_start_7
    const-string v4, "SystemServer"

    const-string v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 633
    const-string v4, "SystemServer"

    const-string v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    new-instance v112, Lcom/android/server/VibratorService;

    move-object/from16 v0, v112

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 635
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .local v112, "vibrator":Lcom/android/server/VibratorService;
    :try_start_8
    const-string v4, "vibrator"

    move-object/from16 v0, v112

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 637
    const-string v4, "SystemServer"

    const-string v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    new-instance v55, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v55

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_51

    .line 639
    .end local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v55, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_9
    const-string v4, "consumer_ir"

    move-object/from16 v0, v55

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 642
    const-string v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v38

    .line 645
    const-string v4, "SystemServer"

    const-string v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v116

    .line 647
    .local v116, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v116

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 649
    const-string v4, "SystemServer"

    const-string v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    new-instance v74, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v74

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_52

    .line 652
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v74, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_a
    const-string v4, "SystemServer"

    const-string v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_30

    const/4 v4, 0x1

    move v5, v4

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v4, :cond_31

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move-object/from16 v0, v74

    invoke-static {v3, v0, v5, v4, v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v117

    .line 656
    const-string v4, "window"

    move-object/from16 v0, v117

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 657
    const-string v4, "input"

    move-object/from16 v0, v74

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 659
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v117

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 661
    invoke-virtual/range {v117 .. v117}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 662
    invoke-virtual/range {v74 .. v74}, Lcom/android/server/input/InputManagerService;->start()V

    .line 665
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 670
    if-eqz v75, :cond_32

    .line 671
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    :goto_5
    move-object/from16 v54, v55

    .end local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v73, v74

    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v111, v112

    .line 695
    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .end local v116    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    :cond_1
    :goto_6
    const/16 v104, 0x0

    .line 696
    .local v104, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v94, 0x0

    .line 697
    .local v94, "notification":Landroid/app/INotificationManager;
    const/16 v71, 0x0

    .line 698
    .local v71, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v114, 0x0

    .line 699
    .local v114, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v76, 0x0

    .line 700
    .local v76, "location":Lcom/android/server/LocationManagerService;
    const/16 v57, 0x0

    .line 701
    .local v57, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v108, 0x0

    .line 702
    .local v108, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v78, 0x0

    .line 703
    .local v78, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v95, 0x0

    .line 704
    .local v95, "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    const/16 v98, 0x0

    .line 705
    .local v98, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v43, 0x0

    .line 706
    .local v43, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v80, 0x0

    .line 709
    .local v80, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 713
    :try_start_b
    const-string v4, "SystemServer"

    const-string v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v72, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v72

    move-object/from16 v1, v117

    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 715
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v72, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_c
    const-string v4, "input_method"

    move-object/from16 v0, v72

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4d

    move-object/from16 v71, v72

    .line 721
    .end local v72    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_7
    :try_start_d
    const-string v4, "SystemServer"

    const-string v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v4, "accessibility"

    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 731
    :cond_2
    :goto_8
    :try_start_e
    invoke-virtual/range {v117 .. v117}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    .line 736
    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 737
    if-nez v65, :cond_3

    const-string v4, "0"

    const-string v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 744
    :try_start_f
    const-string v4, "SystemServer"

    const-string v5, "Mount Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    new-instance v87, Lcom/android/server/MountService;

    move-object/from16 v0, v87

    invoke-direct {v0, v3}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    .line 746
    .end local v86    # "mountService":Lcom/android/server/MountService;
    .local v87, "mountService":Lcom/android/server/MountService;
    :try_start_10
    const-string v4, "mount"

    move-object/from16 v0, v87

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4c

    move-object/from16 v86, v87

    .line 754
    .end local v87    # "mountService":Lcom/android/server/MountService;
    .restart local v86    # "mountService":Lcom/android/server/MountService;
    :cond_3
    :goto_a
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    .line 760
    :goto_b
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x104049d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_4b

    .line 767
    :goto_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_38

    .line 768
    if-nez v64, :cond_5

    .line 770
    :try_start_13
    const-string v4, "SystemServer"

    const-string v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v79, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v79

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 772
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v79, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_14
    const-string v4, "lock_settings"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4a

    move-object/from16 v78, v79

    .line 777
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_d
    const-string v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 783
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 786
    :cond_5
    if-nez v66, :cond_6

    .line 788
    :try_start_15
    const-string v4, "SystemServer"

    const-string v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v105, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v105

    move-object/from16 v1, v117

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    .line 790
    .end local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v105, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_16
    const-string v4, "statusbar"

    move-object/from16 v0, v105

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_49

    move-object/from16 v104, v105

    .line 796
    .end local v105    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_6
    :goto_e
    if-nez v64, :cond_7

    .line 798
    :try_start_17
    const-string v4, "SystemServer"

    const-string v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v4, "clipboard"

    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b

    .line 806
    :cond_7
    :goto_f
    if-nez v62, :cond_8

    .line 808
    :try_start_18
    const-string v4, "SystemServer"

    const-string v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 810
    const-string v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_c

    .line 816
    :cond_8
    :goto_10
    if-nez v64, :cond_9

    .line 818
    :try_start_19
    const-string v4, "SystemServer"

    const-string v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    new-instance v109, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v109

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_d

    .line 820
    .end local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v109, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_1a
    const-string v4, "textservices"

    move-object/from16 v0, v109

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_48

    move-object/from16 v108, v109

    .line 826
    .end local v109    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_9
    :goto_11
    if-nez v62, :cond_37

    .line 828
    :try_start_1b
    const-string v4, "SystemServer"

    const-string v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    new-instance v90, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v90

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_e

    .line 830
    .end local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v90, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_1c
    const-string v4, "network_score"

    move-object/from16 v0, v90

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_47

    move-object/from16 v89, v90

    .line 836
    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_12
    :try_start_1d
    const-string v4, "SystemServer"

    const-string v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    new-instance v91, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v91

    move-object/from16 v1, v38

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_f

    .line 838
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v91, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1e
    const-string v4, "netstats"

    move-object/from16 v0, v91

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_46

    move-object/from16 v6, v91

    .line 844
    .end local v91    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_13
    :try_start_1f
    const-string v4, "SystemServer"

    const-string v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-string v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_10

    .line 849
    .end local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_20
    const-string v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_45

    .line 854
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 856
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiScanningService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 859
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 861
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 862
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 866
    :cond_a
    :try_start_21
    const-string v4, "SystemServer"

    const-string v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    new-instance v53, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v53

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_11

    .line 869
    .end local v52    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v53, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_22
    const-string v4, "connectivity"

    move-object/from16 v0, v53

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 870
    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 871
    move-object/from16 v0, v53

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_44

    move-object/from16 v52, v53

    .line 877
    .end local v53    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v52    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_15
    :try_start_23
    const-string v4, "SystemServer"

    const-string v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v103

    .line 879
    const-string v4, "servicediscovery"

    move-object/from16 v0, v103

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_12

    .line 886
    :goto_16
    const-string v4, "1"

    const-string v5, "ro.mtk_epdg_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 888
    :try_start_24
    const-string v4, "SystemServer"

    const-string v5, "EPDG Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.mediatek.epdg.EpdgService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_13

    .line 896
    :cond_b
    :goto_17
    const-string v4, "1"

    const-string v5, "ro.mtk_epdg_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 898
    :try_start_25
    const-string v4, "SystemServer"

    const-string v5, "RNS Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.mediatek.rns.RnsService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_14

    .line 904
    :cond_c
    :goto_18
    const-string v4, "SystemServer"

    const-string v5, "RNS Service_END"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :goto_19
    if-nez v64, :cond_d

    .line 910
    :try_start_26
    const-string v4, "SystemServer"

    const-string v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const-string v4, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_15

    .line 923
    :cond_d
    :goto_1a
    if-eqz v86, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_e

    .line 924
    invoke-virtual/range {v86 .. v86}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 928
    :cond_e
    if-eqz v36, :cond_f

    .line 929
    :try_start_27
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_16

    .line 935
    :cond_f
    :goto_1b
    if-eqz v56, :cond_10

    .line 936
    :try_start_28
    invoke-virtual/range {v56 .. v56}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_17

    .line 941
    :cond_10
    :goto_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 942
    const-string v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v94

    .line 944
    move-object/from16 v0, v94

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 948
    if-nez v60, :cond_11

    .line 950
    :try_start_29
    const-string v4, "SystemServer"

    const-string v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v77, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v77

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_18

    .line 952
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .local v77, "location":Lcom/android/server/LocationManagerService;
    :try_start_2a
    const-string v4, "location"

    move-object/from16 v0, v77

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_43

    move-object/from16 v76, v77

    .line 958
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    :goto_1d
    :try_start_2b
    const-string v4, "SystemServer"

    const-string v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    new-instance v58, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v58

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_19

    .line 960
    .end local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v58, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_2c
    const-string v4, "country_detector"

    move-object/from16 v0, v58

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_42

    move-object/from16 v57, v58

    .line 966
    .end local v58    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_11
    :goto_1e
    if-nez v64, :cond_12

    .line 968
    :try_start_2d
    const-string v4, "SystemServer"

    const-string v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const-string v4, "search"

    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1a

    .line 977
    :goto_1f
    :try_start_2e
    const-string v4, "SystemServer"

    const-string v5, "Search Engine Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-string v4, "search_engine"

    new-instance v5, Lcom/mediatek/search/SearchEngineManagerService;

    invoke-direct {v5, v3}, Lcom/mediatek/search/SearchEngineManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1b

    .line 987
    :cond_12
    :goto_20
    :try_start_2f
    const-string v4, "SystemServer"

    const-string v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const-string v4, "dropbox"

    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1c

    .line 994
    :goto_21
    if-nez v64, :cond_13

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120043

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 997
    :try_start_30
    const-string v4, "SystemServer"

    const-string v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v115, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v115

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1d

    .line 999
    .end local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v115, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_31
    const-string v4, "wallpaper"

    move-object/from16 v0, v115

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_41

    move-object/from16 v114, v115

    .line 1005
    .end local v115    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_13
    :goto_22
    if-nez v61, :cond_14

    const-string v4, "0"

    const-string v5, "system_init.startaudioservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 1007
    :try_start_32
    const-string v4, "SystemServer"

    const-string v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    new-instance v46, Landroid/media/AudioService;

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1e

    .line 1009
    .end local v45    # "audioService":Landroid/media/AudioService;
    .local v46, "audioService":Landroid/media/AudioService;
    :try_start_33
    const-string v4, "audio"

    move-object/from16 v0, v46

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_40

    move-object/from16 v45, v46

    .line 1017
    .end local v46    # "audioService":Landroid/media/AudioService;
    .restart local v45    # "audioService":Landroid/media/AudioService;
    :cond_14
    :goto_23
    if-nez v61, :cond_15

    const-string v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const/4 v4, 0x1

    const-string v5, "ro.mtk_audio_profiles"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_15

    .line 1020
    :try_start_34
    const-string v4, "SystemServer"

    const-string v5, "AudioProfile Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-string v4, "audioprofile"

    new-instance v5, Lcom/mediatek/audioprofile/AudioProfileService;

    invoke-direct {v5, v3}, Lcom/mediatek/audioprofile/AudioProfileService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1f

    .line 1029
    :cond_15
    :goto_24
    const-string v4, "1"

    const-string v5, "ro.mtk_sensorhub_support"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1031
    :try_start_35
    const-string v4, "SystemServer"

    const-string v5, "SensorHubService"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const-string v4, "sensorhubservice"

    new-instance v5, Lcom/mediatek/sensorhub/SensorHubService;

    invoke-direct {v5, v3}, Lcom/mediatek/sensorhub/SensorHubService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_20

    .line 1039
    :cond_16
    :goto_25
    if-nez v64, :cond_17

    .line 1040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1043
    :cond_17
    if-nez v61, :cond_18

    .line 1045
    :try_start_36
    const-string v4, "SystemServer"

    const-string v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v73

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_21

    .line 1054
    :cond_18
    :goto_26
    if-nez v64, :cond_1b

    .line 1055
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1059
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1063
    :cond_1a
    :try_start_37
    const-string v4, "SystemServer"

    const-string v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    new-instance v102, Lcom/android/server/SerialService;

    move-object/from16 v0, v102

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_22

    .line 1066
    .end local v101    # "serial":Lcom/android/server/SerialService;
    .local v102, "serial":Lcom/android/server/SerialService;
    :try_start_38
    const-string v4, "serial"

    move-object/from16 v0, v102

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_3f

    move-object/from16 v101, v102

    .line 1072
    .end local v102    # "serial":Lcom/android/server/SerialService;
    .restart local v101    # "serial":Lcom/android/server/SerialService;
    :cond_1b
    :goto_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1074
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1076
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1078
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1080
    if-nez v64, :cond_1e

    .line 1081
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1082
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1085
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1086
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1089
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1090
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1095
    :cond_1e
    :try_start_39
    const-string v4, "SystemServer"

    const-string v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const-string v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_23

    .line 1106
    :goto_28
    :try_start_3a
    const-string v4, "SystemServer"

    const-string v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const-string v4, "samplingprofiler"

    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_24

    .line 1113
    :goto_29
    if-nez v62, :cond_1f

    if-nez v63, :cond_1f

    .line 1115
    :try_start_3b
    const-string v4, "SystemServer"

    const-string v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    new-instance v93, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v93

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_25

    .end local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v93, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v92, v93

    .line 1122
    .end local v93    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v92    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1f
    :goto_2a
    if-nez v61, :cond_20

    .line 1124
    :try_start_3c
    const-string v4, "SystemServer"

    const-string v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    new-instance v50, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v50

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_26

    .line 1126
    .end local v49    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v50, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_3d
    const-string v4, "commontime_management"

    move-object/from16 v0, v50

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_3e

    move-object/from16 v49, v50

    .line 1132
    .end local v50    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v49    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_20
    :goto_2b
    if-nez v62, :cond_21

    .line 1134
    :try_start_3e
    const-string v4, "SystemServer"

    const-string v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    new-instance v4, Lcom/android/server/CertBlacklister;

    invoke-direct {v4, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_27

    .line 1141
    :cond_21
    :goto_2c
    if-nez v64, :cond_22

    .line 1143
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1146
    :cond_22
    if-nez v64, :cond_23

    const-string v4, "ro.hwui.disable_asset_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_23

    .line 1148
    :try_start_3f
    const-string v4, "SystemServer"

    const-string v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    new-instance v44, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_28

    .line 1150
    .end local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v44, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_40
    const-string v4, "assetatlas"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_3d

    move-object/from16 v43, v44

    .line 1156
    .end local v44    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_23
    :goto_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1160
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1165
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1168
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1172
    :cond_26
    if-nez v64, :cond_27

    .line 1174
    :try_start_41
    const-string v4, "SystemServer"

    const-string v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    new-instance v81, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_29

    .line 1176
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v81, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_42
    const-string v4, "media_router"

    move-object/from16 v0, v81

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_3c

    move-object/from16 v80, v81

    .line 1181
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1186
    :try_start_43
    const-string v4, "SystemServer"

    const-string v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    invoke-static {v3}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2a

    .line 1195
    :cond_27
    :goto_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mBootProgressUpdater:Lcom/android/server/SystemServer$BootProgressUpdater;

    invoke-virtual {v4}, Lcom/android/server/SystemServer$BootProgressUpdater;->setCompleted()V

    .line 1197
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1200
    const-string v4, "ro.mtk_perfservice_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1202
    :try_start_44
    const-string v4, "SystemServer"

    const-string v5, "PerfMgr state notifier"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    new-instance v96, Lcom/android/server/PerfMgrStateNotifier;

    invoke-direct/range {v96 .. v96}, Lcom/android/server/PerfMgrStateNotifier;-><init>()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2b

    .line 1204
    .end local v95    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .local v96, "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :try_start_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v96

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->registerActivityStateNotifier(Lcom/android/server/am/IActivityStateNotifier;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_3b

    move-object/from16 v95, v96

    .line 1211
    .end local v96    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v95    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :goto_30
    :try_start_46
    new-instance v99, Lcom/mediatek/perfservice/PerfServiceManager;

    move-object/from16 v0, v99

    invoke-direct {v0, v3}, Lcom/mediatek/perfservice/PerfServiceManager;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2c

    .line 1213
    .end local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .local v99, "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    const/16 v97, 0x0

    .line 1214
    .local v97, "perfService":Lcom/mediatek/perfservice/IPerfService;
    :try_start_47
    new-instance v97, Lcom/mediatek/perfservice/PerfServiceImpl;

    .end local v97    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    move-object/from16 v0, v97

    move-object/from16 v1, v99

    invoke-direct {v0, v3, v1}, Lcom/mediatek/perfservice/PerfServiceImpl;-><init>(Landroid/content/Context;Lcom/mediatek/perfservice/IPerfServiceManager;)V

    .line 1216
    .restart local v97    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    const-string v4, "perfservice"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "perfService="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v97

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    if-eqz v97, :cond_28

    .line 1218
    const-string v4, "mtk-perfservice"

    invoke-interface/range {v97 .. v97}, Lcom/mediatek/perfservice/IPerfService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_3a

    :cond_28
    move-object/from16 v98, v99

    .line 1228
    .end local v97    # "perfService":Lcom/mediatek/perfservice/IPerfService;
    .end local v99    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :cond_29
    :goto_31
    if-nez v64, :cond_2a

    const-string v4, "ro.mtk_hdmi_support"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1230
    :try_start_48
    const-string v4, "SystemServer"

    const-string v5, "HDMI Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    new-instance v70, Lcom/mediatek/hdmi/MtkHdmiManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2d

    .line 1232
    .end local v69    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .local v70, "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :try_start_49
    const-string v4, "mtkhdmi"

    invoke-virtual/range {v70 .. v70}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_39

    move-object/from16 v69, v70

    .line 1243
    .end local v70    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v69    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :cond_2a
    :goto_32
    :try_start_4a
    const-string v4, "SystemServer"

    const-string v5, "AppPcService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    new-instance v42, Lcom/android/server/am/AppPcService;

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Lcom/android/server/am/AppPcService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_2e

    .line 1245
    .end local v41    # "appPcService":Lcom/android/server/am/AppPcService;
    .local v42, "appPcService":Lcom/android/server/am/AppPcService;
    :try_start_4b
    const-string v4, "lenovopermission"

    move-object/from16 v0, v42

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_38

    move-object/from16 v41, v42

    .line 1253
    .end local v42    # "appPcService":Lcom/android/server/am/AppPcService;
    .restart local v41    # "appPcService":Lcom/android/server/am/AppPcService;
    :goto_33
    :try_start_4c
    const-string v4, "SystemServer"

    const-string v5, "AppIconThemeServices"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    new-instance v40, Lvibeui/content/res/AppIconThemeServices;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Lvibeui/content/res/AppIconThemeServices;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_2f

    .line 1255
    .end local v39    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    .local v40, "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    :try_start_4d
    const-string v4, "AppIconThemeServices"

    move-object/from16 v0, v40

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_37

    move-object/from16 v39, v40

    .line 1261
    .end local v40    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    .restart local v39    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    :goto_34
    if-nez v64, :cond_2b

    .line 1262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1267
    :cond_2b
    invoke-virtual/range {v117 .. v117}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v100

    .line 1268
    .local v100, "safeMode":Z
    if-eqz v100, :cond_36

    .line 1269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1271
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1278
    :goto_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v83

    .end local v83    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v83, Lcom/android/server/MmsServiceBroker;

    .line 1283
    .restart local v83    # "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_4e
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_30

    .line 1288
    :goto_36
    if-eqz v78, :cond_2c

    .line 1290
    :try_start_4f
    invoke-virtual/range {v78 .. v78}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_31

    .line 1297
    :cond_2c
    :goto_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1302
    :try_start_50
    invoke-virtual/range {v117 .. v117}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_32

    .line 1307
    :goto_38
    if-eqz v100, :cond_2d

    .line 1308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1314
    :cond_2d
    invoke-virtual/range {v117 .. v117}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v51

    .line 1315
    .local v51, "config":Landroid/content/res/Configuration;
    new-instance v82, Landroid/util/DisplayMetrics;

    invoke-direct/range {v82 .. v82}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1316
    .local v82, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/view/WindowManager;

    .line 1317
    .local v113, "w":Landroid/view/WindowManager;
    invoke-interface/range {v113 .. v113}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v82

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1318
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v51

    move-object/from16 v1, v82

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1322
    :try_start_51
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_33

    .line 1328
    :goto_39
    :try_start_52
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_34

    .line 1335
    :goto_3a
    :try_start_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v100

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_35

    .line 1341
    :goto_3b
    move-object/from16 v14, v86

    .line 1342
    .local v14, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v16, v7

    .line 1343
    .local v16, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v17, v6

    .line 1344
    .local v17, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v18, v2

    .line 1345
    .local v18, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v19, v52

    .line 1346
    .local v19, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v15, v89

    .line 1347
    .local v15, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v21, v114

    .line 1348
    .local v21, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v22, v71

    .line 1349
    .local v22, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v24, v76

    .line 1350
    .local v24, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v25, v57

    .line 1351
    .local v25, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v26, v92

    .line 1352
    .local v26, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v27, v49

    .line 1353
    .local v27, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v28, v108

    .line 1354
    .local v28, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v23, v104

    .line 1355
    .local v23, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v29, v43

    .line 1356
    .local v29, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v30, v73

    .line 1357
    .local v30, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v31, v106

    .line 1358
    .local v31, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v32, v80

    .line 1359
    .local v32, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v20, v45

    .line 1360
    .local v20, "audioServiceF":Landroid/media/AudioService;
    move-object/from16 v33, v83

    .line 1363
    .local v33, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v11, v84

    .line 1365
    .local v11, "momF":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    move-object/from16 v35, v0

    .line 1367
    .local v35, "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    move-object/from16 v34, v98

    .line 1370
    .local v34, "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    move-object/from16 v10, v41

    .line 1374
    .local v10, "appPcServiceF":Lcom/android/server/am/AppPcService;
    move-object/from16 v12, v39

    .line 1382
    .local v12, "appIconThemeServiceF":Lvibeui/content/res/AppIconThemeServices;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v13, v3

    invoke-direct/range {v8 .. v35}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/am/AppPcService;Lcom/mediatek/mom/MobileManagerService;Lvibeui/content/res/AppIconThemeServices;Landroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Landroid/media/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/mediatek/perfservice/IPerfServiceManager;Lcom/mediatek/recovery/RecoveryManagerService;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 1581
    :try_start_54
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_2e

    .line 1582
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    invoke-virtual {v4}, Lcom/mediatek/recovery/RecoveryManagerService;->stopBootMonitor()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_36

    .line 1588
    :cond_2e
    :goto_3c
    return-void

    .line 610
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v10    # "appPcServiceF":Lcom/android/server/am/AppPcService;
    .end local v11    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .end local v12    # "appIconThemeServiceF":Lvibeui/content/res/AppIconThemeServices;
    .end local v14    # "mountServiceF":Lcom/android/server/MountService;
    .end local v15    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v16    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v17    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v18    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v19    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v20    # "audioServiceF":Landroid/media/AudioService;
    .end local v21    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v22    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v23    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v24    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v25    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v26    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v27    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v28    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v29    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v30    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v31    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v32    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v33    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v34    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v35    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    .end local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v51    # "config":Landroid/content/res/Configuration;
    .end local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v82    # "metrics":Landroid/util/DisplayMetrics;
    .end local v94    # "notification":Landroid/app/INotificationManager;
    .end local v95    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v100    # "safeMode":Z
    .end local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v113    # "w":Landroid/view/WindowManager;
    .end local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_0
    move-exception v68

    .line 611
    .local v68, "e":Ljava/lang/Throwable;
    :goto_3d
    :try_start_55
    const-string v4, "SystemServer"

    const-string v5, "Failure starting Account Manager"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_55} :catch_1

    goto/16 :goto_0

    .line 684
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v68

    move-object/from16 v106, v107

    .line 685
    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v68, "e":Ljava/lang/RuntimeException;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :goto_3e
    const-string v4, "System"

    const-string v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v4, "System"

    const-string v5, "************ Failure starting core service"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 689
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    if-eqz v4, :cond_1

    .line 690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mRecoveryManagerService:Lcom/mediatek/recovery/RecoveryManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v68

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/recovery/RecoveryManagerService;->handleException(Ljava/lang/RuntimeException;Z)V

    goto/16 :goto_6

    .line 615
    .end local v68    # "e":Ljava/lang/RuntimeException;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_2f
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 624
    :catch_2
    move-exception v68

    .line 625
    .local v68, "e":Ljava/lang/Throwable;
    :goto_3f
    :try_start_56
    const-string v4, "Failure creating MobileManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_56 .. :try_end_56} :catch_1

    goto/16 :goto_2

    .line 653
    .end local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v68    # "e":Ljava/lang/Throwable;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v116    # "watchdog":Lcom/android/server/Watchdog;
    :cond_30
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_3

    :cond_31
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 672
    :cond_32
    :try_start_57
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_33

    .line 673
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 684
    :catch_3
    move-exception v68

    move-object/from16 v54, v55

    .end local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v73, v74

    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v111, v112

    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    goto :goto_3e

    .line 674
    .end local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "vibrator":Lcom/android/server/VibratorService;
    :cond_33
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.bluetooth"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 676
    const-string v4, "SystemServer"

    const-string v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 677
    :cond_34
    if-eqz v59, :cond_35

    .line 678
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 680
    :cond_35
    const-string v4, "SystemServer"

    const-string v5, "Bluetooth Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v48, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v48

    invoke-direct {v0, v3}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_57
    .catch Ljava/lang/RuntimeException; {:try_start_57 .. :try_end_57} :catch_3

    .line 682
    .end local v47    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v48, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_58
    const-string v4, "bluetooth_manager"

    move-object/from16 v0, v48

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_58 .. :try_end_58} :catch_53

    move-object/from16 v47, v48

    .end local v48    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v47    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_5

    .line 716
    .end local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .end local v116    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v94    # "notification":Landroid/app/INotificationManager;
    .restart local v95    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4
    move-exception v68

    .line 717
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 724
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v68

    .line 725
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 732
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v68

    .line 733
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 747
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v68

    .line 748
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 755
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v68

    .line 756
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 773
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v68

    .line 774
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 791
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v68

    .line 792
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 801
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v68

    .line 802
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 811
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v68

    .line 812
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 821
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v68

    .line 822
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 831
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v68

    .line 832
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 839
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v68

    .line 840
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 850
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v68

    move-object/from16 v2, v88

    .line 851
    .end local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 872
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v68

    .line 873
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_48
    const-string v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 881
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v68

    .line 882
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 890
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v68

    .line 891
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t start EPDG service:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v68

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 900
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v68

    .line 901
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "Failure starting RNS Service"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .line 913
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v68

    .line 914
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 930
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v68

    .line 931
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 937
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v68

    .line 938
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 953
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v68

    .line 954
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_49
    const-string v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 961
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v68

    .line 962
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_4a
    const-string v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 971
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v68

    .line 972
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 980
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v68

    .line 981
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting Search Engine Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 990
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v68

    .line 991
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1000
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v68

    .line 1001
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_4b
    const-string v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1010
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v68

    .line 1011
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_4c
    const-string v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 1022
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v68

    .line 1023
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "starting AudioProfile Service"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 1033
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v68

    .line 1034
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "SystemServer"

    const-string v5, "starting SensorHub Service"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 1049
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v68

    .line 1050
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1067
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v68

    .line 1068
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_4d
    const-string v4, "SystemServer"

    const-string v5, "Failure starting SerialService"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 1097
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v68

    .line 1098
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1109
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v68

    .line 1110
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1117
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v68

    .line 1118
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1127
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v68

    .line 1128
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_4e
    const-string v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1136
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v68

    .line 1137
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1151
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v68

    .line 1152
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_4f
    const-string v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1177
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v68

    .line 1178
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_50
    const-string v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1188
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v68

    .line 1189
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1205
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v68

    .line 1206
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_51
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting PerfMgrStateNotifier"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_30

    .line 1221
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v68

    .line 1222
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_52
    const-string v4, "SystemServer"

    const-string v5, "perfservice Failure starting PerfService"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_31

    .line 1234
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v68

    .line 1235
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_53
    const-string v4, "SystemServer"

    const-string v5, "Failure starting MtkHdmiManager"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 1246
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v68

    .line 1247
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_54
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting AppPcService"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 1256
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v68

    .line 1257
    .restart local v68    # "e":Ljava/lang/Throwable;
    :goto_55
    const-string v4, "SystemServer"

    const-string v5, "FAIL starting appIconThemeServices"

    move-object/from16 v0, v68

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 1274
    .end local v68    # "e":Ljava/lang/Throwable;
    .restart local v100    # "safeMode":Z
    :cond_36
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_35

    .line 1284
    :catch_30
    move-exception v68

    .line 1285
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 1291
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v68

    .line 1292
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1303
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v68

    .line 1304
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1323
    .end local v68    # "e":Ljava/lang/Throwable;
    .restart local v51    # "config":Landroid/content/res/Configuration;
    .restart local v82    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v113    # "w":Landroid/view/WindowManager;
    :catch_33
    move-exception v68

    .line 1324
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1329
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v68

    .line 1330
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1336
    .end local v68    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v68

    .line 1337
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 1584
    .end local v68    # "e":Ljava/lang/Throwable;
    .restart local v10    # "appPcServiceF":Lcom/android/server/am/AppPcService;
    .restart local v11    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .restart local v12    # "appIconThemeServiceF":Lvibeui/content/res/AppIconThemeServices;
    .restart local v14    # "mountServiceF":Lcom/android/server/MountService;
    .restart local v15    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .restart local v16    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .restart local v17    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .restart local v18    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v19    # "connectivityF":Lcom/android/server/ConnectivityService;
    .restart local v20    # "audioServiceF":Landroid/media/AudioService;
    .restart local v21    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v22    # "immF":Lcom/android/server/InputMethodManagerService;
    .restart local v23    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v24    # "locationF":Lcom/android/server/LocationManagerService;
    .restart local v25    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .restart local v26    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v27    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .restart local v28    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .restart local v29    # "atlasF":Lcom/android/server/AssetAtlasService;
    .restart local v30    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .restart local v31    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .restart local v32    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .restart local v33    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .restart local v34    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v35    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    :catch_36
    move-exception v68

    .line 1585
    .restart local v68    # "e":Ljava/lang/Throwable;
    const-string v4, "Failure Stop Boot Monitor"

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 1256
    .end local v10    # "appPcServiceF":Lcom/android/server/am/AppPcService;
    .end local v11    # "momF":Lcom/mediatek/mom/MobileManagerService;
    .end local v12    # "appIconThemeServiceF":Lvibeui/content/res/AppIconThemeServices;
    .end local v14    # "mountServiceF":Lcom/android/server/MountService;
    .end local v15    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v16    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v17    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v18    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v19    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v20    # "audioServiceF":Landroid/media/AudioService;
    .end local v21    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v22    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v23    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v24    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v25    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v26    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v27    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v28    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v29    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v30    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v31    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v32    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v33    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v34    # "perfServiceF":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v35    # "recoveryF":Lcom/mediatek/recovery/RecoveryManagerService;
    .end local v39    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    .end local v51    # "config":Landroid/content/res/Configuration;
    .end local v68    # "e":Ljava/lang/Throwable;
    .end local v82    # "metrics":Landroid/util/DisplayMetrics;
    .end local v100    # "safeMode":Z
    .end local v113    # "w":Landroid/view/WindowManager;
    .restart local v40    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    :catch_37
    move-exception v68

    move-object/from16 v39, v40

    .end local v40    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    .restart local v39    # "appIconThemeServices":Lvibeui/content/res/AppIconThemeServices;
    goto :goto_55

    .line 1246
    .end local v41    # "appPcService":Lcom/android/server/am/AppPcService;
    .restart local v42    # "appPcService":Lcom/android/server/am/AppPcService;
    :catch_38
    move-exception v68

    move-object/from16 v41, v42

    .end local v42    # "appPcService":Lcom/android/server/am/AppPcService;
    .restart local v41    # "appPcService":Lcom/android/server/am/AppPcService;
    goto :goto_54

    .line 1234
    .end local v69    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v70    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    :catch_39
    move-exception v68

    move-object/from16 v69, v70

    .end local v70    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    .restart local v69    # "hdmiManager":Lcom/mediatek/hdmi/MtkHdmiManagerService;
    goto/16 :goto_53

    .line 1221
    .end local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v99    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    :catch_3a
    move-exception v68

    move-object/from16 v98, v99

    .end local v99    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    goto/16 :goto_52

    .line 1205
    .end local v95    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v96    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    :catch_3b
    move-exception v68

    move-object/from16 v95, v96

    .end local v96    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v95    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    goto/16 :goto_51

    .line 1177
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_3c
    move-exception v68

    move-object/from16 v80, v81

    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_50

    .line 1151
    .end local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v44    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_3d
    move-exception v68

    move-object/from16 v43, v44

    .end local v44    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_4f

    .line 1127
    .end local v49    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v50    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_3e
    move-exception v68

    move-object/from16 v49, v50

    .end local v50    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v49    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_4e

    .line 1067
    .end local v101    # "serial":Lcom/android/server/SerialService;
    .restart local v102    # "serial":Lcom/android/server/SerialService;
    :catch_3f
    move-exception v68

    move-object/from16 v101, v102

    .end local v102    # "serial":Lcom/android/server/SerialService;
    .restart local v101    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_4d

    .line 1010
    .end local v45    # "audioService":Landroid/media/AudioService;
    .restart local v46    # "audioService":Landroid/media/AudioService;
    :catch_40
    move-exception v68

    move-object/from16 v45, v46

    .end local v46    # "audioService":Landroid/media/AudioService;
    .restart local v45    # "audioService":Landroid/media/AudioService;
    goto/16 :goto_4c

    .line 1000
    .end local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v115    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_41
    move-exception v68

    move-object/from16 v114, v115

    .end local v115    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_4b

    .line 961
    .end local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v58    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_42
    move-exception v68

    move-object/from16 v57, v58

    .end local v58    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_4a

    .line 953
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    :catch_43
    move-exception v68

    move-object/from16 v76, v77

    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_49

    .line 872
    .end local v52    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v53    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_44
    move-exception v68

    move-object/from16 v52, v53

    .end local v53    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v52    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_48

    .line 850
    :catch_45
    move-exception v68

    goto/16 :goto_47

    .line 839
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v91    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_46
    move-exception v68

    move-object/from16 v6, v91

    .end local v91    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_46

    .line 831
    .end local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_47
    move-exception v68

    move-object/from16 v89, v90

    .end local v90    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v89    # "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_45

    .line 821
    .end local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v109    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_48
    move-exception v68

    move-object/from16 v108, v109

    .end local v109    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_44

    .line 791
    .end local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v105    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_49
    move-exception v68

    move-object/from16 v104, v105

    .end local v105    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_43

    .line 773
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_4a
    move-exception v68

    move-object/from16 v78, v79

    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_42

    .line 764
    :catch_4b
    move-exception v4

    goto/16 :goto_c

    .line 747
    .end local v86    # "mountService":Lcom/android/server/MountService;
    .restart local v87    # "mountService":Lcom/android/server/MountService;
    :catch_4c
    move-exception v68

    move-object/from16 v86, v87

    .end local v87    # "mountService":Lcom/android/server/MountService;
    .restart local v86    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_41

    .line 716
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v72    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_4d
    move-exception v68

    move-object/from16 v71, v72

    .end local v72    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_40

    .line 684
    .end local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v94    # "notification":Landroid/app/INotificationManager;
    .end local v95    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .end local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .end local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_4e
    move-exception v68

    goto/16 :goto_3e

    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_4f
    move-exception v68

    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v36, v37

    .end local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_3e

    .end local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v85    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_50
    move-exception v68

    move-object/from16 v84, v85

    .end local v85    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_3e

    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "vibrator":Lcom/android/server/VibratorService;
    :catch_51
    move-exception v68

    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v111, v112

    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3e

    .end local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "vibrator":Lcom/android/server/VibratorService;
    :catch_52
    move-exception v68

    move-object/from16 v54, v55

    .end local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v111, v112

    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3e

    .end local v47    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v111    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v48    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v116    # "watchdog":Lcom/android/server/Watchdog;
    :catch_53
    move-exception v68

    move-object/from16 v54, v55

    .end local v55    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v54    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v106, v107

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v73, v74

    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v47, v48

    .end local v48    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v47    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v111, v112

    .end local v112    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v111    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_3e

    .line 624
    .end local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .end local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v116    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v85    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_54
    move-exception v68

    move-object/from16 v84, v85

    .end local v85    # "mom":Lcom/mediatek/mom/MobileManagerService;
    .restart local v84    # "mom":Lcom/mediatek/mom/MobileManagerService;
    goto/16 :goto_3f

    .line 610
    .end local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :catch_55
    move-exception v68

    move-object/from16 v36, v37

    .end local v37    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v36    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_3d

    .end local v107    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v43    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v57    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v94    # "notification":Landroid/app/INotificationManager;
    .restart local v95    # "perfMgrNotifier":Lcom/android/server/PerfMgrStateNotifier;
    .restart local v98    # "perfServiceMgr":Lcom/mediatek/perfservice/IPerfServiceManager;
    .restart local v104    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v106    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v108    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v114    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_37
    move-object/from16 v2, v88

    .end local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_19

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_38
    move-object/from16 v2, v88

    .end local v88    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_32
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1608
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1609
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1612
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1613
    return-void
.end method

.method static final testSystemServerANR(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1592
    const/4 v1, 0x0

    .line 1593
    .local v1, "ret":Landroid/content/ComponentName;
    const-string v2, "ANR_DEBUG"

    const-string v3, "=== Start BadService2 ==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.badservicesysserver"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1595
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.badservicesysserver"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1596
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1598
    if-eqz v1, :cond_0

    .line 1599
    const-string v2, "ANR_DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=== result to start BadService2 === Name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :goto_0
    return-object v1

    .line 1601
    :cond_0
    const-string v2, "ANR_DEBUG"

    const-string v3, "=== result to start BadService2 === Name: Null "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
