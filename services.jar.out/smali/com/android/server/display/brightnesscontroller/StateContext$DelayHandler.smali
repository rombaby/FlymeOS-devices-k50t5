.class final Lcom/android/server/display/brightnesscontroller/StateContext$DelayHandler;
.super Landroid/os/Handler;
.source "StateContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightnesscontroller/StateContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/brightnesscontroller/StateContext;


# direct methods
.method private constructor <init>(Lcom/android/server/display/brightnesscontroller/StateContext;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/StateContext$DelayHandler;->this$0:Lcom/android/server/display/brightnesscontroller/StateContext;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/brightnesscontroller/StateContext;Lcom/android/server/display/brightnesscontroller/StateContext$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/brightnesscontroller/StateContext;
    .param p2, "x1"    # Lcom/android/server/display/brightnesscontroller/StateContext$1;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/display/brightnesscontroller/StateContext$DelayHandler;-><init>(Lcom/android/server/display/brightnesscontroller/StateContext;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 170
    const-string v0, "ZZZstate"

    const-string v1, "--Timer out--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/StateContext$DelayHandler;->this$0:Lcom/android/server/display/brightnesscontroller/StateContext;

    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/StateContext$DelayHandler;->this$0:Lcom/android/server/display/brightnesscontroller/StateContext;

    # getter for: Lcom/android/server/display/brightnesscontroller/StateContext;->mTempState:Lcom/android/server/display/brightnesscontroller/EnvlightState;
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/StateContext;->access$100(Lcom/android/server/display/brightnesscontroller/StateContext;)Lcom/android/server/display/brightnesscontroller/EnvlightState;

    move-result-object v1

    # invokes: Lcom/android/server/display/brightnesscontroller/StateContext;->setDelayedState(Lcom/android/server/display/brightnesscontroller/EnvlightState;)V
    invoke-static {v0, v1}, Lcom/android/server/display/brightnesscontroller/StateContext;->access$200(Lcom/android/server/display/brightnesscontroller/StateContext;Lcom/android/server/display/brightnesscontroller/EnvlightState;)V

    .line 172
    return-void
.end method
