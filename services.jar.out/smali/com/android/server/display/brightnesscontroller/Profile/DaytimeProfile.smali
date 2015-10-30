.class public Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;
.super Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;
.source "DaytimeProfile.java"


# instance fields
.field private brightness:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;-><init>(Landroid/content/Context;)V

    .line 12
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->DAYTIME_PROFILE:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;->mType:I

    .line 13
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;->initBrightnessValues()V

    .line 14
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;->initSmoothAdjustLevel()V

    .line 15
    return-void
.end method

.method private initBrightnessValues()V
    .locals 2

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;->mIsSecondaryLcd:Z

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;->mResources:Landroid/content/res/Resources;

    const v1, 0x1070043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;->brightness:[I

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;->mLux:[I

    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;->brightness:[I

    invoke-static {v0, v1}, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;->mSpline:Landroid/util/Spline;

    .line 24
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;->mResources:Landroid/content/res/Resources;

    const v1, 0x1070045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/DaytimeProfile;->brightness:[I

    goto :goto_0
.end method
