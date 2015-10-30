.class public Lcom/android/server/display/brightnesscontroller/BrightState;
.super Lcom/android/server/display/brightnesscontroller/EnvlightState;
.source "BrightState.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/EnvlightState;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/BrightState;->mState:I

    .line 10
    return-void
.end method


# virtual methods
.method public preProcess(Lcom/android/server/display/brightnesscontroller/StateContext;F)Z
    .locals 7
    .param p1, "context"    # Lcom/android/server/display/brightnesscontroller/StateContext;
    .param p2, "envLight"    # F

    .prologue
    const/4 v3, 0x1

    .line 14
    const-string v4, "ZZZstate"

    const-string v5, "in BrightState--1"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const-string v4, "ZZZstate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preprocess--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/BrightState;->getLuxBoundaryHigh()F

    move-result v4

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_0

    .line 17
    iput p2, p0, Lcom/android/server/display/brightnesscontroller/BrightState;->current_value:F

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/server/display/brightnesscontroller/StateContext;->setLastState(Lcom/android/server/display/brightnesscontroller/EnvlightState;)V

    .line 19
    invoke-virtual {p1}, Lcom/android/server/display/brightnesscontroller/StateContext;->cancelTimer()V

    .line 33
    :goto_0
    return v3

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/BrightState;->getLuxBoundaryLow()F

    move-result v4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    .line 22
    const/16 v2, 0xbb8

    .line 23
    .local v2, "timer_3s":I
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->getEnvState(I)Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v0

    .line 24
    .local v0, "deepdarkState":Lcom/android/server/display/brightnesscontroller/EnvlightState;
    invoke-virtual {v0, p2}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->setInitValue(F)V

    .line 25
    const-string v3, "ZZZstate"

    const-string v4, "timer-3s  change to deepdark state"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    int-to-long v4, v2

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/server/display/brightnesscontroller/StateContext;->setStateDelayed(Lcom/android/server/display/brightnesscontroller/EnvlightState;J)V

    .line 27
    const/4 v3, 0x0

    goto :goto_0

    .line 29
    .end local v0    # "deepdarkState":Lcom/android/server/display/brightnesscontroller/EnvlightState;
    .end local v2    # "timer_3s":I
    :cond_1
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->getEnvState(I)Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v1

    .line 30
    .local v1, "dimlightState":Lcom/android/server/display/brightnesscontroller/EnvlightState;
    invoke-virtual {v1, p2}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->setInitValue(F)V

    .line 31
    const-string v4, "ZZZstate"

    const-string v5, "change to dimlight state"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v1, v4, v5}, Lcom/android/server/display/brightnesscontroller/StateContext;->setStateDelayed(Lcom/android/server/display/brightnesscontroller/EnvlightState;J)V

    goto :goto_0
.end method

.method public setInitValue(F)V
    .locals 0
    .param p1, "initvalue"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/android/server/display/brightnesscontroller/BrightState;->current_value:F

    .line 40
    return-void
.end method
