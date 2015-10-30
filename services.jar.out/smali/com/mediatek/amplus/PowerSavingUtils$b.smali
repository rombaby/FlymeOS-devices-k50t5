.class Lcom/mediatek/amplus/PowerSavingUtils$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/amplus/PowerSavingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic h:Lcom/mediatek/amplus/PowerSavingUtils;


# direct methods
.method public constructor <init>(Lcom/mediatek/amplus/PowerSavingUtils;)V
    .locals 2

    .prologue
    .line 219
    iput-object p1, p0, Lcom/mediatek/amplus/PowerSavingUtils$b;->h:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    invoke-static {p1}, Lcom/mediatek/amplus/PowerSavingUtils;->a(Lcom/mediatek/amplus/PowerSavingUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 229
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    iget-object v1, p0, Lcom/mediatek/amplus/PowerSavingUtils$b;->h:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-static {v1, v0}, Lcom/mediatek/amplus/PowerSavingUtils;->a(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z

    .line 231
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$b;->h:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/mediatek/amplus/PowerSavingUtils;->a(Lcom/mediatek/amplus/PowerSavingUtils;J)J

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 233
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$b;->h:Lcom/mediatek/amplus/PowerSavingUtils;

    invoke-static {v0, v1}, Lcom/mediatek/amplus/PowerSavingUtils;->a(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z

    .line 234
    iget-object v0, p0, Lcom/mediatek/amplus/PowerSavingUtils$b;->h:Lcom/mediatek/amplus/PowerSavingUtils;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/mediatek/amplus/PowerSavingUtils;->a(Lcom/mediatek/amplus/PowerSavingUtils;J)J

    goto :goto_0

    .line 235
    :cond_2
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const-string v2, "status"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 237
    iget-object v3, p0, Lcom/mediatek/amplus/PowerSavingUtils$b;->h:Lcom/mediatek/amplus/PowerSavingUtils;

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    :goto_1
    invoke-static {v3, v0}, Lcom/mediatek/amplus/PowerSavingUtils;->b(Lcom/mediatek/amplus/PowerSavingUtils;Z)Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
