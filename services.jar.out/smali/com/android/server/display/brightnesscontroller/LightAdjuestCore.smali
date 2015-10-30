.class public Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;
.super Ljava/lang/Object;
.source "LightAdjuestCore.java"


# static fields
.field private static LOGTAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataGenerator:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

.field private mEnviromentalLightLevel:F

.field private mLockCurrentBrightness:Z

.field private mProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

.field private mServiceSettings:Lcom/android/server/display/brightnesscontroller/ServiceSettings;

.field private mSreenBrightnessManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "AUTOADJUST"

    sput-object v0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/brightnesscontroller/ServiceSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/android/server/display/brightnesscontroller/ServiceSettings;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mLockCurrentBrightness:Z

    .line 26
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mServiceSettings:Lcom/android/server/display/brightnesscontroller/ServiceSettings;

    .line 28
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->init()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    .prologue
    .line 11
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mEnviromentalLightLevel:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;
    .param p1, "x1"    # F

    .prologue
    .line 11
    iput p1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mEnviromentalLightLevel:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;)Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;FZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setBacklight(FZ)V

    return-void
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 119
    move v0, p1

    .line 121
    .local v0, "brightnessMode":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 125
    :goto_0
    return v0

    .line 123
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getCurrentProfileIndex()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mServiceSettings:Lcom/android/server/display/brightnesscontroller/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/ServiceSettings;->getProfileIndex()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mEnviromentalLightLevel:F

    .line 130
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->isInAutoAdjustMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mLockCurrentBrightness:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->initProfiles()V

    .line 132
    new-instance v0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;-><init>(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    .line 133
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->getInstance(Landroid/content/Context;)Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mDataGenerator:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    .line 134
    return-void

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInAutoAdjustMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->getBrightnessMode(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 114
    .local v0, "checked":Z
    :goto_0
    sget-object v1, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--isInAutoAdjustMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v0

    .end local v0    # "checked":Z
    :cond_0
    move v0, v1

    .line 112
    goto :goto_0
.end method

.method private setBacklight(FZ)V
    .locals 3
    .param p1, "lux"    # F
    .param p2, "immediate"    # Z

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mLockCurrentBrightness:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 176
    sget-object v0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    const-string v1, "--Brightness Locked--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    sget-object v0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call to setbrightness current lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", immediate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->setBrightness(FZ)V

    goto :goto_0
.end method


# virtual methods
.method public forceStopAdjustBrightness()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    const-string v1, "force stop--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->forceStopAdjust()V

    .line 109
    :cond_0
    return-void
.end method

.method public getEnviromentalLightLevel()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mEnviromentalLightLevel:F

    return v0
.end method

.method public getProfile()Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    return-object v0
.end method

.method public getScreenBrightnessValue()I
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    iget v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mEnviromentalLightLevel:F

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->getBrightnessValue(F)I

    move-result v0

    return v0
.end method

.method public initCallback()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mDataGenerator:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    new-instance v1, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore$1;-><init>(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;)V

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->init(Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$Callback;)V

    .line 157
    return-void
.end method

.method public initProfiles()V
    .locals 5

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->getCurrentProfileIndex()I

    move-result v1

    .line 42
    .local v1, "index":I
    packed-switch v1, :pswitch_data_0

    .line 52
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 53
    .local v0, "flag":Z
    :goto_1
    sget-object v2, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mProfile == null ---> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 44
    .end local v0    # "flag":Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->DAYTIME_PROFILE:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-static {v2, v3}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->getInstance(Landroid/content/Context;Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;)Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->NIGHT_PROFILE:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-static {v2, v3}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->getInstance(Landroid/content/Context;Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;)Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    goto :goto_0

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isLightSensorEnabled()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mDataGenerator:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    iget-boolean v0, v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    return v0
.end method

.method public isLockedBrightness()Z
    .locals 3

    .prologue
    .line 65
    sget-object v0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mLockCurrentBrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mLockCurrentBrightness:Z

    return v0
.end method

.method public reCalcateLightSensorSample()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mDataGenerator:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->reCalcateLightSensorSample()V

    .line 97
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->isCurrentBrightnessInit:Z

    .line 98
    return-void
.end method

.method public refreshBrightness()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mDataGenerator:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->refreshAutoBrightness()V

    .line 37
    return-void
.end method

.method public setAutoBrightnessMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mDataGenerator:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->setAutoBrightnessMode(Z)V

    .line 93
    return-void
.end method

.method public setBacklightValueImmediately(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 168
    if-lez p1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->updateCurrentBrightness(Ljava/lang/Integer;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->setBrightness(I)V

    .line 172
    return-void
.end method

.method public setBrightnessLocked(Z)V
    .locals 3
    .param p1, "lock"    # Z

    .prologue
    .line 57
    sget-object v0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set brightness locked ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-boolean p1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mLockCurrentBrightness:Z

    .line 59
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->isTaskRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->taskStop()V

    .line 62
    :cond_0
    return-void
.end method

.method public setLightsensorEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mDataGenerator:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->setLightSensorEnabled(Z)Z

    .line 75
    return-void
.end method

.method public setSmartOutsideMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mDataGenerator:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->setSmartOutsideMode(Z)V

    .line 89
    return-void
.end method

.method public startGenerate()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mDataGenerator:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->start()V

    .line 79
    return-void
.end method

.method public stopGenerate()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mDataGenerator:Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;->stop()V

    .line 83
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->forceStopAdjust()V

    .line 84
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->clearStateContext()V

    .line 85
    return-void
.end method
