.class public abstract Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;
.super Ljava/lang/Object;
.source "LightAdjustProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$1;,
        Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field protected static DEVICE_NAME:Ljava/lang/String; = null

.field public static final LCD_DEFAULT:Ljava/lang/String; = "hx8395a_dsi_vdo_tm"

.field public static final LCD_SECONDARY:Ljava/lang/String; = "hx8395a_dsi_vdo_boe"

.field private static final PATH:Ljava/lang/String; = "/proc/lcm_info"

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "AUTOADJUST"

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true

.field private static mActiveLightAudioProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

.field private static mDaytimeProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

.field private static mNightProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

.field static mScreenAutoBrightnessAdjustment:F


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mIsSecondaryLcd:Z

.field protected mLux:[I

.field protected final mResources:Landroid/content/res/Resources;

.field private mScreenBrightnessRangeMaximum:I

.field private mScreenBrightnessRangeMinimum:I

.field public mSmoothAdjustLevel:I

.field protected mSpline:Landroid/util/Spline;

.field protected mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenAutoBrightnessAdjustment:F

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->DEBUG:Z

    .line 209
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->DEVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSpline:Landroid/util/Spline;

    .line 24
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSmoothAdjustLevel:I

    .line 38
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->DAYTIME_PROFILE:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mType:I

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mIsSecondaryLcd:Z

    .line 121
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->DEVICE_NAME:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 122
    const-string v0, "/proc/lcm_info"

    invoke-static {v0}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->readEchoFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->DEVICE_NAME:Ljava/lang/String;

    .line 123
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVICE_NAME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->DEVICE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    const-string v0, "hx8395a_dsi_vdo_boe"

    sget-object v1, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->DEVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mIsSecondaryLcd:Z

    .line 128
    :cond_1
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mResources:Landroid/content/res/Resources;

    .line 130
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->init()V

    .line 131
    return-void
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 116
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method protected static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 13
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I

    .prologue
    const/high16 v12, 0x3fa00000    # 1.25f

    .line 77
    :try_start_0
    array-length v2, p1

    .line 78
    .local v2, "n":I
    new-array v5, v2, [F

    .line 79
    .local v5, "x":[F
    new-array v6, v2, [F

    .line 80
    .local v6, "y":[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p1, v8

    invoke-static {v8}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v7

    .line 81
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 82
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 83
    aget v7, p1, v1

    invoke-static {v7}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v6, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 87
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 88
    const-string v7, "AUTOADJUST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "v":F
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 90
    const-string v7, "AUTOADJUST"

    const-string v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    mul-float/2addr v4, v12

    goto :goto_1

    .line 94
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v4    # "v":F
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v7, "AUTOADJUST"

    const-string v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    const/4 v3, 0x0

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method

.method private getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, "name":Ljava/lang/String;
    const-string v3, "name=(.+?);"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 229
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 230
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 235
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;)Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    .prologue
    .line 41
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$1;->$SwitchMap$com$android$server$display$brightnesscontroller$Profile$LightAdjustProfile$PROFILE_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mActiveLightAudioProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    if-eqz v0, :cond_2

    .line 58
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mActiveLightAudioProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    .line 60
    :goto_1
    return-object v0

    .line 43
    :pswitch_0
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mDaytimeProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mDaytimeProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    .line 46
    :cond_0
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mDaytimeProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    sput-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mActiveLightAudioProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    goto :goto_0

    .line 49
    :pswitch_1
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mNightProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;

    invoke-direct {v0, p0}, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mNightProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    .line 52
    :cond_1
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mNightProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    sput-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mActiveLightAudioProfile:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    goto :goto_0

    .line 60
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 6

    .prologue
    const v4, 0x1070042

    .line 134
    iget-boolean v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mIsSecondaryLcd:Z

    if-nez v3, :cond_2

    .line 135
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mLux:[I

    .line 141
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mResources:Landroid/content/res/Resources;

    const v4, 0x10e0051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->clampAbsoluteBrightness(I)I

    move-result v2

    .line 144
    .local v2, "screenBrightnessSettingMinimum":I
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mResources:Landroid/content/res/Resources;

    const v4, 0x10e0055

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->clampAbsoluteBrightness(I)I

    move-result v1

    .line 147
    .local v1, "mScreenBrightnessDimConfig":I
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mResources:Landroid/content/res/Resources;

    const v4, 0x10e0056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->clampAbsoluteBrightness(I)I

    move-result v0

    .line 150
    .local v0, "mScreenBrightnessDarkConfig":I
    if-le v0, v1, :cond_0

    .line 151
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected config_screenBrightnessDark ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to be less than or equal to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config_screenBrightnessDim ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    if-le v0, v1, :cond_1

    .line 156
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected config_screenBrightnessDark ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to be less than or equal to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config_screenBrightnessSettingMinimum ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenBrightnessRangeMinimum:I

    .line 166
    const/16 v3, 0xff

    iput v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenBrightnessRangeMaximum:I

    .line 167
    return-void

    .line 137
    .end local v0    # "mScreenBrightnessDarkConfig":I
    .end local v1    # "mScreenBrightnessDimConfig":I
    .end local v2    # "screenBrightnessSettingMinimum":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mLux:[I

    goto/16 :goto_0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 108
    invoke-static {p0}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static readEchoFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 215
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 216
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 219
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getBrightnessValue(F)I
    .locals 8
    .param p1, "mAmbientLux"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 170
    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSpline:Landroid/util/Spline;

    if-eqz v4, :cond_2

    .line 171
    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSpline:Landroid/util/Spline;

    invoke-virtual {v4, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    .line 172
    .local v3, "value":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 174
    .local v1, "gamma":F
    sget v4, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenAutoBrightnessAdjustment:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    .line 176
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x40800000    # -1.0f

    sget v6, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenAutoBrightnessAdjustment:F

    neg-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Landroid/util/MathUtils;->pow(FF)F

    move-result v0

    .line 178
    .local v0, "adjGamma":F
    mul-float/2addr v1, v0

    .line 179
    sget-boolean v4, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 180
    const-string v4, "AUTOADJUST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAutoBrightness: adjGamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v0    # "adjGamma":F
    :cond_0
    cmpl-float v4, v1, v7

    if-eqz v4, :cond_1

    .line 185
    move v2, v3

    .line 186
    .local v2, "in":F
    invoke-static {v3, v1}, Landroid/util/MathUtils;->pow(FF)F

    move-result v3

    .line 187
    sget-boolean v4, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 188
    const-string v4, "AUTOADJUST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAutoBrightness: gamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", in="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", out="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v2    # "in":F
    :cond_1
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->clampScreenBrightness(I)I

    move-result v4

    .line 195
    .end local v1    # "gamma":F
    .end local v3    # "value":F
    :goto_0
    return v4

    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public getProfileType()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mType:I

    return v0
.end method

.method protected initSmoothAdjustLevel()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mLux:[I

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSpline:Landroid/util/Spline;

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mLux:[I

    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mLux:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    aget v0, v1, v2

    .line 202
    .local v0, "lux":I
    int-to-float v1, v0

    invoke-virtual {p0, v1}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->getBrightnessValue(F)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSmoothAdjustLevel:I

    .line 204
    .end local v0    # "lux":I
    :cond_0
    return-void
.end method

.method public setTemporaryScreenAutoBrightnessAdjSettingOverride(F)Z
    .locals 1
    .param p1, "adj"    # F

    .prologue
    .line 101
    sget v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 102
    sput p1, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mScreenAutoBrightnessAdjustment:F

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
