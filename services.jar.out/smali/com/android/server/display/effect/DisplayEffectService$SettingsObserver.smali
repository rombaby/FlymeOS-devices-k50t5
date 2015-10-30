.class final Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/effect/DisplayEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/effect/DisplayEffectService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/effect/DisplayEffectService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    .line 365
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 366
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$SettingsObserver;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->updateSettings()V
    invoke-static {v0}, Lcom/android/server/display/effect/DisplayEffectService;->access$400(Lcom/android/server/display/effect/DisplayEffectService;)V

    .line 371
    return-void
.end method
