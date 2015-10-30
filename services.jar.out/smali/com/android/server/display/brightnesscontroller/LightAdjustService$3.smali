.class Lcom/android/server/display/brightnesscontroller/LightAdjustService$3;
.super Ljava/lang/Object;
.source "LightAdjustService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightnesscontroller/LightAdjustService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;


# direct methods
.method constructor <init>(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$3;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$3;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsServiceReady:Z
    invoke-static {v0, v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$1202(Lcom/android/server/display/brightnesscontroller/LightAdjustService;Z)Z

    .line 368
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$3;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # invokes: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->updateProfileAndAlarm()V
    invoke-static {v0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$1100(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V

    .line 369
    return-void
.end method
