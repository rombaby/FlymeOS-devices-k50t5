.class public abstract Lcom/android/server/display/brightnesscontroller/EnvlightState;
.super Ljava/lang/Object;
.source "EnvlightState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;
    }
.end annotation


# static fields
.field public static final BRIGHT_STATE_LIGHT_LEVEL:F = 90.0f

.field public static final DARK_STATE_LIGHT_LEVEL:F = 5.0f

.field public static final STATE_BRIGHT:I = 0x1

.field public static final STATE_DARK:I = 0x3

.field public static final STATE_DIM:I = 0x2


# instance fields
.field protected current_value:F

.field protected mBoundary:Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;

.field protected mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/EnvlightState;->mState:I

    .line 18
    return-void
.end method


# virtual methods
.method protected getLuxBoundaryHigh()F
    .locals 2

    .prologue
    .line 35
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/EnvlightState;->mBoundary:Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;

    if-nez v1, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    .line 37
    .local v0, "value":F
    :goto_0
    return v0

    .line 35
    .end local v0    # "value":F
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/EnvlightState;->mBoundary:Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;

    invoke-interface {v1}, Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;->getEnvlightBrightValue()F

    move-result v0

    goto :goto_0
.end method

.method protected getLuxBoundaryLow()F
    .locals 2

    .prologue
    .line 41
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/EnvlightState;->mBoundary:Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;

    if-nez v1, :cond_0

    const/high16 v0, 0x40a00000    # 5.0f

    .line 43
    .local v0, "value":F
    :goto_0
    return v0

    .line 41
    .end local v0    # "value":F
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/EnvlightState;->mBoundary:Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;

    invoke-interface {v1}, Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;->getEnvlightDarkValue()F

    move-result v0

    goto :goto_0
.end method

.method public getProcessValue()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/EnvlightState;->current_value:F

    return v0
.end method

.method public getStateType()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/EnvlightState;->mState:I

    return v0
.end method

.method public abstract preProcess(Lcom/android/server/display/brightnesscontroller/StateContext;F)Z
.end method

.method public setEnvlightBoundary(Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;)V
    .locals 1
    .param p1, "boundary"    # Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/EnvlightState;->mBoundary:Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/EnvlightState;->mBoundary:Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/EnvlightState;->mBoundary:Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;

    .line 32
    return-void
.end method

.method public abstract setInitValue(F)V
.end method
