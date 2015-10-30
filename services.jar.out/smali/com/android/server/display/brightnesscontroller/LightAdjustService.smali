.class public Lcom/android/server/display/brightnesscontroller/LightAdjustService;
.super Ljava/lang/Object;
.source "LightAdjustService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;,
        Lcom/android/server/display/brightnesscontroller/LightAdjustService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DAY_PROFILE_ACTION:Ljava/lang/String; = "com.android.server.display.intent.DAY_PROFILE"

.field private static final LOGTAG:Ljava/lang/String; = "AUTOADJUST"

.field private static final NIGHT_PROFILE_ACTION:Ljava/lang/String; = "com.android.server.display.intent.NIGHT_PROFILE"


# instance fields
.field private final DAY_INDEX:I

.field private final NIGHT_INDEX:I

.field mBootSetDelayRunnable:Ljava/lang/Runnable;

.field private mComputedNightMode:Z

.field private mContext:Landroid/content/Context;

.field private mInitSettings:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsAutoBrightnessMode:Z

.field private mIsLastSUBmode:Z

.field private mIsLastUBmode:Z

.field private mIsServiceReady:Z

.field private mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

.field private mScreenAutoBrightnessAdjustmentSetting:F

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessSetting:I

.field private mServiceSettings:Lcom/android/server/display/brightnesscontroller/ServiceSettings;

.field private mSettingsObserver:Lcom/android/server/display/brightnesscontroller/LightAdjustService$SettingsObserver;

.field private mTimeSetDelayHandler:Landroid/os/Handler;

.field mTimeSetDelayRunnable:Ljava/lang/Runnable;

.field private final mTwilight:Lcom/android/server/twilight/TwilightManager;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;

.field private myBroadcastReceiver:Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsAutoBrightnessMode:Z

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mScreenBrightnessModeSetting:I

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 50
    iput v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->DAY_INDEX:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->NIGHT_INDEX:I

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mTimeSetDelayHandler:Landroid/os/Handler;

    .line 53
    iput-boolean v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsServiceReady:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsLastUBmode:Z

    .line 156
    iput-boolean v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsLastSUBmode:Z

    .line 174
    new-instance v0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService$1;-><init>(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 357
    new-instance v0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService$2;-><init>(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mTimeSetDelayRunnable:Ljava/lang/Runnable;

    .line 364
    new-instance v0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService$3;-><init>(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mBootSetDelayRunnable:Ljava/lang/Runnable;

    .line 56
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    .line 57
    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/twilight/TwilightManager;

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    .line 60
    new-instance v0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;-><init>(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->myBroadcastReceiver:Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 64
    new-instance v0, Lcom/android/server/display/brightnesscontroller/ServiceSettings;

    invoke-direct {v0, p1}, Lcom/android/server/display/brightnesscontroller/ServiceSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mServiceSettings:Lcom/android/server/display/brightnesscontroller/ServiceSettings;

    .line 65
    new-instance v0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mServiceSettings:Lcom/android/server/display/brightnesscontroller/ServiceSettings;

    invoke-direct {v0, p1, v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;-><init>(Landroid/content/Context;Lcom/android/server/display/brightnesscontroller/ServiceSettings;)V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->updateSettingsLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->updateMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mTimeSetDelayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->updateProfileAndAlarm()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/display/brightnesscontroller/LightAdjustService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjustService;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsServiceReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsAutoBrightnessMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->refreshBrightnessScreenOn()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsLastSUBmode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->refreshBrightnessScreenOff()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/brightnesscontroller/LightAdjustService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjustService;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->refreshProfileAndAlarm(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->cancelNightProfileAlarm()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->cancelDayProfileAlarm()V

    return-void
.end method

.method private cancelDayProfileAlarm()V
    .locals 6

    .prologue
    .line 433
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.display.intent.DAY_PROFILE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 435
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "AUTOADJUST"

    const-string v4, "cancelDayProfileAlarm fuxy"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 439
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 440
    return-void
.end method

.method private cancelNightProfileAlarm()V
    .locals 6

    .prologue
    .line 403
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.display.intent.NIGHT_PROFILE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 405
    .local v2, "sender":Landroid/app/PendingIntent;
    const-string v3, "AUTOADJUST"

    const-string v4, "cancelNightProfileAlarm fuxy"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 409
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 410
    return-void
.end method

.method private enterAutoModeSetBrightness()V
    .locals 2

    .prologue
    .line 217
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsAutoBrightnessMode:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setAutoBrightnessMode(Z)V

    .line 219
    const-string v0, "AUTOADJUST"

    const-string v1, "enable lightsensor adjust"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setBrightnessLocked(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->isLightSensorEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->startGenerate()V

    .line 227
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->updateProfileAndAlarm()V

    .line 230
    :cond_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->reCalcateLightSensorSample()V

    goto :goto_0
.end method

.method private exitAutoModeSetBrightness()V
    .locals 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsAutoBrightnessMode:Z

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setAutoBrightnessMode(Z)V

    .line 235
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->setBacklightValueImmediately(I)V

    .line 236
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setBrightnessLocked(Z)V

    .line 237
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsLastSUBmode:Z

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->stopGenerate()V

    .line 241
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsServiceReady:Z

    if-eqz v0, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->cancelNightProfileAlarm()V

    .line 243
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->cancelDayProfileAlarm()V

    .line 247
    :cond_1
    return-void
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 256
    move v0, p1

    .line 258
    .local v0, "brightnessMode":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 262
    :goto_0
    return v0

    .line 260
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getDefaultBrightness()I
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getMaximumScreenBrightnessSetting()I
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getScreenBrightness()I
    .locals 4

    .prologue
    .line 206
    const/16 v0, 0x66

    .line 208
    .local v0, "screenBrightness":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 212
    :goto_0
    const-string v1, "AUTOADJUST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get brightness setting value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return v0

    .line 210
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isAutoAdjustEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 250
    invoke-direct {p0, v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->getBrightnessMode(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 252
    .local v0, "checked":Z
    :goto_0
    return v0

    .end local v0    # "checked":Z
    :cond_0
    move v0, v1

    .line 250
    goto :goto_0
.end method

.method private isDayTime()Z
    .locals 8

    .prologue
    .line 443
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 444
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 445
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 446
    .local v2, "hours":I
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 447
    .local v3, "minutes":I
    mul-int/lit8 v6, v2, 0x3c

    add-int v5, v6, v3

    .line 448
    .local v5, "totalMinutes":I
    const/16 v4, 0x186

    .line 449
    .local v4, "startTime":I
    const/16 v1, 0x492

    .line 450
    .local v1, "endTime":I
    const/16 v6, 0x186

    if-lt v5, v6, :cond_0

    const/16 v6, 0x492

    if-gt v5, v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private profileChanged()V
    .locals 2

    .prologue
    .line 290
    const-string v0, "AUTOADJUST"

    const-string v1, "--> Profile Changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->initProfiles()V

    .line 293
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsAutoBrightnessMode:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->updateBrightnessUser()V

    .line 297
    :cond_0
    return-void
.end method

.method private refreshBrightnessScreenOff()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "AUTOADJUST"

    const-string v1, "refreshBrightnessScreenOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->stopGenerate()V

    .line 355
    return-void
.end method

.method private refreshBrightnessScreenOn()V
    .locals 2

    .prologue
    .line 348
    const-string v0, "AUTOADJUST"

    const-string v1, "refreshBrightnessScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->startGenerate()V

    .line 350
    return-void
.end method

.method private refreshProfileAndAlarm(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    .line 474
    if-ne p1, v1, :cond_2

    .line 475
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mServiceSettings:Lcom/android/server/display/brightnesscontroller/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->getProfileIndex()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 476
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->NIGHT_PROFILE:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-direct {p0, v0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->setProfileMode(Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;)V

    .line 477
    const-string v0, "AUTOADJUST"

    const-string v1, "enter Backlight Night Profile fuxy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->setDayProfileAlarm()V

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 480
    :cond_2
    if-nez p1, :cond_1

    .line 481
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mServiceSettings:Lcom/android/server/display/brightnesscontroller/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->getProfileIndex()I

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->DAYTIME_PROFILE:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-direct {p0, v0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->setProfileMode(Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;)V

    .line 483
    const-string v0, "AUTOADJUST"

    const-string v1, "enter Backlight Day Profile fuxy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->setNightProfileAlarm()V

    goto :goto_0
.end method

.method private setBacklightValueImmediately(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setBacklightValueImmediately(I)V

    .line 267
    return-void
.end method

.method private setDayProfileAlarm()V
    .locals 11

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x0

    const/4 v8, 0x6

    .line 413
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.server.display.intent.DAY_PROFILE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    const/high16 v6, 0x10000000

    invoke-static {v5, v9, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 415
    .local v4, "sender":Landroid/app/PendingIntent;
    const-string v5, "AUTOADJUST"

    const-string v6, "setDayProfileAlarm fuxy"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v5, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 419
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 420
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 421
    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 422
    .local v2, "hours":I
    if-le v2, v8, :cond_0

    .line 423
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v8, v5}, Ljava/util/Calendar;->set(II)V

    .line 425
    :cond_0
    invoke-virtual {v1, v10, v8}, Ljava/util/Calendar;->set(II)V

    .line 426
    const/16 v5, 0xc

    const/16 v6, 0x1e

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 427
    const/16 v5, 0xd

    invoke-virtual {v1, v5, v9}, Ljava/util/Calendar;->set(II)V

    .line 428
    const/16 v5, 0xe

    invoke-virtual {v1, v5, v9}, Ljava/util/Calendar;->set(II)V

    .line 429
    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 430
    return-void
.end method

.method private setNightProfileAlarm()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x0

    .line 373
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.server.display.intent.NIGHT_PROFILE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 375
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    const/high16 v6, 0x10000000

    invoke-static {v5, v8, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 376
    .local v4, "sender":Landroid/app/PendingIntent;
    const-string v5, "AUTOADJUST"

    const-string v6, "setNightProfileAlarm fuxy"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v5, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 380
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 381
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 383
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 395
    .local v2, "hours":I
    const/16 v5, 0x13

    invoke-virtual {v1, v9, v5}, Ljava/util/Calendar;->set(II)V

    .line 396
    const/16 v5, 0xc

    const/16 v6, 0x1e

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 397
    const/16 v5, 0xd

    invoke-virtual {v1, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 398
    const/16 v5, 0xe

    invoke-virtual {v1, v5, v8}, Ljava/util/Calendar;->set(II)V

    .line 399
    const/4 v5, 0x1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 400
    return-void
.end method

.method private setProfileMode(Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;)V
    .locals 2
    .param p1, "type"    # Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    .prologue
    .line 270
    invoke-virtual {p1}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->ordinal()I

    move-result v1

    .line 272
    .local v1, "index":I
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->setProfile(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateBrightnessUser()V
    .locals 2

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->getScreenBrightnessValue()I

    move-result v0

    .line 345
    .local v0, "value":I
    invoke-direct {p0, v0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->setBacklightValueImmediately(I)V

    .line 346
    return-void
.end method

.method private updateMode()V
    .locals 4

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    .line 183
    .local v0, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mComputedNightMode:Z

    .line 185
    const-string v1, "AUTOADJUST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mComputedNightMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-boolean v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mComputedNightMode:Z

    if-eqz v1, :cond_1

    .line 188
    sget-object v1, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->NIGHT_PROFILE:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-direct {p0, v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->setProfileMode(Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    sget-object v1, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->DAYTIME_PROFILE:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-direct {p0, v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->setProfileMode(Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;)V

    goto :goto_0
.end method

.method private updateProfileAndAlarm()V
    .locals 2

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->isDayTime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mServiceSettings:Lcom/android/server/display/brightnesscontroller/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->getProfileIndex()I

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->DAYTIME_PROFILE:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-direct {p0, v0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->setProfileMode(Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;)V

    .line 457
    const-string v0, "AUTOADJUST"

    const-string v1, "enter Backlight Day Profile fuxy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsServiceReady:Z

    if-eqz v0, :cond_1

    .line 460
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->setNightProfileAlarm()V

    .line 471
    :cond_1
    :goto_0
    return-void

    .line 463
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mServiceSettings:Lcom/android/server/display/brightnesscontroller/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->getProfileIndex()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 464
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->NIGHT_PROFILE:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-direct {p0, v0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->setProfileMode(Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;)V

    .line 465
    const-string v0, "AUTOADJUST"

    const-string v1, "enter Backlight Night Profile fuxy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsServiceReady:Z

    if-eqz v0, :cond_1

    .line 468
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->setDayProfileAlarm()V

    goto :goto_0
.end method

.method private updateSettingsLocked()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 115
    iget-object v6, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 116
    .local v3, "resolver":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 118
    .local v1, "oldScreenAutoBrightnessAdjustmentSetting":F
    const-string v6, "screen_auto_brightness_adj"

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-static {v3, v6, v7, v8}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v6

    iput v6, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mScreenAutoBrightnessAdjustmentSetting:F

    .line 121
    iget v6, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mScreenAutoBrightnessAdjustmentSetting:F

    cmpl-float v6, v1, v6

    if-eqz v6, :cond_0

    .line 122
    iget v6, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mScreenAutoBrightnessAdjustmentSetting:F

    invoke-virtual {p0, v6}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->setBrightnessAdj(F)V

    .line 124
    :cond_0
    iget v2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mScreenBrightnessModeSetting:I

    .line 125
    .local v2, "oldScreenBrightnessMode":I
    iget-object v6, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_brightness_mode"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mScreenBrightnessModeSetting:I

    .line 128
    iget v6, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mScreenBrightnessModeSetting:I

    if-eq v2, v6, :cond_1

    .line 129
    iget v6, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mScreenBrightnessModeSetting:I

    if-ne v6, v4, :cond_2

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsAutoBrightnessMode:Z

    .line 132
    iget-boolean v4, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsAutoBrightnessMode:Z

    if-eqz v4, :cond_3

    .line 133
    const-string v0, "Enter AutoMode"

    .line 137
    .local v0, "logString":Ljava/lang/String;
    :goto_1
    const-string v4, "AUTOADJUST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "###Mode Changed--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v4}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->forceStopAdjustBrightness()V

    .line 139
    iget-boolean v4, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsAutoBrightnessMode:Z

    if-eqz v4, :cond_4

    .line 140
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->enterAutoModeSetBrightness()V

    .line 145
    .end local v0    # "logString":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v4, v5

    .line 129
    goto :goto_0

    .line 135
    :cond_3
    const-string v0, "Exit AutoMode"

    .restart local v0    # "logString":Ljava/lang/String;
    goto :goto_1

    .line 142
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->exitAutoModeSetBrightness()V

    goto :goto_2
.end method


# virtual methods
.method public setBrightnessAdj(F)V
    .locals 2
    .param p1, "adj"    # F

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->getProfile()Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->setTemporaryScreenAutoBrightnessAdjSettingOverride(F)Z

    move-result v0

    .line 149
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->refreshBrightness()V

    .line 153
    :cond_0
    return-void
.end method

.method public setProfile(I)V
    .locals 3
    .param p1, "profile_index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mServiceSettings:Lcom/android/server/display/brightnesscontroller/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->getProfileCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 280
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not in [0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mServiceSettings:Lcom/android/server/display/brightnesscontroller/ServiceSettings;

    invoke-virtual {v2}, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->getProfileCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mServiceSettings:Lcom/android/server/display/brightnesscontroller/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->getProfileIndex()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mServiceSettings:Lcom/android/server/display/brightnesscontroller/ServiceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->setProfileIndex(I)V

    .line 285
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->profileChanged()V

    .line 287
    :cond_2
    return-void
.end method

.method public systemReady()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 70
    iput-boolean v2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsServiceReady:Z

    .line 72
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 74
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v3, Lcom/android/server/display/brightnesscontroller/LightAdjustService$SettingsObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/server/display/brightnesscontroller/LightAdjustService$SettingsObserver;-><init>(Lcom/android/server/display/brightnesscontroller/LightAdjustService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mSettingsObserver:Lcom/android/server/display/brightnesscontroller/LightAdjustService$SettingsObserver;

    .line 75
    const-string v3, "screen_brightness_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mSettingsObserver:Lcom/android/server/display/brightnesscontroller/LightAdjustService$SettingsObserver;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 77
    const-string v3, "screen_auto_brightness_adj"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mSettingsObserver:Lcom/android/server/display/brightnesscontroller/LightAdjustService$SettingsObserver;

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 80
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.android.server.display.intent.NIGHT_PROFILE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "com.android.server.display.intent.DAY_PROFILE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->myBroadcastReceiver:Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-interface {v3, v4, v5}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 94
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v3}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->initCallback()V

    .line 96
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->updateSettingsLocked()V

    .line 98
    const-string v3, "smart_ultra_bright_mode_enabled"

    const/4 v4, -0x2

    invoke-static {v1, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 100
    .local v0, "bIsSUBmode":Z
    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->updateBrightnessControllerState(ZZ)V

    .line 101
    return-void

    .end local v0    # "bIsSUBmode":Z
    :cond_0
    move v0, v2

    .line 98
    goto :goto_0
.end method

.method public updateBrightnessControllerState(ZZ)V
    .locals 2
    .param p1, "isUBmode"    # Z
    .param p2, "isSUBmode"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setBrightnessLocked(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v0, p2}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setSmartOutsideMode(Z)V

    .line 160
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->isAutoAdjustEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsLastUBmode:Z

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setAutoBrightnessMode(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->reCalcateLightSensorSample()V

    .line 170
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsLastUBmode:Z

    .line 171
    iput-boolean p2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsLastSUBmode:Z

    .line 172
    return-void

    .line 164
    :cond_1
    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setAutoBrightnessMode(Z)V

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v0, p2}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setLightsensorEnable(Z)V

    goto :goto_0
.end method
