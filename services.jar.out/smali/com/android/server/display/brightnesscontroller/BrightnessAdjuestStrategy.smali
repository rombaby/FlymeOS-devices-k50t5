.class public abstract Lcom/android/server/display/brightnesscontroller/BrightnessAdjuestStrategy;
.super Ljava/lang/Object;
.source "BrightnessAdjuestStrategy.java"


# instance fields
.field protected mDelta:F

.field protected mGenerateValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSmoothAdjust_level:I

.field protected mStartValue:I

.field protected mTargetValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/BrightnessAdjuestStrategy;->mGenerateValues:Ljava/util/List;

    .line 14
    const/16 v0, 0xb9

    iput v0, p0, Lcom/android/server/display/brightnesscontroller/BrightnessAdjuestStrategy;->mSmoothAdjust_level:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/BrightnessAdjuestStrategy;->mGenerateValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getProcessedData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/BrightnessAdjuestStrategy;->mGenerateValues:Ljava/util/List;

    return-object v0
.end method

.method public abstract init(II)V
.end method
