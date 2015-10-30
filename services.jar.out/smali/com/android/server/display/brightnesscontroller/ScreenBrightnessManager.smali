.class public Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;
.super Ljava/lang/Object;
.source "ScreenBrightnessManager.java"


# instance fields
.field public isCurrentBrightnessInit:Z

.field private final mContext:Landroid/content/Context;

.field private mCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

.field private mCurrentBrightness:I

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mSetBrightnessTask:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

.field private mStateContext:Lcom/android/server/display/brightnesscontroller/StateContext;

.field private mTargetBrightness:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;Landroid/content/Context;)V
    .locals 3
    .param p1, "core"    # Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->isCurrentBrightnessInit:Z

    .line 26
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    .line 27
    iput-object p2, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    invoke-direct {v0, p2, p0}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;-><init>(Landroid/content/Context;Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;)V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    .line 29
    new-instance v0, Lcom/android/server/display/brightnesscontroller/StateContext;

    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/display/brightnesscontroller/StateContext;-><init>(Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mStateContext:Lcom/android/server/display/brightnesscontroller/StateContext;

    .line 30
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 31
    return-void
.end method

.method private adjustBrightnessStart(F)V
    .locals 10
    .param p1, "lux"    # F

    .prologue
    .line 79
    const-string v6, "AUTOADJUST"

    const-string v7, "brightness adjust taskStart!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v6, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v6}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->getProfile()Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->getBrightnessValue(F)I

    move-result v5

    .line 81
    .local v5, "value":I
    iget v6, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mCurrentBrightness:I

    if-ne v6, v5, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v6, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mStateContext:Lcom/android/server/display/brightnesscontroller/StateContext;

    invoke-virtual {v6}, Lcom/android/server/display/brightnesscontroller/StateContext;->getCurrentState()Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 104
    const-string v6, "AUTOADJUST"

    const-string v7, "Smoothly adjust"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;

    iget-object v6, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mStateContext:Lcom/android/server/display/brightnesscontroller/StateContext;

    iget-object v7, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v7}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->getProfile()Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    move-result-object v7

    iget v7, v7, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSmoothAdjustLevel:I

    invoke-direct {v0, v6, v7}, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;-><init>(Lcom/android/server/display/brightnesscontroller/StateContext;I)V

    .line 106
    .local v0, "adjuest":Lcom/android/server/display/brightnesscontroller/BrightnessAdjuestStrategy;
    iget v6, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mCurrentBrightness:I

    invoke-virtual {v0, v6, v5}, Lcom/android/server/display/brightnesscontroller/BrightnessAdjuestStrategy;->init(II)V

    .line 107
    iget v6, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mCurrentBrightness:I

    sub-int v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 108
    .local v1, "current2target_Delta":I
    iput v5, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mTargetBrightness:I

    .line 110
    iget-object v6, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/BrightnessAdjuestStrategy;->getProcessedData()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->initValueList(Ljava/util/List;)V

    .line 112
    const/16 v4, 0x64

    .line 113
    .local v4, "interval":I
    const/16 v6, 0x28

    if-ge v1, v6, :cond_2

    .line 115
    const/16 v4, 0xfa

    .line 126
    :goto_1
    const-string v6, "AUTOADJUST"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intervals---interval="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/BrightnessAdjuestStrategy;->getCount()I

    move-result v6

    mul-int/2addr v6, v4

    int-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v2, v6, v7

    .line 128
    .local v2, "finishSeconds":F
    const-string v6, "%.2f"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "finishString":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    invoke-virtual {v6, v4}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->start(I)V

    goto :goto_0

    .line 116
    .end local v2    # "finishSeconds":F
    .end local v3    # "finishString":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x50

    if-ge v1, v6, :cond_3

    .line 118
    const/16 v4, 0xb4

    goto :goto_1

    .line 119
    :cond_3
    const/16 v6, 0x96

    if-ge v1, v6, :cond_4

    .line 121
    const/16 v4, 0x78

    goto :goto_1

    .line 124
    :cond_4
    const/16 v4, 0x50

    goto :goto_1
.end method

.method private taskStart(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 58
    iget v1, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mCurrentBrightness:I

    if-ne p1, v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    invoke-virtual {v1}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->taskStop()V

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mStateContext:Lcom/android/server/display/brightnesscontroller/StateContext;

    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mStateContext:Lcom/android/server/display/brightnesscontroller/StateContext;

    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v3}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->getEnviromentalLightLevel()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/brightnesscontroller/StateContext;->getCurrentState(F)Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightnesscontroller/StateContext;->setState(Lcom/android/server/display/brightnesscontroller/EnvlightState;)V

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->getEnviromentalLightLevel()F

    move-result v0

    .line 67
    .local v0, "lux":F
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mStateContext:Lcom/android/server/display/brightnesscontroller/StateContext;

    invoke-virtual {v1, v0}, Lcom/android/server/display/brightnesscontroller/StateContext;->preProcess(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-direct {p0, v0}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->adjustBrightnessStart(F)V

    goto :goto_0
.end method


# virtual methods
.method public TernateAllTimerTasks()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->TerminateAll()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    .line 153
    :cond_0
    return-void
.end method

.method public clearStateContext()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mStateContext:Lcom/android/server/display/brightnesscontroller/StateContext;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/StateContext;->clearState()V

    .line 176
    return-void
.end method

.method public forceStopAdjust()V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->isTaskRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "AUTOADJUST"

    const-string v1, "-->task is Runing, force Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->taskStop()V

    .line 168
    :cond_0
    return-void
.end method

.method public getCurrentBrightness()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mCurrentBrightness:I

    return v0
.end method

.method public isTaskRunning()Z
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    invoke-virtual {v1}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->isRunning()Z

    move-result v0

    .line 160
    :cond_0
    return v0
.end method

.method public setBrightness(FZ)V
    .locals 6
    .param p1, "lux"    # F
    .param p2, "isUserSet"    # Z

    .prologue
    .line 34
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    invoke-virtual {v3}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->getProfile()Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;

    move-result-object v1

    .line 35
    .local v1, "profile":Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;
    invoke-virtual {v1, p1}, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->getBrightnessValue(F)I

    move-result v2

    .line 36
    .local v2, "value":I
    const/4 v0, 0x0

    .line 37
    .local v0, "mSetImmediately":Z
    iget-boolean v3, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->isCurrentBrightnessInit:Z

    if-nez v3, :cond_0

    .line 38
    iput v2, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mCurrentBrightness:I

    .line 39
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->isCurrentBrightnessInit:Z

    .line 40
    const/4 v0, 0x1

    .line 42
    :cond_0
    iget v3, v1, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSmoothAdjustLevel:I

    if-le v2, v3, :cond_1

    .line 43
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "target value is bigger than mSmoothAdjustLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/display/brightnesscontroller/Profile/LightAdjustProfile;->mSmoothAdjustLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x1

    .line 46
    :cond_1
    if-nez p2, :cond_2

    if-eqz v0, :cond_3

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->taskStop()V

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->updateCurrentBrightness(Ljava/lang/Integer;)V

    .line 49
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mStateContext:Lcom/android/server/display/brightnesscontroller/StateContext;

    iget-object v4, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mStateContext:Lcom/android/server/display/brightnesscontroller/StateContext;

    invoke-virtual {v4, p1}, Lcom/android/server/display/brightnesscontroller/StateContext;->getCurrentState(F)Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/display/brightnesscontroller/StateContext;->setState(Lcom/android/server/display/brightnesscontroller/EnvlightState;)V

    .line 50
    invoke-virtual {p0, v2}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->setBrightness(I)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->taskStart(I)V

    goto :goto_0
.end method

.method public setBrightness(I)V
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 140
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->final setBacklight brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p1}, Landroid/os/PowerManagerInternal;->setScreenBrightnessOverrideFromBrightnessController(I)V

    .line 142
    return-void
.end method

.method public stateChangeCallback(F)V
    .locals 3
    .param p1, "lux"    # F

    .prologue
    .line 73
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateChangeCallback, lux :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->adjustBrightnessStart(F)V

    .line 76
    return-void
.end method

.method public taskStop()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "AUTOADJUST"

    const-string v1, "task ---> stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mSetBrightnessTask:Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;

    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/AutoSetBrightnessTask;->cancelTimeTask()V

    .line 137
    :cond_0
    return-void
.end method

.method public updateCurrentBrightness(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 145
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->mCurrentBrightness:I

    .line 146
    return-void
.end method
