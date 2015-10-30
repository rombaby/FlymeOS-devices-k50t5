.class public Lcom/android/server/display/effect/DisplayEffectService;
.super Lcom/android/server/SystemService;
.source "DisplayEffectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/effect/DisplayEffectService$1;,
        Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;,
        Lcom/android/server/display/effect/DisplayEffectService$BinderService;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final NO_ERROR:I = 0x0

.field public static final SETMODE_STATUS_ERROR:I = 0x0

.field public static final SETMODE_STATUS_OK:I = 0x1

.field private static final mSupportedDisplayEffect:[Ljava/lang/String;


# instance fields
.field private TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mInitResult:Z

.field private mMode:I

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessSetting:I

.field private mSettingsObserver:Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;

.field private mSmartUltraBrightModeEnabled:Z

.field private mSmartUltraBrightModeTurnOn:Z

.field private mSupportedMode:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "cta"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ce"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v0, "DisplayEffectService"

    iput-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->TAG:Ljava/lang/String;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mMode:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mInitResult:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    .line 46
    iput-boolean v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeEnabled:Z

    .line 47
    iput-boolean v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeTurnOn:Z

    .line 61
    iput-object p1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    .line 62
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 63
    invoke-direct {p0}, Lcom/android/server/display/effect/DisplayEffectService;->init()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/effect/DisplayEffectService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/display/effect/DisplayEffectService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->checkMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/effect/DisplayEffectService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/effect/DisplayEffectService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/server/display/effect/DisplayEffectService;->updateSettings()V

    return-void
.end method

.method private checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    const-string v2, "lenovo.permission.MODIFY_DISPAY_EFFECT_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 343
    const/4 v1, 0x1

    .line 349
    :goto_0
    return v1

    .line 345
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display Effect Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkMode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 330
    const/4 v0, 0x1

    return v0
.end method

.method private enableSmartUltraBrightMode(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 404
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableSmartUltraBrightMode enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSmartUltraBrightModeTurnOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeTurnOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_mode"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 409
    .local v0, "displayMode":I
    if-nez p1, :cond_0

    .line 410
    iget-boolean v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeTurnOn:Z

    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService;->setModeFromSysInternal(I)I

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeEnabled:Z

    invoke-virtual {v2, v1, v3}, Landroid/os/PowerManagerInternal;->updateBrightnessControllerState(ZZ)V

    .line 425
    return-void

    .line 422
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private native getCurrentLevel_native(I)I
.end method

.method private native getMode_native()I
.end method

.method private native getSupportedDisplayEffect_native()[Ljava/lang/String;
.end method

.method private native getSupportedMaxLevel_native(I)I
.end method

.method private native getSupportedMode_native()[Ljava/lang/String;
.end method

.method private init()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 67
    invoke-static {}, Lcom/mediatek/pq/PictureQuality;->getLibStatus()Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 71
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v4, "display_mode"

    const/4 v6, 0x2

    invoke-static {v2, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 73
    .local v1, "initDisplayMode":I
    const-string v4, "smart_ultra_bright_mode_enabled"

    const/4 v6, -0x2

    invoke-static {v2, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeEnabled:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/server/display/effect/DisplayEffectService;->getSupportedModeInternal()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    .line 77
    sget-object v4, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_3

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v4, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/display/effect/DisplayEffectService;->getSupportedMaxLevelInternal(I)I

    move-result v3

    .line 80
    .local v3, "result":I
    iget-object v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get supported max level result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v3    # "result":I
    :cond_1
    move v4, v5

    .line 73
    goto :goto_1

    .line 82
    .restart local v0    # "i":I
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/display/effect/DisplayEffectService;->initDisplayEffect(I)V

    .line 85
    .end local v0    # "i":I
    :cond_3
    new-instance v4, Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v6}, Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;-><init>(Lcom/android/server/display/effect/DisplayEffectService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSettingsObserver:Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;

    .line 86
    const-string v4, "smart_ultra_bright_mode_enabled"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSettingsObserver:Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;

    invoke-virtual {v2, v4, v5, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 89
    const-string v4, "screen_brightness"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSettingsObserver:Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;

    invoke-virtual {v2, v4, v5, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 92
    const-string v4, "screen_brightness_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSettingsObserver:Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;

    invoke-virtual {v2, v4, v5, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method private initDisplayEffect(I)V
    .locals 10
    .param p1, "mode"    # I

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 98
    if-ne p1, v9, :cond_0

    .line 99
    const/4 p1, 0x2

    .line 101
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->setModeFromSettingsInternal(I)I

    move-result v3

    .line 102
    .local v3, "setModeResult":I
    iget-object v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initDisplayEffect set mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-eq v3, v7, :cond_1

    .line 105
    if-ne p1, v9, :cond_2

    .line 135
    :cond_1
    return-void

    .line 110
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 111
    const-string v4, "null"

    sget-object v5, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 110
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_4
    const-string v4, "inverse"

    sget-object v5, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 114
    iget-object v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 116
    .local v1, "level":I
    if-lez v1, :cond_3

    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/effect/DisplayEffectService;->setDisplayEffectLevelInternal(II)I

    move-result v2

    .line 118
    .local v2, "result":I
    if-ne v2, v7, :cond_3

    .line 119
    iget-object v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v5, "inverse display set fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 124
    .end local v1    # "level":I
    .end local v2    # "result":I
    :cond_5
    if-nez p1, :cond_3

    .line 125
    iget-object v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 127
    .restart local v1    # "level":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/effect/DisplayEffectService;->setDisplayEffectLevelInternal(II)I

    move-result v2

    .line 128
    .restart local v2    # "result":I
    if-ne v2, v7, :cond_3

    .line 129
    iget-object v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v5, "int display effect level failure."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private saveState(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 326
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save state key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method

.method private sendBroadcastToLauncher(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 243
    new-instance v0, Landroid/content/Intent;

    const-string v1, "len.intent.action.DISPLAY_EFFECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 245
    const-string v1, "state"

    const-string v2, "enter_ultra_bright_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 250
    return-void

    .line 247
    :cond_0
    const-string v1, "state"

    const-string v2, "exit_ultra_bright_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private native setDisplayEffectLevel_native(II)I
.end method

.method private native setMode_native(I)I
.end method

.method private updateSettings()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 375
    iget-object v5, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 376
    .local v4, "resolver":Landroid/content/ContentResolver;
    iget-boolean v3, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeEnabled:Z

    .line 377
    .local v3, "oldSmartUltraBrightModeEnabled":Z
    const-string v5, "smart_ultra_bright_mode_enabled"

    invoke-static {v4, v5, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeEnabled:Z

    .line 379
    iget-boolean v5, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeEnabled:Z

    if-eq v3, v5, :cond_0

    .line 380
    iget-boolean v5, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeEnabled:Z

    invoke-direct {p0, v5}, Lcom/android/server/display/effect/DisplayEffectService;->enableSmartUltraBrightMode(Z)V

    .line 383
    :cond_0
    iget v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mScreenBrightnessSetting:I

    .line 384
    .local v2, "oldScreenBrightnessSetting":I
    const-string v5, "screen_brightness"

    const/16 v7, 0x66

    invoke-static {v4, v5, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/effect/DisplayEffectService;->mScreenBrightnessSetting:I

    .line 387
    iget v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mScreenBrightnessModeSetting:I

    .line 388
    .local v1, "oldScreenBrightnessModeSetting":I
    const-string v5, "screen_brightness_mode"

    invoke-static {v4, v5, v6, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/effect/DisplayEffectService;->mScreenBrightnessModeSetting:I

    .line 392
    iget v5, p0, Lcom/android/server/display/effect/DisplayEffectService;->mScreenBrightnessSetting:I

    if-ne v2, v5, :cond_1

    iget v5, p0, Lcom/android/server/display/effect/DisplayEffectService;->mScreenBrightnessModeSetting:I

    if-eq v1, v5, :cond_2

    .line 394
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_mode"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 397
    .local v0, "displayMode":I
    const/4 v5, 0x5

    if-ne v0, v5, :cond_2

    .line 398
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/server/display/effect/DisplayEffectService;->setModeFromSettingsInternal(I)I

    .line 402
    .end local v0    # "displayMode":I
    :cond_2
    return-void

    .end local v1    # "oldScreenBrightnessModeSetting":I
    .end local v2    # "oldScreenBrightnessSetting":I
    :cond_3
    move v5, v6

    .line 377
    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 360
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 361
    return-void
.end method

.method public getCurrentLevelInternal(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 174
    sget-object v2, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 175
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 176
    .local v1, "value":I
    return v1
.end method

.method public getSupportedDisplayEffectInternal()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedMaxLevelInternal(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 166
    const/16 v0, 0x15

    .line 170
    :goto_0
    return v0

    .line 167
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 168
    const/16 v0, 0xa

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getSupportedModeInternal()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/server/display/effect/DisplayEffectService;->getSupportedMode_native()[Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "supportedDisplayMode":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 154
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 155
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get mode value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v3, "get supported mode is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v1, 0x0

    .end local v1    # "supportedDisplayMode":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 354
    const-string v0, "display_effect"

    new-instance v1, Lcom/android/server/display/effect/DisplayEffectService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;-><init>(Lcom/android/server/display/effect/DisplayEffectService;Lcom/android/server/display/effect/DisplayEffectService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/effect/DisplayEffectService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 355
    return-void
.end method

.method public setDisplayEffectLevelInternal(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "level"    # I

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "setDisplayEffectLevelResult":I
    sget-object v2, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 182
    const-string v2, "cta"

    sget-object v3, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    invoke-static {p2}, Lcom/mediatek/pq/PictureQuality;->setGammaIndex(I)V

    .line 188
    :cond_0
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 189
    sget-object v2, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 190
    sget-object v2, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 191
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    invoke-direct {p0, v0, p2}, Lcom/android/server/display/effect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    .line 196
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 184
    :cond_2
    const-string v2, "ce"

    sget-object v3, Lcom/android/server/display/effect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    invoke-static {p2}, Lcom/mediatek/pq/PictureQuality;->setSaturationIndex(I)V

    goto :goto_0
.end method

.method public setModeFromSettingsInternal(I)I
    .locals 9
    .param p1, "mode"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x5

    .line 200
    const/4 v2, -0x1

    .line 202
    .local v2, "setModeResult":I
    iget-object v3, p0, Lcom/android/server/display/effect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set mode from seting now, mode :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    if-eqz p1, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 208
    .local v0, "index":I
    packed-switch p1, :pswitch_data_0

    .line 219
    :goto_0
    :pswitch_0
    invoke-static {v0}, Lcom/mediatek/pq/PictureQuality;->setPictureMode(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    const/4 v2, 0x0

    .line 222
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->setMode_native(I)I

    .line 227
    .end local v0    # "index":I
    :cond_2
    :goto_1
    if-eq v2, v7, :cond_3

    .line 228
    iget v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mMode:I

    .line 229
    .local v1, "lastmode":I
    iput p1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mMode:I

    .line 230
    const-string v3, "display_mode"

    invoke-direct {p0, v3, p1}, Lcom/android/server/display/effect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    .line 231
    if-ne p1, v6, :cond_5

    .line 232
    iget-object v3, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeEnabled:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManagerInternal;->updateBrightnessControllerState(ZZ)V

    .line 233
    iget-object v3, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromBrightnessController(I)V

    .line 239
    .end local v1    # "lastmode":I
    :cond_3
    :goto_2
    return v2

    .line 210
    .restart local v0    # "index":I
    :pswitch_1
    const/4 v0, 0x0

    .line 211
    goto :goto_0

    .line 213
    :pswitch_2
    const/4 v0, 0x1

    .line 214
    goto :goto_0

    .line 216
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 223
    .end local v0    # "index":I
    :cond_4
    if-ne p1, v6, :cond_2

    .line 224
    invoke-static {v8}, Lcom/mediatek/pq/PictureQuality;->setPictureMode(I)Z

    .line 225
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->setMode_native(I)I

    move-result v2

    goto :goto_1

    .line 234
    .restart local v1    # "lastmode":I
    :cond_5
    if-ne v1, v6, :cond_3

    .line 235
    iget-object v3, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v3, v7}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromBrightnessController(I)V

    .line 236
    iget-object v3, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-boolean v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeEnabled:Z

    invoke-virtual {v3, v8, v4}, Landroid/os/PowerManagerInternal;->updateBrightnessControllerState(ZZ)V

    goto :goto_2

    .line 208
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setModeFromSysInternal(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x4

    .line 254
    const/4 v0, -0x1

    .line 255
    .local v0, "setModeResult":I
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->setMode_native(I)I

    move-result v0

    .line 256
    if-eq v0, v3, :cond_1

    .line 257
    if-ne p1, v2, :cond_2

    .line 258
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromBrightnessController(I)V

    .line 259
    invoke-direct {p0, v5}, Lcom/android/server/display/effect/DisplayEffectService;->sendBroadcastToLauncher(Z)V

    .line 260
    iput-boolean v5, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeTurnOn:Z

    .line 269
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mMode:I

    .line 271
    :cond_1
    return v0

    .line 261
    :cond_2
    iget v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mMode:I

    if-ne v1, v2, :cond_0

    if-eq p1, v2, :cond_0

    .line 263
    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    .line 264
    iget-object v1, p0, Lcom/android/server/display/effect/DisplayEffectService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v3}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromBrightnessController(I)V

    .line 266
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/server/display/effect/DisplayEffectService;->sendBroadcastToLauncher(Z)V

    .line 267
    iput-boolean v4, p0, Lcom/android/server/display/effect/DisplayEffectService;->mSmartUltraBrightModeTurnOn:Z

    goto :goto_0
.end method
