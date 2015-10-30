.class public Lcom/android/server/display/brightnesscontroller/DeepDarkState;
.super Lcom/android/server/display/brightnesscontroller/EnvlightState;
.source "DeepDarkState.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/EnvlightState;-><init>()V

    .line 10
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/DeepDarkState;->mState:I

    .line 11
    return-void
.end method


# virtual methods
.method public preProcess(Lcom/android/server/display/brightnesscontroller/StateContext;F)Z
    .locals 6
    .param p1, "context"    # Lcom/android/server/display/brightnesscontroller/StateContext;
    .param p2, "envLight"    # F

    .prologue
    const/4 v5, 0x0

    .line 15
    const-string v2, "ZZZstate"

    const-string v3, "in DeepDarkState--3"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    const-string v2, "ZZZstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preprocess--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",last lux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/DeepDarkState;->getProcessValue()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/DeepDarkState;->getLuxBoundaryHigh()F

    move-result v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    .line 18
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->getEnvState(I)Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v0

    .line 19
    .local v0, "state":Lcom/android/server/display/brightnesscontroller/EnvlightState;
    invoke-virtual {v0, p2}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->setInitValue(F)V

    .line 20
    const-string v2, "ZZZstate"

    const-string v3, "delay to set state Bright--0.5s"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/16 v1, 0x1f4

    .line 22
    .local v1, "timer_0_5s":I
    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/display/brightnesscontroller/StateContext;->setStateDelayed(Lcom/android/server/display/brightnesscontroller/EnvlightState;J)V

    .line 32
    .end local v0    # "state":Lcom/android/server/display/brightnesscontroller/EnvlightState;
    .end local v1    # "timer_0_5s":I
    :goto_0
    return v5

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/brightnesscontroller/StateContext;->cancelTimer()V

    .line 31
    invoke-virtual {p1, p0}, Lcom/android/server/display/brightnesscontroller/StateContext;->setLastState(Lcom/android/server/display/brightnesscontroller/EnvlightState;)V

    goto :goto_0
.end method

.method public setInitValue(F)V
    .locals 0
    .param p1, "initvalue"    # F

    .prologue
    .line 38
    iput p1, p0, Lcom/android/server/display/brightnesscontroller/DeepDarkState;->current_value:F

    .line 39
    return-void
.end method
