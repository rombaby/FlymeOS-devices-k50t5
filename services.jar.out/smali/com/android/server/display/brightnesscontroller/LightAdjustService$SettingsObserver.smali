.class final Lcom/android/server/display/brightnesscontroller/LightAdjustService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "LightAdjustService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightnesscontroller/LightAdjustService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/brightnesscontroller/LightAdjustService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$SettingsObserver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    .line 105
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 106
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/LightAdjustService$SettingsObserver;->this$0:Lcom/android/server/display/brightnesscontroller/LightAdjustService;

    # invokes: Lcom/android/server/display/brightnesscontroller/LightAdjustService;->updateSettingsLocked()V
    invoke-static {v0}, Lcom/android/server/display/brightnesscontroller/LightAdjustService;->access$000(Lcom/android/server/display/brightnesscontroller/LightAdjustService;)V

    .line 111
    return-void
.end method
