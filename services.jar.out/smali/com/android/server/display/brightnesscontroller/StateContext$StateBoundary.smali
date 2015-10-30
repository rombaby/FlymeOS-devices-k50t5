.class Lcom/android/server/display/brightnesscontroller/StateContext$StateBoundary;
.super Ljava/lang/Object;
.source "StateContext.java"

# interfaces
.implements Lcom/android/server/display/brightnesscontroller/EnvlightState$Boundary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightnesscontroller/StateContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateBoundary"
.end annotation


# instance fields
.field private mLuxBoundaryHigh:F

.field private mLuxBoundaryLow:F

.field final synthetic this$0:Lcom/android/server/display/brightnesscontroller/StateContext;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightnesscontroller/StateContext;FF)V
    .locals 0
    .param p2, "minValue"    # F
    .param p3, "maxValue"    # F

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/StateContext$StateBoundary;->this$0:Lcom/android/server/display/brightnesscontroller/StateContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p2, p0, Lcom/android/server/display/brightnesscontroller/StateContext$StateBoundary;->mLuxBoundaryLow:F

    .line 182
    iput p3, p0, Lcom/android/server/display/brightnesscontroller/StateContext$StateBoundary;->mLuxBoundaryHigh:F

    .line 183
    return-void
.end method


# virtual methods
.method public getEnvlightBrightValue()F
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext$StateBoundary;->mLuxBoundaryHigh:F

    return v0
.end method

.method public getEnvlightDarkValue()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext$StateBoundary;->mLuxBoundaryLow:F

    return v0
.end method
