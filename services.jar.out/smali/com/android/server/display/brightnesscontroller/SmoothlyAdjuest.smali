.class public Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;
.super Lcom/android/server/display/brightnesscontroller/BrightnessAdjuestStrategy;
.source "SmoothlyAdjuest.java"


# static fields
.field private static final DECREASE_DELTA:F = -1.0f

.field private static final INCREASE_DELTA:F = 1.0f


# instance fields
.field private mBoundaryValue:I

.field private mState:Lcom/android/server/display/brightnesscontroller/StateContext;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightnesscontroller/StateContext;I)V
    .locals 1
    .param p1, "state"    # Lcom/android/server/display/brightnesscontroller/StateContext;
    .param p2, "smoothAdjustLevel"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/server/display/brightnesscontroller/BrightnessAdjuestStrategy;-><init>()V

    .line 9
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mBoundaryValue:I

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mDelta:F

    .line 14
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mState:Lcom/android/server/display/brightnesscontroller/StateContext;

    .line 15
    invoke-virtual {p1}, Lcom/android/server/display/brightnesscontroller/StateContext;->getLcdAdjustBoundaryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mBoundaryValue:I

    .line 16
    iput p2, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mSmoothAdjust_level:I

    .line 17
    return-void
.end method


# virtual methods
.method public init(II)V
    .locals 7
    .param p1, "begin_value"    # I
    .param p2, "target_value"    # I

    .prologue
    const/4 v6, 0x3

    .line 22
    if-ne p1, p2, :cond_0

    .line 24
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mGenerateValues:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :goto_0
    return-void

    .line 26
    :cond_0
    iget v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mBoundaryValue:I

    if-gt p1, v3, :cond_3

    iget v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mBoundaryValue:I

    if-gt p2, v3, :cond_3

    .line 27
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mGenerateValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 28
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mState:Lcom/android/server/display/brightnesscontroller/StateContext;

    invoke-virtual {v3}, Lcom/android/server/display/brightnesscontroller/StateContext;->getCurrentState()Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->getStateType()I

    move-result v3

    if-eq v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mState:Lcom/android/server/display/brightnesscontroller/StateContext;

    invoke-virtual {v3}, Lcom/android/server/display/brightnesscontroller/StateContext;->getLastState()Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->getStateType()I

    move-result v3

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mState:Lcom/android/server/display/brightnesscontroller/StateContext;

    invoke-virtual {v3}, Lcom/android/server/display/brightnesscontroller/StateContext;->getCurrentState()Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->getStateType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 31
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mGenerateValues:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mGenerateValues:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_3
    iget v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mSmoothAdjust_level:I

    if-le p1, v3, :cond_5

    iget v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mSmoothAdjust_level:I

    if-ge p2, v3, :cond_5

    .line 40
    iget v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mSmoothAdjust_level:I

    iput v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mStartValue:I

    .line 41
    iput p2, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mTargetValue:I

    .line 55
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mGenerateValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 56
    iget v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mTargetValue:I

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mStartValue:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mDelta:F

    float-to-int v4, v4

    div-int v1, v3, v4

    .line 57
    .local v1, "steps":I
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "steps="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, "sum":I
    if-gez v1, :cond_4

    .line 60
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mDelta:F

    .line 62
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 63
    int-to-float v3, v2

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mDelta:F

    add-float/2addr v3, v4

    float-to-int v2, v3

    .line 64
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mGenerateValues:Ljava/util/List;

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mStartValue:I

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 42
    .end local v0    # "i":I
    .end local v1    # "steps":I
    .end local v2    # "sum":I
    :cond_5
    iget v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mBoundaryValue:I

    if-ge p1, v3, :cond_6

    iget v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mBoundaryValue:I

    if-le p2, v3, :cond_6

    .line 44
    iget v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mBoundaryValue:I

    iput v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mStartValue:I

    .line 45
    iput p2, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mTargetValue:I

    goto :goto_1

    .line 46
    :cond_6
    iget v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mBoundaryValue:I

    if-le p1, v3, :cond_7

    iget v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mBoundaryValue:I

    if-ge p2, v3, :cond_7

    .line 48
    iput p1, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mStartValue:I

    .line 49
    iget v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mBoundaryValue:I

    iput v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mTargetValue:I

    goto :goto_1

    .line 51
    :cond_7
    iput p1, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mStartValue:I

    .line 52
    iput p2, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mTargetValue:I

    goto :goto_1

    .line 67
    .restart local v0    # "i":I
    .restart local v1    # "steps":I
    .restart local v2    # "sum":I
    :cond_8
    iget v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mStartValue:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mTargetValue:I

    if-ge v3, v4, :cond_9

    .line 68
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mGenerateValues:Ljava/util/List;

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mTargetValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_9
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mState:Lcom/android/server/display/brightnesscontroller/StateContext;

    invoke-virtual {v3}, Lcom/android/server/display/brightnesscontroller/StateContext;->getCurrentState()Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/brightnesscontroller/EnvlightState;->getStateType()I

    move-result v3

    if-ne v3, v6, :cond_a

    .line 73
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smoothly-->now deepdark, target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mGenerateValues:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_a
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smoothly-->start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->list="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/brightnesscontroller/SmoothlyAdjuest;->mGenerateValues:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
