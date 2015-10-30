.class final Lcom/android/server/display/effect/DisplayEffectService$BinderService;
.super Landroid/app/IDisplayEffectManager$Stub;
.source "DisplayEffectService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/effect/DisplayEffectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/effect/DisplayEffectService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/effect/DisplayEffectService;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-direct {p0}, Landroid/app/IDisplayEffectManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/effect/DisplayEffectService;Lcom/android/server/display/effect/DisplayEffectService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/effect/DisplayEffectService;
    .param p2, "x1"    # Lcom/android/server/display/effect/DisplayEffectService$1;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/server/display/effect/DisplayEffectService$BinderService;-><init>(Lcom/android/server/display/effect/DisplayEffectService;)V

    return-void
.end method


# virtual methods
.method public getCurrentLevel(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->getCurrentLevelInternal(I)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 4

    .prologue
    .line 313
    iget-object v2, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # getter for: Lcom/android/server/display/effect/DisplayEffectService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/display/effect/DisplayEffectService;->access$200(Lcom/android/server/display/effect/DisplayEffectService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 314
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "display_mode"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 316
    .local v0, "displayMode":I
    return v0
.end method

.method public getSupportedDisplayEffect()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v0}, Lcom/android/server/display/effect/DisplayEffectService;->getSupportedDisplayEffectInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedMaxLevel(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->getSupportedMaxLevelInternal(I)I

    move-result v0

    return v0
.end method

.method public getSupportedMode()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v0}, Lcom/android/server/display/effect/DisplayEffectService;->getSupportedModeInternal()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayEffectLevel(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "level"    # I

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    const-string v1, "setDisplayEffectLevel()"

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/display/effect/DisplayEffectService;->access$000(Lcom/android/server/display/effect/DisplayEffectService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const/4 v0, -0x1

    .line 296
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/effect/DisplayEffectService;->setDisplayEffectLevelInternal(II)I

    move-result v0

    goto :goto_0
.end method

.method public setModeFromSettings(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    const-string v1, "setModeFromSettings()"

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/display/effect/DisplayEffectService;->access$000(Lcom/android/server/display/effect/DisplayEffectService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->checkMode(I)Z
    invoke-static {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->access$100(Lcom/android/server/display/effect/DisplayEffectService;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    const/4 v0, -0x1

    .line 303
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->setModeFromSettingsInternal(I)I

    move-result v0

    goto :goto_0
.end method

.method public setModeFromSys(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    # invokes: Lcom/android/server/display/effect/DisplayEffectService;->checkMode(I)Z
    invoke-static {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->access$100(Lcom/android/server/display/effect/DisplayEffectService;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    const/4 v0, -0x1

    .line 310
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/effect/DisplayEffectService$BinderService;->this$0:Lcom/android/server/display/effect/DisplayEffectService;

    invoke-virtual {v0, p1}, Lcom/android/server/display/effect/DisplayEffectService;->setModeFromSysInternal(I)I

    move-result v0

    goto :goto_0
.end method
