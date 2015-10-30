.class public Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;
.super Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;
.source "NightProfile.java"


# instance fields
.field private brightness:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;-><init>(Landroid/content/Context;)V

    .line 15
    sget-object v0, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->NIGHT_PROFILE:Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile$PROFILE_TYPE;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;->mType:I

    .line 16
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;->initBrightnessValues()V

    .line 17
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;->initSmoothAdjustLevel()V

    .line 18
    return-void
.end method

.method private initBrightnessValues()V
    .locals 2

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;->mIsSecondaryLcd:Z

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;->mResources:Landroid/content/res/Resources;

    const v1, 0x1070044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;->brightness:[I

    .line 26
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;->mLux:[I

    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;->brightness:[I

    invoke-static {v0, v1}, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;->mSpline:Landroid/util/Spline;

    .line 27
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;->mResources:Landroid/content/res/Resources;

    const v1, 0x1070046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/Profile/NightProfile;->brightness:[I

    goto :goto_0
.end method
