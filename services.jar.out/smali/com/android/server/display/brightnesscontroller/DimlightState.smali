.class public Lcom/android/server/display/brightnesscontroller/DimlightState;
.super Lcom/android/server/display/brightnesscontroller/EnvlightState;
.source "DimlightState.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/EnvlightState;-><init>()V

    .line 9
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/DimlightState;->mState:I

    .line 10
    return-void
.end method


# virtual methods
.method public preProcess(Lcom/android/server/display/brightnesscontroller/StateContext;F)Z
    .locals 8
    .param p1, "context"    # Lcom/android/server/display/brightnesscontroller/StateContext;
    .param p2, "envLight"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 14
    const-string v5, "ZZZstate"

    const-string v6, "in DimlightState--2"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const-string v5, "ZZZstate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preprocess--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", last lux="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/DimlightState;->getProcessValue()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/DimlightState;->getLuxBoundaryHigh()F

    move-result v5

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    .line 18
    invoke-static {v3}, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->getEnvState(I)Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v0

    .line 19
    .local v0, "brightState":Lcom/android/server/display/brightnesscontroller/EnvlightState;
    invoke-virtual {v0, p2}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->setInitValue(F)V

    .line 20
    const-string v4, "ZZZstate"

    const-string v5, "change to bright state"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/server/display/brightnesscontroller/StateContext;->setStateDelayed(Lcom/android/server/display/brightnesscontroller/EnvlightState;J)V

    .line 34
    .end local v0    # "brightState":Lcom/android/server/display/brightnesscontroller/EnvlightState;
    :goto_0
    return v3

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/DimlightState;->getLuxBoundaryLow()F

    move-result v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_1

    .line 24
    const/16 v2, 0xbb8

    .line 25
    .local v2, "timer_3s":I
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->getEnvState(I)Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v1

    .line 26
    .local v1, "deepDarkState":Lcom/android/server/display/brightnesscontroller/EnvlightState;
    invoke-virtual {v1, p2}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->setInitValue(F)V

    .line 27
    const-string v3, "ZZZstate"

    const-string v5, "timer_3s change to deepDark state"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    int-to-long v6, v2

    invoke-virtual {p1, v1, v6, v7}, Lcom/android/server/display/brightnesscontroller/StateContext;->setStateDelayed(Lcom/android/server/display/brightnesscontroller/EnvlightState;J)V

    move v3, v4

    .line 29
    goto :goto_0

    .line 31
    .end local v1    # "deepDarkState":Lcom/android/server/display/brightnesscontroller/EnvlightState;
    .end local v2    # "timer_3s":I
    :cond_1
    iput p2, p0, Lcom/android/server/display/brightnesscontroller/DimlightState;->current_value:F

    .line 32
    invoke-virtual {p1, p0}, Lcom/android/server/display/brightnesscontroller/StateContext;->setLastState(Lcom/android/server/display/brightnesscontroller/EnvlightState;)V

    .line 33
    invoke-virtual {p1}, Lcom/android/server/display/brightnesscontroller/StateContext;->cancelTimer()V

    move v3, v4

    .line 34
    goto :goto_0
.end method

.method public setInitValue(F)V
    .locals 0
    .param p1, "initvalue"    # F

    .prologue
    .line 40
    iput p1, p0, Lcom/android/server/display/brightnesscontroller/DimlightState;->current_value:F

    .line 41
    return-void
.end method
