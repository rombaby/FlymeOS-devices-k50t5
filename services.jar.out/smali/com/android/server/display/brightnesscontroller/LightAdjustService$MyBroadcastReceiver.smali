.class public final Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LightAdjustService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightnesscontroller/LightAdjustService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v4, 0x0

    .line 305
    const-string v1, "AUTOADJUST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsAutoBrightnessMode:Z
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$200(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # invokes: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->refreshBrightnessScreenOn()V
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$300(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$500(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsLastSUBmode:Z
    invoke-static {v2}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$400(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setLightsensorEnable(Z)V

    goto :goto_0

    .line 313
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsAutoBrightnessMode:Z
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$200(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 315
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # invokes: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->refreshBrightnessScreenOff()V
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$600(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V

    goto :goto_0

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsLastSUBmode:Z
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$400(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mProcessCore:Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$500(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/display/brightnesscontroller/LightAdjuestCore;->setLightsensorEnable(Z)V

    goto :goto_0

    .line 320
    :cond_4
    const-string v1, "com.android.server.display.intent.NIGHT_PROFILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 321
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsAutoBrightnessMode:Z
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$200(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->refreshProfileAndAlarm(I)V
    invoke-static {v1, v2}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$700(Lcom/android/server/display/brightnesscontroller/LightAdjustService;I)V

    goto :goto_0

    .line 324
    :cond_5
    const-string v1, "com.android.server.display.intent.DAY_PROFILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 325
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsAutoBrightnessMode:Z
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$200(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # invokes: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->refreshProfileAndAlarm(I)V
    invoke-static {v1, v4}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$700(Lcom/android/server/display/brightnesscontroller/LightAdjustService;I)V

    goto :goto_0

    .line 328
    :cond_6
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 329
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsAutoBrightnessMode:Z
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$200(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # invokes: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->cancelNightProfileAlarm()V
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$800(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V

    .line 331
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # invokes: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->cancelDayProfileAlarm()V
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$900(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V

    .line 332
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mTimeSetDelayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$1000(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    iget-object v2, v2, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mTimeSetDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 334
    :cond_7
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mIsAutoBrightnessMode:Z
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$200(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # getter for: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mTimeSetDelayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$1000(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    iget-object v2, v2, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->mBootSetDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
