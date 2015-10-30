.class public Lcom/android/server/display/brightnesscontroller/StateContext;
.super Ljava/lang/Object;
.source "StateContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/brightnesscontroller/StateContext$1;,
        Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;,
        Lcom/android/server/display/brightnesscontroller/StateContext$StateBoundary;,
        Lcom/android/server/display/brightnesscontroller/StateContext$DelayHandler;
    }
.end annotation


# static fields
.field private static final LCD_ADJUST_BOUDARY_LEVEL:I = 0x1f

.field private static final MSG_TIMER_ENTER_OTHER_STATE_TIMEOUT:I = 0x11

.field public static final STATELOG:Ljava/lang/String; = "ZZZstate"


# instance fields
.field private isTimerRunning:Z

.field private mBoundary:Lcom/android/server/display/brightnesscontroller/StateContext$StateBoundary;

.field private mBrightStateBoundaryLux:F

.field private mContext:Landroid/content/Context;

.field private mCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

.field private mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

.field private mDeepDarkStateBoundaryLux:F

.field private mDelayHandler:Landroid/os/Handler;

.field private mLastState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

.field private mManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

.field private mSmoothAdjustBoundary:I

.field private mStateBoundary:Lcom/android/server/display/brightnesscontroller/StateContext$StateBoundary;

.field private mTempState:Lcom/android/server/display/brightnesscontroller/EnvlightState;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;Landroid/content/Context;)V
    .locals 2
    .param p1, "screenBrightnessManager"    # Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;
    .param p2, "core"    # Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->isTimerRunning:Z

    .line 54
    new-instance v0, Lcom/android/server/display/brightnesscontroller/StateContext$DelayHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/brightnesscontroller/StateContext$DelayHandler;-><init>(Lcom/android/server/display/brightnesscontroller/StateContext;Lcom/android/server/display/brightnesscontroller/StateContext$1;)V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mDelayHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    .line 56
    iput-object p2, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    .line 57
    iput-object p3, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/StateContext;->init()V

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/brightnesscontroller/StateContext;)Lcom/android/server/display/brightnesscontroller/EnvlightState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/StateContext;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mTempState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/brightnesscontroller/StateContext;Lcom/android/server/display/brightnesscontroller/EnvlightState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/brightnesscontroller/StateContext;
    .param p1, "x1"    # Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/server/display/brightnesscontroller/StateContext;->setDelayedState(Lcom/android/server/display/brightnesscontroller/EnvlightState;)V

    return-void
.end method

.method private getState(F)Lcom/android/server/display/brightnesscontroller/EnvlightState;
    .locals 4
    .param p1, "envLight"    # F

    .prologue
    const/4 v3, 0x1

    .line 34
    invoke-static {v3}, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->getEnvState(I)Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v0

    .line 35
    .local v0, "state":Lcom/android/server/display/brightnesscontroller/EnvlightState;
    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->getLuxBoundaryHigh()F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 36
    const-string v1, "ZZZstate"

    const-string v2, "init state--Bright--1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {v3}, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->getEnvState(I)Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 38
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    invoke-virtual {v1, p1}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->setInitValue(F)V

    .line 39
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 49
    :goto_0
    return-object v1

    .line 40
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->getLuxBoundaryLow()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 41
    const-string v1, "ZZZstate"

    const-string v2, "init state--Dark--3"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->getEnvState(I)Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 43
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    invoke-virtual {v1, p1}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->setInitValue(F)V

    .line 44
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    goto :goto_0

    .line 46
    :cond_1
    const-string v1, "ZZZstate"

    const-string v2, "init state--Dim--2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/StateContext$EnvStateFactory;->getEnvState(I)Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 48
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    invoke-virtual {v1, p1}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->setInitValue(F)V

    .line 49
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    :goto_0
    iput v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mBrightStateBoundaryLux:F

    .line 69
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const/high16 v0, 0x40a00000    # 5.0f

    :goto_1
    iput v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mDeepDarkStateBoundaryLux:F

    .line 71
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    const/16 v0, 0x1f

    :goto_2
    iput v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mSmoothAdjustBoundary:I

    .line 73
    new-instance v0, Lcom/android/server/display/brightnesscontroller/StateContext$StateBoundary;

    iget v1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mDeepDarkStateBoundaryLux:F

    iget v2, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mBrightStateBoundaryLux:F

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/display/brightnesscontroller/StateContext$StateBoundary;-><init>(Lcom/android/server/display/brightnesscontroller/StateContext;FF)V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mStateBoundary:Lcom/android/server/display/brightnesscontroller/StateContext$StateBoundary;

    .line 74
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_2
.end method

.method private setDelayedState(Lcom/android/server/display/brightnesscontroller/EnvlightState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .prologue
    .line 97
    if-nez p1, :cond_1

    .line 98
    const-string v1, "ZZZstate"

    const-string v2, "state==null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightnesscontroller/StateContext;->setState(Lcom/android/server/display/brightnesscontroller/EnvlightState;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->getProcessValue()F

    move-result v0

    .line 104
    .local v0, "lux":F
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mManager:Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;

    invoke-virtual {v1, v0}, Lcom/android/server/display/brightnesscontroller/ScreenBrightnessManager;->stateChangeCallback(F)V

    goto :goto_0
.end method


# virtual methods
.method public cancelTimer()V
    .locals 2

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mTempState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 110
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->isTimerRunning:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mDelayHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    const-string v0, "ZZZstate"

    const-string v1, "--Timer stop--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    return-void
.end method

.method public clearState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mLastState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 155
    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 156
    invoke-virtual {p0}, Lcom/android/server/display/brightnesscontroller/StateContext;->cancelTimer()V

    .line 157
    return-void
.end method

.method public getCore()Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    return-object v0
.end method

.method public getCurrentState()Lcom/android/server/display/brightnesscontroller/EnvlightState;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    return-object v0
.end method

.method public getCurrentState(F)Lcom/android/server/display/brightnesscontroller/EnvlightState;
    .locals 1
    .param p1, "lux"    # F

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->setInitValue(F)V

    .line 139
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightnesscontroller/StateContext;->getState(F)Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastState()Lcom/android/server/display/brightnesscontroller/EnvlightState;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mLastState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    return-object v0
.end method

.method public getLcdAdjustBoundaryLevel()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mSmoothAdjustBoundary:I

    return v0
.end method

.method public preProcess(F)Z
    .locals 1
    .param p1, "envlight"    # F

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/display/brightnesscontroller/StateContext;->getState(F)Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 162
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    invoke-virtual {v0, p1}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->setInitValue(F)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->preProcess(Lcom/android/server/display/brightnesscontroller/StateContext;F)Z

    move-result v0

    return v0
.end method

.method public setLastState(Lcom/android/server/display/brightnesscontroller/EnvlightState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mLastState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 93
    :cond_0
    return-void
.end method

.method public setState(Lcom/android/server/display/brightnesscontroller/EnvlightState;)V
    .locals 2
    .param p1, "state"    # Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mLastState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 84
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 85
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mCurrentState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mStateBoundary:Lcom/android/server/display/brightnesscontroller/StateContext$StateBoundary;

    invoke-virtual {v0, v1}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->setEnvlightBoundary(Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;)V

    .line 87
    :cond_0
    return-void
.end method

.method public setStateDelayed(Lcom/android/server/display/brightnesscontroller/EnvlightState;J)V
    .locals 6
    .param p1, "state"    # Lcom/android/server/display/brightnesscontroller/EnvlightState;
    .param p2, "delayMillis"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/16 v4, 0x11

    .line 117
    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    .line 118
    const-wide/16 p2, 0x0

    .line 121
    :cond_0
    cmp-long v0, p2, v2

    if-nez v0, :cond_2

    .line 122
    iget-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->isTimerRunning:Z

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    const-string v0, "ZZZstate"

    const-string v1, "--Timer stop--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightnesscontroller/StateContext;->setState(Lcom/android/server/display/brightnesscontroller/EnvlightState;)V

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    const-string v0, "ZZZstate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--Timer start--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mTempState:Lcom/android/server/display/brightnesscontroller/EnvlightState;

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->isTimerRunning:Z

    .line 133
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
