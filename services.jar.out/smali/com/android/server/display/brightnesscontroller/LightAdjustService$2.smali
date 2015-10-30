.class Lcom/android/server/display/brightnesscontroller/LightAdjustService$2;
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
    .line 357
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$2;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$2;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # invokes: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->updateProfileAndAlarm()V
    invoke-static {v0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$1100(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V

    .line 361
    return-void
.end method
