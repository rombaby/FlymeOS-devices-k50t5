.class Llenovo/app/IntentCompat$IntentCompatImplBase;
.super Ljava/lang/Object;
.source "IntentCompat.java"

# interfaces
.implements Llenovo/app/IntentCompat$IntentCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/app/IntentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntentCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    return-object v0
.end method

.method public makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "selectorAction"    # Ljava/lang/String;
    .param p2, "selectorCategory"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    return-object v0
.end method

.method public makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 2
    .param p1, "mainActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Llenovo/app/IntentCompat$IntentCompatImplBase;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    return-object v0
.end method
